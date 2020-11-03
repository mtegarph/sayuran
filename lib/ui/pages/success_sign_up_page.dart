part of 'pages.dart';

class SuccessSignUppage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
        title: 'Yes!! Sign in was sucessful',
        subtitle: 'Now you are able to order \nSome foods as a self reward',
        picturePath: 'assets/food_wishes.png',
        buttonTitle1: 'Find Foods',
        buttonTap1: () {
          Get.to(MainPage());
        },
        //buttonTap2: () {},
        buttonTitle2: 'Find Foods',
      ),
    );
  }
}
