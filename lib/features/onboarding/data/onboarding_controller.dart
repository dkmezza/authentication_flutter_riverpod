import 'package:shared_preferences/shared_preferences.dart';

class OnboardingController {
  static const String onboardingSeenKey = 'onboarding_seen';

  static Future<void> setOnboardingSeen() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(onboardingSeenKey, true);
  }

  static Future<bool> hasSeenOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(onboardingSeenKey) ?? false;
  }
}
