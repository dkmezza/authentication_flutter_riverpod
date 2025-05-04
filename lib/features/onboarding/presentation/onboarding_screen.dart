import 'package:flutter/material.dart';
import '../../onboarding/data/onboarding_controller.dart';
import '../../onboarding/data/onboarding_page_model.dart';
import 'widgets/onboarding_page.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final pages = [
    OnboardingPageModel(
      imagePath: 'assets/images/onboarding_screen1.png',
      title: 'Welcome to the App',
    ),
    OnboardingPageModel(
      imagePath: 'assets/images/onboarding_screen2.png',
      title: 'Track Your Progress',
    ),
    OnboardingPageModel(
      imagePath: 'assets/images/onboarding_screen3.png',
      title: 'Stay Connected',
    ),
  ];

  void _finishOnboarding() async {
    await OnboardingController.setOnboardingSeen();
    if (context.mounted) context.go('/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: pages.length,
        onPageChanged: (index) => setState(() => _currentIndex = index),
        itemBuilder:
            (context, index) => OnboardingPage(
              imagePath: pages[index].imagePath,
              title: pages[index].title,
            ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(onPressed: _finishOnboarding, child: const Text("Skip")),
            ElevatedButton(
              onPressed:
                  _currentIndex == pages.length - 1
                      ? _finishOnboarding
                      : () => _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      ),
              child: Text(
                _currentIndex == pages.length - 1 ? "Get Started" : "Next",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
