import '../../303/lottie_learn.dart';
import '../../303/navigator/navigate_detail.dart';
import '../../303/navigator/navigate_home.dart';

class NavigatorRotes {
  final items = {
    '/': (context) => LottieLearn(),
    '/home': (context) => NavigateHome(),
    '/homeDetail': (context) => NavigateDetail(),
  };
}
