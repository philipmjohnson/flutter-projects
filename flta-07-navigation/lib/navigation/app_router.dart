import 'package:flutter/material.dart';

import '../models/models.dart';
import '../screens/screens.dart';

// 1
class AppRouter extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  // 2
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  // 3
  final AppStateManager appStateManager;
  // 4
  final GroceryManager groceryManager;
  // 5
  final ProfileManager profileManager;

  AppRouter({
    required this.appStateManager,
    required this.groceryManager,
    required this.profileManager,
  })
      : navigatorKey = GlobalKey<NavigatorState>() {
    appStateManager.addListener(notifyListeners);
    groceryManager.addListener(notifyListeners);
    profileManager.addListener(notifyListeners);

  }

  @override
  void dispose() {
    appStateManager.removeListener(notifyListeners);
    groceryManager.removeListener(notifyListeners);
    profileManager.removeListener(notifyListeners);
    super.dispose();
  }


  // 6
  @override
  Widget build(BuildContext context) {
    // 7
    return Navigator(
      // 8
      key: navigatorKey,
      onPopPage: _handlePopPage,
      // 9
      pages: [
        if (!appStateManager.isInitialized) SplashScreen.page(),
        if (appStateManager.isInitialized && !appStateManager.isLoggedIn)
          LoginScreen.page(),
        if (appStateManager.isLoggedIn &&
            !appStateManager.isOnboardingComplete)
          OnboardingScreen.page(),

        if (appStateManager.isOnboardingComplete)
          Home.page(appStateManager.getSelectedTab),

        // 1
        if (groceryManager.isCreatingNewItem)
// 2
          GroceryItemScreen.page(
            onCreate: (item) {
              // 3
              groceryManager.addItem(item);
            }, onUpdate: (item, index) {
            // 4 No update
          },
          ),

        // 1
        if (groceryManager.selectedIndex != -1)
        // 2
          GroceryItemScreen.page(
              item: groceryManager.selectedGroceryItem,
              index: groceryManager.selectedIndex,
              onUpdate: (item, index) {
                // 3
                groceryManager.updateItem(item, index);
              },
              onCreate: (_) {
                // 4 No create
              }
          ),

        if (profileManager.didSelectUser)
          ProfileScreen.page(profileManager.getUser),

        if (profileManager.didTapOnRaywenderlich)
          WebViewScreen.page(),

      ],
    );
  }

  bool _handlePopPage(
      // 1
      Route<dynamic> route,
      // 2
      result) {
    // 3
    if (!route.didPop(result)) {
      // 4
      return false;
    }

    // 5
    if (route.settings.name == FooderlichPages.onboardingPath) {
      appStateManager.logout();
    }

    if (route.settings.name == FooderlichPages.groceryItemDetails) {
      groceryManager.groceryItemTapped(-1);
    }

    if (route.settings.name == FooderlichPages.profilePath) {
      profileManager.tapOnProfile(false);
    }

    if (route.settings.name == FooderlichPages.raywenderlich) {
      profileManager.tapOnRaywenderlich(false);
    }

    // 6
    return true;
  }


  // 10
  @override
  Future<void> setNewRoutePath(configuration) async => null;
}
