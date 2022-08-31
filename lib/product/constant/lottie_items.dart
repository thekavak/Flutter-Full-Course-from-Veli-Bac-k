enum LottieItems { themeChange }

extension LottieItemsExtension on LottieItems {
  String _path() {
    switch (this) {
      case LottieItems.themeChange:
        return 'theme_change.json';
    }
  }

  String get lottiePath => 'assets/lottie${_path()}';
}
