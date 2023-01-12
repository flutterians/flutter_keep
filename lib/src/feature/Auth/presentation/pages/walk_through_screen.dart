import 'package:flutter/material.dart';
import 'package:flutter_keep/src/core/core.dart';
import 'package:flutter_keep/src/feature/Auth/auth.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WalkThroughScreen extends StatefulWidget {
  const WalkThroughScreen({super.key});

  @override
  State<WalkThroughScreen> createState() => _WalkThroughScreenState();
}

class _WalkThroughScreenState extends State<WalkThroughScreen> {
  late PageController _controller;
  double pageOffset = 0;

  final List<Map<String, String>> pageViewItems = [
    {
      'title': 'Note it down',
      'content': 'Note down all your tasks and important stuffs',
      'asset': AppAssets.walkThrough_1,
    },
    {
      'title': 'Works offline',
      'content': 'Access and store your data without connectivity',
      'asset': AppAssets.walkThrough_2,
    },
    {
      'title': 'Set reminders',
      'content': 'Get notified about important tasks',
      'asset': AppAssets.walkThrough_3,
    }
  ];

  @override
  void initState() {
    _controller = PageController()
      ..addListener(() {
        setState(() => pageOffset = _controller.page ?? 0);
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: pageViewItems.length,
                itemBuilder: (context, index) {
                  final pageData = pageViewItems[index];
                  return PageViewWidget(
                    pageData: pageData,
                    offset: pageOffset - index,
                  );
                },
              ),
            ),
            SmoothPageIndicator(
              controller: _controller, // PageController
              count: pageViewItems.length,
              effect: WormEffect(
                offset: 1,
                dotColor: Theme.of(context).coreWhite.withOpacity(.7),
                activeDotColor: Theme.of(context).coreWhite,
                spacing: 10,
                dotHeight: 10,
                dotWidth: 10,
              ), // your preferred effect
            ),
            const SizedBox(height: 30),
            CustomButton(
              borderRadius: 15,
              leading: SvgPicture.asset(AppAssets.googleLogo),
              title: 'Continue with Google '.hardcoded,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              onTap: () {},
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
