import '../utils/app_packages.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  String imgPath = 'assets/images/';

  final List<OnBoardingModel> data = [
    OnBoardingModel(
      title: AppTexts.OnBoardTitle1,
      subTitle: AppTexts.OnBoardSubtitle1,
      image: AssetImage('assets/onboarding/on1.png'),
      backgroundColor: AppColors.normalGreenColor,
      titleColor: Colors.white,
      subTitleColor: Colors.black,
    ),
    OnBoardingModel(
      title: AppTexts.OnBoardTitle2,
      subTitle: AppTexts.OnBoardSubtitle2,
      image: AssetImage('assets/onboarding/on2.png'),
      backgroundColor: AppColors.lightGreenColor.withValues(red: 10, blue: 5),
      titleColor: Colors.black45,
      subTitleColor: Colors.black,
    ),
    OnBoardingModel(
      title: AppTexts.OnBoardTitle3,
      subTitle: AppTexts.OnBoardSubtitle3,
      image: AssetImage('assets/onboarding/on3.png'),
      backgroundColor: AppColors.darkGreenColor.withValues(red: 3, blue: 5),
      titleColor: Colors.black54,
      subTitleColor: Colors.black,
    ),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double width = size.width;
    return Scaffold(
      body: ConcentricPageView(
        nextButtonBuilder: (context) {
          return AvatarGlow(
            duration: Duration(seconds: 3),
            glowCount: 3,
            startDelay: Duration(seconds: 3),
            glowRadiusFactor: 0.3,
            curve: Curves.decelerate,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.circular(100),
              ),
              width: width / 100,
              child: Text(
                currentIndex == data.length - 1 ? 'Finish' : 'Next',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
        // radius: width/7,
        onChange: (page) {
          setState(() {
            currentIndex = page;
          });
        },
        onFinish: () {
          // Navigator.push(
          //   context,
          //   (MaterialPageRoute(
          //     builder: (BuildContext context) {
          //       return MainNav();
          //     },
          //   )),
          // );
          Get.offAll(MainNav());
        },
        colors: data.map((e) => e.backgroundColor).toList(),
        pageSnapping: true,
        itemCount: data.length,
        // null = infinity
        physics: PageScrollPhysics(),

        duration: Duration(milliseconds: 800),
        itemBuilder: (int index) {
          return OnBoardingScreen(data: data[index]);
        },
      ),
    );
  }
}
