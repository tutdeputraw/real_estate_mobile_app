import 'package:get/get.dart';
import 'package:real_estate_mobile_app/features/auth/auth/auth_state.dart';
import 'package:real_estate_mobile_app/models/user.dart';
import 'package:real_estate_mobile_app/routes/page_names.dart';
import 'package:real_estate_mobile_app/utils/helpers/secure_storage/secure_storage_helper.dart';
import 'package:real_estate_mobile_app/utils/helpers/storage/storage_constants.dart';
import 'package:real_estate_mobile_app/utils/helpers/storage/storage_helper.dart';

class AuthController extends GetxController {
  Rxn<AuthState> authState = Rxn<AuthState>();
  AuthState? get state => authState.value;

  var storage = StorageHelper();
  var secureStorage = SecureStorageHelper();

  User? get user {
    if (storage.has(StorageConstants.USERS)) {
      return User.fromJson(storage.get(StorageConstants.USERS));
    } else {
      return null;
    }
  }

  @override
  void onInit() {
    authState.value = const AuthState(appStatus: AppType.AUTHENTICATED);
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
    Get.offAllNamed(PageNames.OWNER_BUYER_DASHBOARD);
    // if (user?.role == UserRole.BUYER_OWNER) {
    //   Get.offAllNamed(PageNames.OWNER_BUYER_DASHBOARD);
    // } else if (user?.role == UserRole.BROKER) {
    //   Get.offAllNamed(PageNames.BROKER_DASHBOARD);
    // } else if (user?.role == UserRole.EXTERNAL_ADVISOR) {
    //   Get.offAllNamed(PageNames.EXTERNAL_ADVISOR_DASHBOARD);
    // }
  }

  Future<void> checkToken() async {
    if (storage.has(StorageConstants.USERS)) {
      setAuth();
    } else {
      signOut();
    }
  }

  Future<void> clearData() async {
    storage.clearAll();
    await secureStorage.setToken(value: '');
  }

  Future<void> saveAuthData({required User user, required String token}) async {
    await storage.write(StorageConstants.USERS, user.toJson());
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
