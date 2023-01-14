import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gpitco/views/auth/login_view.dart';
import 'package:gpitco/views/onboarding/welcome_view.dart';
import 'package:gpitco/views/onboarding/widgets/care_view.dart';
import 'package:gpitco/views/onboarding/widgets/center_next_button.dart';
import 'package:gpitco/views/onboarding/widgets/mood_view.dart';
import 'package:gpitco/views/onboarding/widgets/relax_view.dart';
import 'package:gpitco/views/onboarding/widgets/splash_view.dart';
import 'package:gpitco/views/onboarding/widgets/top_back_skip_view.dart';
import 'package:gpitco/views/splash/languages_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroductionAnimationScreen extends StatefulWidget {
  const IntroductionAnimationScreen({Key? key}) : super(key: key);

  @override
  _IntroductionAnimationScreenState createState() =>
      _IntroductionAnimationScreenState();
}

class _IntroductionAnimationScreenState
    extends State<IntroductionAnimationScreen> with TickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animationController?.animateTo(0.2);
    super.initState();
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // print(_animationController?.value);
    return Scaffold(
      body: ClipRect(
        child: Stack(
          children: [
            RelaxView(
              animationController: _animationController!,
            ),
            CareView(
              animationController: _animationController!,
            ),
            WelcomeView(
              animationController: _animationController!,
            ),
            TopBackSkipView(
              onBackClick: _onBackClick,
              onSkipClick: _onSkipClick,
              animationController: _animationController!,
            ),
            CenterNextButton(
              animationController: _animationController!,
              onNextClick: _onNextClick,
            ),
          ],
        ),
      ),
    );
  }

  void _onSkipClick() {
    _animationController?.animateTo(0.8,
        duration: Duration(milliseconds: 1200));
  }

  void _onBackClick() {
    if (_animationController!.value >= 0 &&
        _animationController!.value <= 0.2) {
      _animationController?.animateTo(0.2);
    } else if (_animationController!.value > 0.2 &&
        _animationController!.value <= 0.4) {
      setState(() {
        _animationController?.animateTo(0.2);
      });
    } else if (_animationController!.value > 0.4 &&
        _animationController!.value <= 0.6) {
      setState(() {
        _animationController?.animateTo(0.4);
      });
    } else if (_animationController!.value > 0.6 &&
        _animationController!.value <= 0.8) {
      setState(() {
        _animationController?.animateTo(0.4);
      });
    } else if (_animationController!.value > 0.8 &&
        _animationController!.value <= 1.0) {
      setState(() {
        _animationController!.value = 0.8;
        _animationController?.animateTo(0.8);
      });
    }
  }

  void _onNextClick() {
    if (_animationController!.value >= 0 &&
        _animationController!.value <= 0.2) {
      print("From 1 To 2");
      setState(() {
        _animationController?.animateTo(0.4);
      });
    } else if (_animationController!.value > 0.2 &&
        _animationController!.value <= 0.4) {
      print("From 2 To 3");
      setState(() {
        _animationController?.animateTo(0.8);
      });
    } else if (_animationController!.value > 0.4 &&
        _animationController!.value <= 0.6) {
      setState(() {
        _animationController!.value = 0.8;
        _animationController?.animateTo(0.8);
      });
    } else if (_animationController!.value > 0.6 &&
        _animationController!.value <= 0.8) {
      _signUpClick();
    }
  }

  void _signUpClick() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setString("intoSkip", "true");
    Get.offAll(() => const LoginView());
  }
}
