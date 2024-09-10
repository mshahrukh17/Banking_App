// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, file_names, prefer_const_constructors, use_full_hex_values_for_flutter_colors, non_constant_identifier_names

import '../Export/AllExport.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  List<Widget> _buildPageContent() {
    return [
      _buildPage(
        image: 'assets/images/splash1.png',
        title: 'Fastest Payment in\nthe world',
        description:
            'Integrate multiple payment methoods to help you up the process quickly',
      ),
      _buildPage(
        image: 'assets/images/splash2.png',
        title: 'The most Secoure\nPlatfrom for Customer',
        description:
            'Built-in Fingerprint, face recognition and more, keeping you completely safe',
      ),
      _buildPage(
        image: 'assets/images/splash3.png',
        title: 'Paying for Everything is\nEasy and Convenient',
        description:
            'Built-in Fingerprint, face recognition and more, keeping you completely safe',
      ),
    ];
  }

  Widget _buildPage(
      {required String image,
      required String title,
      required String description}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: 200),
        const SizedBox(height: 80),
        Text(
          title,
          style: MyText.BoldTitle2(Colors.black, 22.0),
          textAlign: TextAlign.center,
          maxLines: 2,
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            description,
            style: MyText.LightWeightTitle(14.0),
            textAlign: TextAlign.center,
            maxLines: 3,
          ),
        ),
      ],
    );
  }

  // Page change hotay waqt state update karne ke liye
  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: _onPageChanged,
            children: _buildPageContent(),
          ),
          _buildIndicator(),
          _buildNextButton(),
        ],
      ),
    );
  }

  Widget _buildIndicator() {
    return Positioned(
      bottom: 270,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          _buildPageContent().length,
          (index) => Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            width: _currentPage == index ? 25 : 6,
            height: _currentPage == index ? 8 : 6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: _currentPage == index ? Color(0xfff0066FF) : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNextButton() {
    return Positioned(
        bottom: 30,
        child: MyButton(
            onpress: () {
              if (_currentPage == _buildPageContent().length - 1) {
                Navigator.pushNamed(context, '/login');
              } else {
                _pageController.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut);
              }
            },
            buttontext: _currentPage == _buildPageContent().length - 1
                ? "Get Started"
                : "Next"));
  }
}
