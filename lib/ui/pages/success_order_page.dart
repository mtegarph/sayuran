part of 'pages.dart';

class SuccessOrderpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
        title: 'Yes!! The Order Is Succeed',
        subtitle:
            'Just Stay at home while we are \npreparing For The Deliveries',
        picturePath: 'assets/bike.png',
        buttonTitle1: 'Order Other Vegetables',
        buttonTap1: () {
          Get.to(MainPage());
        },
        buttonTap2: () {
          Get.to(MainPage());
        },
        buttonTitle2: 'View My Order',
      ),
    );
  }
}
