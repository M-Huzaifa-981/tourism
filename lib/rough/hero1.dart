import '../utils/app_packages.dart';

class Hero1 extends StatelessWidget {
  const Hero1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>Hero2(image: Assets.restaurantImage,)));
          },
          child: Hero(
            tag: 'img1',
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(Assets.restaurantImage))
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class Hero2 extends StatelessWidget {
  const Hero2({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Hero(
        tag: 'img1',
        child: Container(
          // height: 300,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(image))),
        ),
      ),
    );
  }
}
