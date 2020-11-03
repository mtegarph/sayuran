part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController passcontroller = new TextEditingController();
  TextEditingController nameController = new TextEditingController();

// fungsi untuk menjadikan password visible apa tidak
  bool _hidepassword = true;
  void _tooglePasswordVisible() {
    setState(() {
      _hidepassword = !_hidepassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Sign Up',
      subtitle: 'Sign Up Here',
      onBackButtonPressed: () {
        // fungsi get ini untuk berpindah pindah halaman
        Get.back();
      },
      child: Column(
        children: [
          //circle untuk menginput gambar
          Container(
            height: 110,
            width: 110,
            margin: EdgeInsets.only(top: 26),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/photo_border.png'))),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://i.pinimg.com/originals/0f/43/93/0f43933135d0d61b3d6e8fcf68740369.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "Full Name",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: "Input your Full Name here"),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "Email Address",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: TextField(
              controller: emailcontroller,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: "Input your email here"),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "Password",
              style: blackFontStyle2,
            ),
          ),
          Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black)),
              child: TextField(
                obscureText: _hidepassword,
                autofocus: false,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: "Input your Password here",
                  suffixIcon: GestureDetector(
                    onTap: () {
                      _tooglePasswordVisible();
                    },
                    child: Icon(
                      _hidepassword ? Icons.visibility_off : Icons.visibility,
                      color: _hidepassword ? Colors.grey : Colors.blue,
                    ),
                  ),
                  isDense: true,
                ),
              )),
          Container(
              width: double.infinity,
              height: 45,
              margin: EdgeInsets.only(top: 24),
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: RaisedButton(
                onPressed: () {
                  Get.to(AddressPage());
                },
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                color: mainColor,
                child: Text(
                  "Continue",
                  style: GoogleFonts.poppins(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
              )),
        ],
      ),
    );
  }
}
