part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController passcontroller = new TextEditingController();
  bool isloading = false;

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
      title: 'Sign In',
      
      subtitle: 'Find The Best Vegetable Here',
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
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
              child: isloading
                  ? SpinKitFadingCircle(
                      size: 45,
                      color: mainColor,
                    )
                  : RaisedButton(
                      onPressed: () {
                       
                      },
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      color: mainColor,
                      child: Text(
                        "Sign In",
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                    )),
          Container(
              width: double.infinity,
              height: 45,
              margin: EdgeInsets.only(top: 24),
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: isloading
                  ? SpinKitFadingCircle(
                      size: 45,
                      color: mainColor,
                    )
                  : RaisedButton(
                      onPressed: () {
                         // fungsi get ini untuk berpindah pindah halaman
                        Get.to(SignUpPage());
                      },
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      color: greyColour,
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    )),
        ],
      ),
    );
  }
}
