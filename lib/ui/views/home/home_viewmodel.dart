import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tratum_portfolio/app/app.bottomsheets.dart';
import 'package:tratum_portfolio/app/app.dialogs.dart';
import 'package:tratum_portfolio/app/app.locator.dart';
import 'package:tratum_portfolio/ui/common/app_strings.dart';

class HomeViewModel extends BaseViewModel {
  final ScrollController scrollController = ScrollController();
  bool _isAtBottom = false;

  bool get isAtBottom => _isAtBottom;

  HomeViewModel() {
    scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (scrollController.offset >= scrollController.position.maxScrollExtent &&
        !scrollController.position.outOfRange) {
      if (!_isAtBottom) {
        _isAtBottom = true;
        notifyListeners();
      }
    } else {
      if (_isAtBottom) {
        _isAtBottom = false;
        notifyListeners();
      }
    }
  }

  @override
  void dispose() {
    scrollController.removeListener(_scrollListener);
    scrollController.dispose();
    super.dispose();
  }
  // final _dialogService = locator<DialogService>();
  // final _bottomSheetService = locator<BottomSheetService>();
  //
  // String get counterLabel => 'Counter is: $_counter';
  //
  // int _counter = 0;
  //
  // void incrementCounter() {
  //   _counter++;
  //   rebuildUi();
  // }
  //
  // void showDialog() {
  //   _dialogService.showCustomDialog(
  //     variant: DialogType.infoAlert,
  //     title: 'Stacked Rocks!',
  //     description: 'Give stacked $_counter stars on Github',
  //   );
  // }
  //
  // void showBottomSheet() {
  //   _bottomSheetService.showCustomSheet(
  //     variant: BottomSheetType.notice,
  //     title: ksHomeBottomSheetTitle,
  //     description: ksHomeBottomSheetDescription,
  //   );
  // }
}
