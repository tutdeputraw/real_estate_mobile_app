import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/auth/auth/auth_state.dart';
import 'package:real_estate_mobile_app/models/user/user_record_model.dart';
import 'package:real_estate_mobile_app/routes/page_names.dart';
import 'package:real_estate_mobile_app/utils/helpers/network/retrofit/config.dart';
import 'package:real_estate_mobile_app/utils/helpers/network/retrofit/retrofit_helper.dart';
import 'package:real_estate_mobile_app/utils/helpers/secure_storage/secure_storage_helper.dart';
import 'package:real_estate_mobile_app/utils/helpers/storage/storage_constants.dart';
import 'package:real_estate_mobile_app/utils/helpers/storage/storage_helper.dart';

class AuthController extends GetxController {
  Rxn<AuthState> authState = Rxn<AuthState>();
  AuthState? get state => authState.value;

  var storage = StorageHelper();
  var secureStorage = SecureStorageHelper();

  UserRecord? get user {
    if (storage.has(StorageConstants.USERS)) {
      return UserRecord.fromJson(storage.get(StorageConstants.USERS));
    } else {
      return null;
    }
  }

  @override
  void onInit() {
    authState.value = const AuthState(appStatus: AppType.INITIAL);
    super.onInit();
  }

  @override
  void onReady() async {
    ever(authState, authChanged);
    authChanged(state);
    super.onReady();
  }

  authChanged(AuthState? state) async {
    if (state?.appStatus == AppType.INITIAL) {
      await setup();
      await checkToken();
    } else if (state?.appStatus == AppType.UNAUTHENTICATED) {
      await clearData();
      Get.offAllNamed(PageNames.SIGN_IN);
    } else if (state?.appStatus == AppType.AUTHENTICATED) {
      _authenticatedUser();
    } else {
      Get.toNamed(PageNames.LOADING);
    }
    update();
  }

  void _authenticatedUser() {
    final userRecord = user;

    RetrofitConfig.defineApiURL(user!.organizationName!);

    if (userRecord?.organizationName?.toLowerCase() == "org1") {
      Get.offAllNamed(PageNames.OWNER_BUYER_DASHBOARD);
    } else if (userRecord?.organizationName?.toLowerCase() == "org2") {
      Get.offAllNamed(PageNames.BROKER_DASHBOARD);
    } else if (userRecord?.organizationName?.toLowerCase() == "org3") {
      Get.offAllNamed(PageNames.EXTERNAL_ADVISOR_DASHBOARD);
    }
    print("URLURL ${RetrofitHelper.baseUrl}");

    // if (user?.role == UserRole.BUYER_OWNER) {
    //   Get.offAllNamed(PageNames.OWNER_BUYER_DASHBOARD);
    // } else if (user?.role == UserRole.BROKER) {
    //   Get.offAllNamed(PageNames.BROKER_DASHBOARD);
    // } else if (user?.role == UserRole.EXTERNAL_ADVISOR) {
    //   Get.offAllNamed(PageNames.EXTERNAL_ADVISOR_DASHBOARD);
    // }
  }

  Future<void> checkToken() async {
    print('onok gak?checkToken ${storage.has(StorageConstants.USERS)}');
    if (storage.has(StorageConstants.USERS)) {
      print('masok 1');
      setAuth();
    } else {
      print('masok 2');
      signOut();
    }
  }

  Future<void> clearData() async {
    storage.clearAll();
    await secureStorage.setToken(value: '');
  }

  Future<void> saveAuthData(
      {required UserRecord user, required String token}) async {
    await storage.write(StorageConstants.USERS, user.toJson());
    print('onok gak? save auth ${storage.has(StorageConstants.USERS)}');
    await secureStorage.setToken(value: token);
    setAuth();
  }

  Future<void> signOut() async {
    await secureStorage.setToken(value: '');
    await storage.clearAll();
    authState.value = const AuthState(appStatus: AppType.UNAUTHENTICATED);
  }

  void setAuth() {
    authState.value = const AuthState(appStatus: AppType.AUTHENTICATED);
  }

  setup() async {
    final firstInstall = storage.get(StorageConstants.FIRST_INSTALL) ?? false;
    if (firstInstall) {
      await secureStorage.setToken(value: '');
      storage.write(StorageConstants.FIRST_INSTALL, false);
    }
  }
}
