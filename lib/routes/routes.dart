import 'package:get/get.dart';

import '../bindings/home_screen_binding.dart';
import '../bindings/splash_binding.dart';
import '../views/drawers/change_password_screen.dart';
import '../views/drawers/profile_screen.dart';
import '../views/drawers/saved_recipients_screen.dart';
import '../views/drawers/transfer_log_screen.dart';
import '../views/home_page/add_recipients_screen.dart';
import '../views/home_page/home_page.dart';
import '../views/onboard/onboard_screen.dart';
import '../views/onboard/track_transaction_screen.dart';
import '../views/onboard/transfer_calculator.dart';
import '../views/sign_in/otp_screen.dart';
import '../views/sign_in/reset_password_screen.dart';
import '../views/sign_in/sign_in_screen.dart';
import '../views/sign_up/email_verification_screen.dart';
import '../views/sign_up/sign_up_screen.dart';
import '../views/splash_screen/splash_screen.dart';

class Routes {
  static const String splashScreen = '/splashScreen';
  static const String onboardScreen = '/onBoardScreen';
  static const String transferCalculator = '/transferCalculator';
  static const String trackTransactionScreen = '/trackTransactionScreen';

  static const String signInScreen = '/signinScreen';
  static const String otpScreen = '/otpScreen';
  static const String resetPasswordScreen = '/resetPasswordScreen';

  static const String signUpScreen = '/signUpScreen';
  static const String emailVerificationScreen = '/emailVerificationScreen';

  static const String homeScreen = '/homeScreen';
  static const String addRecipients = '/addRecipients';

  static const String changePasswordScreen = '/changePasswordScreen';
  static const String profileScreen = '/profileScreen';
  static const String transferLogScreen = '/transferLogScreen';
  static const String saveRecipientsScreen = '/saveRecipientsScreen';

  static var list = [
    GetPage(
      name: splashScreen,
      page: () =>  const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: onboardScreen,
      page: () =>  OnboardScreen(),
    ),
    GetPage(
      name: transferCalculator,
      page: () => TransferCalculator(),
    ),
    GetPage(
      name: trackTransactionScreen,
      page: () => TrackTransactionScreen(),
    ),

    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
    ),
    GetPage(
      name: otpScreen,
      page: () => OTPScreen(),
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
    ),

    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
    ),
    GetPage(
      name: emailVerificationScreen,
      page: () => EmailVerificationScreen(),
    ),

    GetPage(
      name: homeScreen,
      page: () => HomePage(),
      binding: HomeScreenBinding()
    ),
    GetPage(
      name: addRecipients,
      page: () => AddRecipients(),
    ),

    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
    ),
    GetPage(
      name: changePasswordScreen,
      page: () => ChangePasswordScreen(),
    ),
    GetPage(
      name: saveRecipientsScreen,
      page: () => const SavedRecipientsScreen(),
    ),
    GetPage(
      name: transferLogScreen,
      page: () => const TransferLogScreen(),
    ),
  ];
}
