import '../utils/app_packages.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key, required this.data});

  final OnBoardingModel data;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return SizedBox(
      height: width,
      width: width,
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          SizedBox(
            height: height,
            width: width,
            child: Lottie.asset(
              'assets/onboarding/background.json',
              fit: BoxFit.cover,
              // frameRate: FrameRate(90),
              // renderCache: RenderCache.raster,
            ),
          ),
          ClipPath(
            clipper: OnBoardingClipper(),
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.brown.withValues(alpha: 0.3),
                    Colors.teal.withValues(alpha: 0.15),
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: width / 20),
            child: Column(
              children: [
                Spacer(flex: 2),
                Flexible(flex: 20, child: Image(image: data.image)),
                Spacer(flex: 1),
                Text(
                  data.title,
                  style: TextStyle(
                    color: data.titleColor,
                    fontSize: 24,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(flex: 1),
                Text(
                  data.subTitle,textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, wordSpacing: 1, color: data.subTitleColor),
                ),
                Spacer(flex: 11),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
