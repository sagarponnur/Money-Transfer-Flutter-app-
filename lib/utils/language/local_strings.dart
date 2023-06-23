// import 'package:get/get.dart';
//
//
// import 'spanish_language.dart';
// import '../strings.dart';
// import 'arabic_language.dart';
// import 'english_language.dart';
//
// class LocalString extends Translations {
//   @override
//   Map<String, Map<String, String>> get keys => {
//         //English
//         'en_US': {
//           Strings.appName: English.appName,
//           Strings.appVersion: English.appVersion,
//           // Strings.onboardTitle: English.next,
//           Strings.skip: English.skip,
//           // Strings.onboardSubTitle: English.getStarted,
//           Strings.welcomeTitle: English.welcomeTitle,
//           Strings.signIn: English.signIn,
//           Strings.signUp: English.signUp,
//           Strings.continueText: English.continueText,
//           Strings.otp: English.otp,
//           Strings.resetPassword: English.resetPassword,
//           Strings.confirmPasswordHint: English.confirmPasswordHint,
//           Strings.confirmPassword: English.confirmPassword,
//           Strings.newPassword: English.newPassword,
//           Strings.okay: English.okay,
//           Strings.email: English.email,
//           Strings.iAgree: English.iAgree,
//           // Strings.settings: English.settings,
//           Strings.congratulations: English.congratulations,
//           Strings.password: English.password,
//           Strings.update: English.update,
//
//           Strings.arabic: English.arabic,
//           Strings.spanish: English.spanish,
//           Strings.english: English.english,
//           Strings.submit: English.submit,
//           Strings.languageChanged: English.changeLanguage,
//
//
//
//           Strings.myAccount: English.myAccount,
//           Strings.welcomeSubtitle: English.welcomeSubtitle,
//           Strings.welcomeBack: English.welcomeBack,
//           Strings.emailHint: English.emailHint,
//           Strings.passwordHint: English.passwordHint,
//           Strings.rememberMe: English.rememberMe,
//           Strings.forgotPassword: English.forgotPassword,
//           Strings.newToVPN: English.newToVPN,
//           Strings.or: English.or,
//
//           Strings.incorrectPass: English.incorrectPass,
//           Strings.enteredPassIncorrect: English.enteredPassIncorrect,
//           Strings.forgotPassword2: English.forgotPassword2,
//           Strings.typeEmail: English.typeEmail,
//           Strings.backTo: English.backTo,
//           Strings.otpVerfication: English.otpVerfication,
//           Strings.enterCode: English.enterCode,
//           Strings.resend: English.resend,
//           Strings.yourIdentity: English.yourIdentity,
//           Strings.passwordChanged: English.passwordChanged,
//
//           Strings.createAccount: English.createAccount,
//           Strings.fullName: English.fullName,
//           Strings.fullNameHint: English.fullNameHint,
//           Strings.phoneNo: English.phoneNo,
//           Strings.phoneNoHint: English.phoneNoHint,
//           Strings.terms: English.terms,
//           Strings.and: English.and,
//           Strings.conditions: English.conditions,
//           Strings.alreadyAccount: English.alreadyAccount,
//           Strings.emailVerification: English.emailVerification,
//
//           Strings.accountVerified: English.accountVerified,
//
//
//           Strings.fastSpeed: English.fastSpeed,
//           Strings.startFreeTrial: English.startFreeTrial,
//           Strings.cancelBill: English.cancelBill,
//           Strings.agreeTerms: English.agreeTerms,
//
//           Strings.visa: English.visa,
//           Strings.mastercard: English.mastercard,
//           Strings.paypal: English.paypal,
//           Strings.skrill: English.skrill,
//
//           Strings.tapToConnect: English.tapToConnect,
//           Strings.waitForConnection: English.waitForConnection,
//           Strings.connectionTime: English.connectionTime,
//           Strings.durationValue: English.durationValue,
//           Strings.subscribeFor: English.subscribeFor,
//           Strings.subscribe: English.subscribe,
//           Strings.usa: English.usa,
//           Strings.ip: English.ip,
//           Strings.giveRating: English.giveRating,
//           Strings.disconnect: English.disconnect,
//           Strings.connectionReport: English.connectionReport,
//           Strings.duration: English.duration,
//           Strings.dataUsed: English.dataUsed,
//           Strings.dataUsedValue: English.dataUsedValue,
//
//           Strings.oneMonth: English.oneMonth,
//           Strings.oneMonthValue: English.oneMonthValue,
//           Strings.oneYear: English.oneYear,
//           Strings.oneYearValue: English.oneYearValue,
//           Strings.twoYear: English.twoYear,
//           Strings.twoYearValue: English.twoYearValue,
//           Strings.freeTrial7Days: English.freeTrial7Days,
//
//           Strings.name: English.name,
//           Strings.id: English.id,
//
//           Strings.passwordChanged2: English.passwordChanged2,
//           Strings.locationChanged: English.locationChanged,
//           Strings.themeChange: English.themeChange,
//           Strings.deleteAccount: English.deleteAccount,
//
//           Strings.title1: English.title1,
//           Strings.title2: English.title2,
//           Strings.title3: English.title3,
//
//           Strings.subTitle: English.subTitle,
//
//
//           Strings.germany: English.germany,
//           Strings.uk: English.uk,
//           Strings.argentina: English.argentina,
//           Strings.greece: English.greece,
//           Strings.denmark: English.denmark,
//           Strings.singapore: English.singapore,
//
//           Strings.upgradeToPremium: English.upgradeToPremium,
//           Strings.feedbackAndSupport: English.feedbackAndSupport,
//           Strings.logout: English.logout,
//
//
//
//         },
//         //spanish
//         'sp_SP': {
//           Strings.appName: Spanish.appName,
//           Strings.appVersion: Spanish.appVersion,
//           Strings.skip: Spanish.skip,
//           Strings.welcomeTitle: Spanish.welcomeTitle,
//           Strings.signIn: Spanish.signIn,
//           Strings.signUp: Spanish.signUp,
//           Strings.continueText: Spanish.continueText,
//           Strings.otp: Spanish.otp,
//           Strings.resetPassword: Spanish.resetPassword,
//           Strings.confirmPasswordHint: Spanish.confirmPasswordHint,
//           Strings.confirmPassword: Spanish.confirmPassword,
//           Strings.newPassword: Spanish.newPassword,
//           Strings.okay: Spanish.okay,
//           Strings.email: Spanish.email,
//           Strings.iAgree: Spanish.iAgree,
//           Strings.congratulations: Spanish.congratulations,
//           Strings.password: Spanish.password,
//           Strings.update: Spanish.update,
//
//           Strings.arabic: Spanish.arabic,
//           Strings.spanish: Spanish.spanish,
//           Strings.english: Spanish.english,
//           Strings.submit: Spanish.submit,
//           Strings.languageChanged: Spanish.changeLanguage,
//
//
//
//           Strings.myAccount: Spanish.myAccount,
//           Strings.welcomeSubtitle: Spanish.welcomeSubtitle,
//           Strings.welcomeBack: Spanish.welcomeBack,
//           Strings.emailHint: Spanish.emailHint,
//           Strings.passwordHint: Spanish.passwordHint,
//           Strings.rememberMe: Spanish.rememberMe,
//           Strings.forgotPassword: Spanish.forgotPassword,
//           Strings.newToVPN: Spanish.newToVPN,
//           Strings.or: Spanish.or,
//
//           Strings.incorrectPass: Spanish.incorrectPass,
//           Strings.enteredPassIncorrect: Spanish.enteredPassIncorrect,
//           Strings.forgotPassword2: Spanish.forgotPassword2,
//           Strings.typeEmail: Spanish.typeEmail,
//           Strings.backTo: Spanish.backTo,
//           Strings.otpVerfication: Spanish.otpVerfication,
//           Strings.enterCode: Spanish.enterCode,
//           Strings.resend: Spanish.resend,
//           Strings.yourIdentity: Spanish.yourIdentity,
//           Strings.passwordChanged: Spanish.passwordChanged,
//
//           Strings.createAccount: Spanish.createAccount,
//           Strings.fullName: Spanish.fullName,
//           Strings.fullNameHint: Spanish.fullNameHint,
//           Strings.phoneNo: Spanish.phoneNo,
//           Strings.phoneNoHint: Spanish.phoneNoHint,
//           Strings.terms: Spanish.terms,
//           Strings.and: Spanish.and,
//           Strings.conditions: Spanish.conditions,
//           Strings.alreadyAccount: Spanish.alreadyAccount,
//           Strings.emailVerification: Spanish.emailVerification,
//
//           Strings.accountVerified: Spanish.accountVerified,
//
//
//           Strings.fastSpeed: Spanish.fastSpeed,
//           Strings.startFreeTrial: Spanish.startFreeTrial,
//           Strings.cancelBill: Spanish.cancelBill,
//           Strings.agreeTerms: Spanish.agreeTerms,
//
//           Strings.visa: Spanish.visa,
//           Strings.mastercard: Spanish.mastercard,
//           Strings.paypal: Spanish.paypal,
//           Strings.skrill: Spanish.skrill,
//
//           Strings.tapToConnect: Spanish.tapToConnect,
//           Strings.waitForConnection: Spanish.waitForConnection,
//           Strings.connectionTime: Spanish.connectionTime,
//           Strings.durationValue: Spanish.durationValue,
//           Strings.subscribeFor: Spanish.subscribeFor,
//           Strings.subscribe: Spanish.subscribe,
//           Strings.usa: Spanish.usa,
//           Strings.ip: Spanish.ip,
//           Strings.giveRating: Spanish.giveRating,
//           Strings.disconnect: Spanish.disconnect,
//           Strings.connectionReport: Spanish.connectionReport,
//           Strings.duration: Spanish.duration,
//           Strings.dataUsed: Spanish.dataUsed,
//           Strings.dataUsedValue: Spanish.dataUsedValue,
//
//           Strings.oneMonth: Spanish.oneMonth,
//           Strings.oneMonthValue: Spanish.oneMonthValue,
//           Strings.oneYear: Spanish.oneYear,
//           Strings.oneYearValue: Spanish.oneYearValue,
//           Strings.twoYear: Spanish.twoYear,
//           Strings.twoYearValue: Spanish.twoYearValue,
//           Strings.freeTrial7Days: Spanish.freeTrial7Days,
//
//           Strings.name: Spanish.name,
//           Strings.id: Spanish.id,
//
//           Strings.passwordChanged2: Spanish.passwordChanged2,
//           Strings.locationChanged: Spanish.locationChanged,
//           Strings.themeChange: Spanish.themeChange,
//           Strings.deleteAccount: Spanish.deleteAccount,
//
//           Strings.title1: Spanish.title1,
//           Strings.title2: Spanish.title2,
//           Strings.title3: Spanish.title3,
//
//           Strings.subTitle: Spanish.subTitle,
//
//
//           Strings.germany: Spanish.germany,
//           Strings.uk: Spanish.uk,
//           Strings.argentina: Spanish.argentina,
//           Strings.greece: Spanish.greece,
//           Strings.denmark: Spanish.denmark,
//           Strings.singapore: Spanish.singapore,
//
//
//           Strings.upgradeToPremium: Spanish.upgradeToPremium,
//           Strings.feedbackAndSupport: Spanish.feedbackAndSupport,
//           Strings.logout: Spanish.logout,
//
//         },
//
//
//
//
//         //Arabic
//         'ar_AR': {
//           Strings.appName: Arabic.appName,
//           Strings.appVersion: Arabic.appVersion,
//           Strings.skip: Arabic.skip,
//           Strings.welcomeTitle: Arabic.welcomeTitle,
//           Strings.signIn: Arabic.signIn,
//           Strings.signUp: Arabic.signUp,
//           Strings.continueText: Arabic.continueText,
//           Strings.otp: Arabic.otp,
//           Strings.resetPassword: Arabic.resetPassword,
//           Strings.confirmPasswordHint: Arabic.confirmPasswordHint,
//           Strings.confirmPassword: Arabic.confirmPassword,
//           Strings.newPassword: Arabic.newPassword,
//           Strings.okay: Arabic.okay,
//           Strings.email: Arabic.email,
//           Strings.iAgree: Arabic.iAgree,
//           Strings.congratulations: Arabic.congratulations,
//           Strings.password: Arabic.password,
//           Strings.update: Arabic.update,
//
//
//           Strings.arabic: Arabic.arabic,
//           Strings.spanish: Arabic.spanish,
//           Strings.english: Arabic.english,
//           Strings.submit: Arabic.submit,
//           Strings.languageChanged: Arabic.changeLanguage,
//
//
//
//
//           Strings.myAccount: Arabic.myAccount,
//           Strings.welcomeSubtitle: Arabic.welcomeSubtitle,
//           Strings.welcomeBack: Arabic.welcomeBack,
//           Strings.emailHint: Arabic.emailHint,
//           Strings.passwordHint: Arabic.passwordHint,
//           Strings.rememberMe: Arabic.rememberMe,
//           Strings.forgotPassword: Arabic.forgotPassword,
//           Strings.newToVPN: Arabic.newToVPN,
//           Strings.or: Arabic.or,
//
//           Strings.incorrectPass: Arabic.incorrectPass,
//           Strings.enteredPassIncorrect: Arabic.enteredPassIncorrect,
//           Strings.forgotPassword2: Arabic.forgotPassword2,
//           Strings.typeEmail: Arabic.typeEmail,
//           Strings.backTo: Arabic.backTo,
//           Strings.otpVerfication: Arabic.otpVerfication,
//           Strings.enterCode: Arabic.enterCode,
//           Strings.resend: Arabic.resend,
//           Strings.yourIdentity: Arabic.yourIdentity,
//           Strings.passwordChanged: Arabic.passwordChanged,
//
//           Strings.createAccount: Arabic.createAccount,
//           Strings.fullName: Arabic.fullName,
//           Strings.fullNameHint: Arabic.fullNameHint,
//           Strings.phoneNo: Arabic.phoneNo,
//           Strings.phoneNoHint: Arabic.phoneNoHint,
//           Strings.terms: Arabic.terms,
//           Strings.and: Arabic.and,
//           Strings.conditions: Arabic.conditions,
//           Strings.alreadyAccount: Arabic.alreadyAccount,
//           Strings.emailVerification: Arabic.emailVerification,
//
//           Strings.accountVerified: Arabic.accountVerified,
//
//
//           Strings.fastSpeed: Arabic.fastSpeed,
//           Strings.startFreeTrial: Arabic.startFreeTrial,
//           Strings.cancelBill: Arabic.cancelBill,
//           Strings.agreeTerms: Arabic.agreeTerms,
//
//           Strings.visa: Arabic.visa,
//           Strings.mastercard: Arabic.mastercard,
//           Strings.paypal: Arabic.paypal,
//           Strings.skrill: Arabic.skrill,
//
//           Strings.tapToConnect: Arabic.tapToConnect,
//           Strings.waitForConnection: Arabic.waitForConnection,
//           Strings.connectionTime: Arabic.connectionTime,
//           Strings.durationValue: Arabic.durationValue,
//           Strings.subscribeFor: Arabic.subscribeFor,
//           Strings.subscribe: Arabic.subscribe,
//           Strings.usa: Arabic.usa,
//           Strings.ip: Arabic.ip,
//           Strings.giveRating: Arabic.giveRating,
//           Strings.disconnect: Arabic.disconnect,
//           Strings.connectionReport: Arabic.connectionReport,
//           Strings.duration: Arabic.duration,
//           Strings.dataUsed: Arabic.dataUsed,
//           Strings.dataUsedValue: Arabic.dataUsedValue,
//
//           Strings.oneMonth: Arabic.oneMonth,
//           Strings.oneMonthValue: Arabic.oneMonthValue,
//           Strings.oneYear: Arabic.oneYear,
//           Strings.oneYearValue: Arabic.oneYearValue,
//           Strings.twoYear: Arabic.twoYear,
//           Strings.twoYearValue: Arabic.twoYearValue,
//           Strings.freeTrial7Days: Arabic.freeTrial7Days,
//
//           Strings.name: Arabic.name,
//           Strings.id: Arabic.id,
//
//           Strings.passwordChanged2: Arabic.passwordChanged2,
//           Strings.locationChanged: Arabic.locationChanged,
//           Strings.themeChange: Arabic.themeChange,
//           Strings.deleteAccount: Arabic.deleteAccount,
//
//
//           Strings.title1: Arabic.title1,
//           Strings.title2: Arabic.title2,
//           Strings.title3: Arabic.title3,
//
//           Strings.subTitle: Arabic.subTitle,
//
//           Strings.germany: Arabic.germany,
//           Strings.uk: Arabic.uk,
//           Strings.argentina: Arabic.argentina,
//           Strings.greece: Arabic.greece,
//           Strings.denmark: Arabic.denmark,
//           Strings.singapore: Arabic.singapore,
//
//
//           Strings.upgradeToPremium: Arabic.upgradeToPremium,
//           Strings.feedbackAndSupport: Arabic.feedbackAndSupport,
//           Strings.logout: Arabic.logout,
//         }
//       };
// }
