part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            //// Header
            Container(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                height: 220,
                margin: EdgeInsets.only(bottom: defaultMargin),
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 110,
                      height: 110,
                      margin: EdgeInsets.only(bottom: 16),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/photo_border.png'))),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(mockUSer.picturePath),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Text(
                      mockUSer.name,
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      mockUSer.email,
                      style:
                          greyFontStyle.copyWith(fontWeight: FontWeight.w300),
                    )
                  ],
                )),
            //// Body
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    child: Text("Akun",
                        style: blackFontStyle2.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 15.0)),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    children: (((selectedIndex = 0) == 0)
                            ? [
                                'Edit Profile',
                                'Home Address',
                                'My Order',
                                'Payment'
                              ]
                            : [
                                'Rate App',
                                'Help Center',
                                'Privacy & Policy',
                                'Term & Condition'
                              ])
                        .map((e) => Padding(
                              padding: EdgeInsets.only(
                                  bottom: 16,
                                  left: defaultMargin,
                                  right: defaultMargin),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    e,
                                    style: blackFontStyle3,
                                  ),
                                  SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: Image.asset(
                                      'assets/right_arrow.png',
                                      fit: BoxFit.contain,
                                    ),
                                  )
                                ],
                              ),
                            ))
                        .toList(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    child: Text("FAQ",
                        style: blackFontStyle2.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 15.0)),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    children: (((selectedIndex = 1) == 0)
                            ? [
                                'Edit Profile',
                                'Home Address',
                                'My Order',
                                'Payment'
                              ]
                            : [
                                'Rate App',
                                'Help Center',
                                'Privacy & Policy',
                                'Term & Condition'
                              ])
                        .map((e) => Padding(
                              padding: EdgeInsets.only(
                                  bottom: 16,
                                  left: defaultMargin,
                                  right: defaultMargin),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    e,
                                    style: blackFontStyle3,
                                  ),
                                  SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: Image.asset(
                                      'assets/right_arrow.png',
                                      fit: BoxFit.contain,
                                    ),
                                  )
                                ],
                              ),
                            ))
                        .toList(),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Log Out",
                          style: blackFontStyle2.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 17.0,
                              color: "ec5858".toColor())),
                      Padding(
                        padding: const EdgeInsets.only(right:8.0),
                        child: SizedBox(
                          height: 24,
                          width: 24,
                          child: Image.asset(
                            'assets/right_arrow.png',
                            fit: BoxFit.contain,
                            color: "ec5858".toColor(),
                          ),
                        ),
                      )
                    ],
                  )),
            )
          ],
        ),
      ],
    );
  }
}
