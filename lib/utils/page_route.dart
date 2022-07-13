import 'package:get/get.dart';

import '../pages/login_screen/login_screen_10_complete_profile.dart';
import '../pages/login_screen/login_screen_1_register.dart';
import '../pages/login_screen/login_screen_2_phone.dart';
import '../pages/login_screen/login_screen_3_sms.dart';
import '../pages/login_screen/login_screen_4_contract.dart';
import '../pages/login_screen/login_screen_5_name.dart';
import '../pages/login_screen/login_screen_6_avatar.dart';
import '../pages/login_screen/login_screen_7_select_pregnant_or_period.dart';
import '../pages/login_screen/login_screen_8_period.dart';
import '../pages/login_screen/login_screen_8_pregnant.dart';
import '../pages/login_screen/login_screen_9_date_of_birth.dart';
import '../pages/main_screen/screen_control.dart';
import '../pages/onboard_screen/onboard_1_welcome.dart';
import '../pages/onboard_screen/onboard_2_question.dart';
import '../pages/onboard_screen/onboard_3_exploration.dart';

List<GetPage<dynamic>> getPages() {
  return [
    GetPage(name: '/', page: () => OnBoard1(), transition: Transition.rightToLeft),
    GetPage(name: '/OnBoard2Next', page: () => const OnBoard2(), transition: Transition.rightToLeft),
    GetPage(name: '/OnBoard3Next', page: () => const OnBoard3(), transition: Transition.rightToLeft),
    GetPage(name: '/OnBoard3Next', page: () => const OnBoard3(), transition: Transition.rightToLeft),
    GetPage(name: '/OnBoard1Back', page: () => OnBoard1(), transition: Transition.leftToRight),
    GetPage(name: '/OnBoard2Back', page: () => const OnBoard2(), transition: Transition.leftToRight),
    GetPage(name: '/OnBoard3Back', page: () => const OnBoard3(), transition: Transition.leftToRight),
    GetPage(name: '/LoginScreen1', page: () => const LoginScreen1(), transition: Transition.rightToLeft),
    GetPage(name: '/LoginRequestPhone2', page: () => const LoginRequestPhone2(), transition: Transition.rightToLeft),
    GetPage(name: '/LoginRequestSms3', page: () => const LoginRequestSms3(), transition: Transition.rightToLeft),
    GetPage(name: '/LoginRequestContract4', page: () => const LoginRequestContract4(), transition: Transition.rightToLeft),
    GetPage(name: '/LoginRequestName5', page: () => const LoginRequestName5(), transition: Transition.rightToLeft),
    GetPage(name: '/LoginRequestAvatar6', page: () => LoginRequestAvatar6(), transition: Transition.rightToLeft),
    GetPage(name: '/LoginRequestSelectPregnantOrPeriod7', page: () => const LoginRequestSelectPregnantOrPeriod7(), transition: Transition.rightToLeft),
    GetPage(name: '/LoginRequestPregnant8', page: () =>  LoginRequestPregnant8(), transition: Transition.rightToLeft),
    GetPage(name: '/LoginRequestPeriod8', page: () =>  LoginRequestPeriod8(), transition: Transition.rightToLeft),
    GetPage(name: '/LoginRequestBirthDay9', page: () =>  LoginRequestBirthDay9(), transition: Transition.rightToLeft),
    GetPage(name: '/LoginRequestCompleteProfile10', page: () =>  LoginRequestCompleteProfile10(), transition: Transition.rightToLeft),
    GetPage(name: '/ScreenControllerPage', page: () => ScreenControllerPage(), transition: Transition.rightToLeft),
  ];
}

