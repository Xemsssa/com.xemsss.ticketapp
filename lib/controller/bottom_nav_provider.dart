import "package:riverpod_annotation/riverpod.annotation.dart";
part "bottom_nav_provider.g.dart";

@riverpod
class BottomNavBarProvider extends _$BottomNavBarNotifier{
  @override
  int  build() {
    return 0;
  }

  void onItemTapped(int index) {
    state = index;
  }
}