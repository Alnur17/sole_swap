import 'package:get/get.dart';

import '../modules/authentication/auth_dashboard/bindings/auth_dashboard_binding.dart';
import '../modules/authentication/auth_dashboard/views/auth_dashboard_view.dart';
import '../modules/authentication/forgot_password/bindings/forgot_password_binding.dart';
import '../modules/authentication/forgot_password/views/forgot_password_view.dart';
import '../modules/authentication/phone_sign_up/bindings/phone_sign_up_binding.dart';
import '../modules/authentication/phone_sign_up/views/phone_sign_up_view.dart';
import '../modules/authentication/sign_in/bindings/sign_in_binding.dart';
import '../modules/authentication/sign_in/views/sign_in_view.dart';
import '../modules/authentication/sign_up/bindings/sign_up_binding.dart';
import '../modules/authentication/sign_up/views/sign_up_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/user/Favorites/bindings/favorites_binding.dart';
import '../modules/user/Favorites/views/favorites_view.dart';
import '../modules/user/Profile/bindings/profile_binding.dart';
import '../modules/user/Profile/views/profile_view.dart';
import '../modules/user/cart/bindings/cart_binding.dart';
import '../modules/user/cart/views/cart_view.dart';
import '../modules/user/dashboard/bindings/dashboard_binding.dart';
import '../modules/user/dashboard/views/dashboard_view.dart';
import '../modules/user/home/bindings/home_binding.dart';
import '../modules/user/home/views/home_view.dart';
import '../modules/user/vendors/bindings/vendor_binding.dart';
import '../modules/user/vendors/views/vendor_view.dart';
import '../modules/vendor/earnings/bindings/earnings_binding.dart';
import '../modules/vendor/earnings/views/earnings_view.dart';
import '../modules/vendor/products/bindings/products_binding.dart';
import '../modules/vendor/products/views/products_view.dart';
import '../modules/vendor/vendor_dashboard/bindings/vendor_dashboard_binding.dart';
import '../modules/vendor/vendor_dashboard/views/vendor_dashboard_view.dart';
import '../modules/vendor/vendor_home/bindings/vendor_home_binding.dart';
import '../modules/vendor/vendor_home/views/vendor_home_view.dart';
import '../modules/vendor/vendor_orders/bindings/vendor_orders_binding.dart';
import '../modules/vendor/vendor_orders/views/vendor_orders_view.dart';
import '../modules/vendor/vendor_profile/bindings/vendor_profile_binding.dart';
import '../modules/vendor/vendor_profile/views/vendor_edit_profile_view.dart';
import '../modules/vendor/vendor_profile/views/vendor_profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.AUTH_DASHBOARD,
      page: () => const AuthDashboardView(),
      binding: AuthDashboardBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => const SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.PHONE_SIGN_UP,
      page: () => const PhoneSignUpView(),
      binding: PhoneSignUpBinding(),
    ),
    GetPage(
      name: _Paths.VENDOR_DASHBOARD,
      page: () => const VendorDashboardView(),
      binding: VendorDashboardBinding(),
    ),
    GetPage(
      name: _Paths.VENDOR_HOME,
      page: () => const VendorHomeView(),
      binding: VendorHomeBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITES,
      page: () => const FavoritesView(),
      binding: FavoritesBinding(),
    ),
    GetPage(
      name: _Paths.VENDOR,
      page: () => const VendorView(),
      binding: VendorBinding(),
    ),
    GetPage(
      name: _Paths.EARNINGS,
      page: () => const EarningsView(),
      binding: EarningsBinding(),
    ),
    GetPage(
      name: _Paths.VENDOR_PROFILE,
      page: () => const VendorProfileView(),
      binding: VendorProfileBinding(),
      children: [
        GetPage(
          name: _Paths.VENDOR_EDIT_PROFILE,
          page: () => const VendorEditProfileView(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.PRODUCTS,
      page: () => const ProductsView(),
      binding: ProductsBinding(),
    ),
    GetPage(
      name: _Paths.VENDOR_ORDERS,
      page: () => const VendorOrdersView(),
      binding: VendorOrdersBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => const CartView(),
      binding: CartBinding(),
    ),
  ];
}
