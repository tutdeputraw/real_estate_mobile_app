import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:real_estate_mobile_app/utils/helpers/base_controller/base_controller_state.dart';

abstract class BaseController<T> extends GetxController {
  T? dataObj;
  RxList<T> dataList = RxList<T>([]);

  Rx<int> page = Rx(1);
  Rx<bool> hasNext = Rx(false);
  Rx<int> perPage = Rx(10);

  String message = "";

  get statusData; // List or Object
  bool get isUsingList => statusData is List;
  void refreshPage();
  void loadNextPage();
  Future<void> callAPI({int page = 1});

  Rx<RefresherStatus> status = Rx(RefresherStatus.initial);

  bool get isInitial => status.value == RefresherStatus.initial;

  /// **Note:**
  /// loading with probably data is not empty
  bool get isLoading => status.value == RefresherStatus.loading;

  /// **Note:**
  /// loading with no data from the beginning
  bool get isShimmering => isLoading && isEmptyData;

  bool get isEmptyData => isUsingList ? dataList.isEmpty : dataObj == null;
  bool get isSuccess => status.value == RefresherStatus.success;
  bool get isError => status.value == RefresherStatus.failed && isEmptyData;

  RefreshController refreshController =
      RefreshController(initialRefresh: false);

  String getId(Map<String, dynamic> cache) {
    return (cache['id'] ?? '0').toString();
  }

  /// **Note:**
  /// the state will go to error state if the [errorMessage] is not null,
  /// call this [finishLoadData] instead [saveCacheAndFinish] if the data is not require to saved in local data
  void finishLoadData({
    String errorMessage = "",
    List<T>? list = const [],
    T? data,
    int page = 1,
  }) {
    this.page.value = page;
    if (errorMessage.isNotEmpty) {
      _setErrorStatus(errorMessage);
    } else {
      _setFinishCallbacks(list: list, data: data);
    }
    update();
  }

  /// **NOTE:**
  /// call this to change state to Loading State
  loadingState() {
    status.value = RefresherStatus.loading;
    update();
  }

  /// **NOTE:**
  /// call this to change state to Success State
  successState() {
    status.value = RefresherStatus.success;
    update();
  }

  /// **NOTE:**
  /// call this to change state to Success State
  emptyState() {
    status.value = RefresherStatus.empty;
    update();
  }

  /// **NOTE:**
  /// call this to change state to Error State
  errorState() {
    status.value = RefresherStatus.failed;
    update();
  }

  void _addData(List<T> data) {
    if (page.value == 1) {
      dataList.clear();
    }
    if (data.isNotEmpty) {
      dataList.addAll(data);
    } else {
      if (isUsingList) {
        emptyState();
      }
    }
    hasNext.value = !(data.length < perPage.value);
  }

  void _setData(T? data) {
    if (data != null) {
      dataObj = data;
    } else if (!isUsingList) {
      emptyState();
    }
  }

  void _setFinishCallbacks({List<T>? list, T? data}) {
    _addData(list ?? []);
    _setData(data);
    successState();
    _finishRefresh();
  }

  void _setErrorStatus(String message) {
    errorState();
    message = (message.isNotEmpty) ? message : "Something when wrong..";
    Get.snackbar('error', message.toString(),
        backgroundColor: Colors.red, colorText: Colors.white);
    _finishRefresh();
  }

  void _finishRefresh() {
    if (refreshController.isRefresh) {
      refreshController.refreshCompleted();
    }
    if (refreshController.isLoading) {
      refreshController.loadComplete();
    }
    update();
  }

  Future<void> showLoading({String? message}) async {
    if (Get.overlayContext != null && Get.isOverlaysClosed) {
      showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => WillPopScope(
          onWillPop: () async => false,
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [CircularProgressIndicator()],
              ),
            ),
          ),
        ),
      );
    }
  }

  dismissLoading() {
    if (Get.overlayContext != null) {
      Navigator.of(Get.overlayContext!).pop();
    }
  }
}
