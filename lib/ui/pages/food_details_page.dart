part of 'pages.dart';

class FoodDetailsPage extends StatefulWidget {
  final Function backButtonPressed;
  final Transaction transaction;

  const FoodDetailsPage({this.backButtonPressed, this.transaction});
  @override
  _FoodDetailsPageState createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Price',
                    style: greyFontStyle.copyWith(fontSize: 13),
                  ),
                  Text(
                    NumberFormat.currency(
                            locale: 'id-ID', symbol: 'Rp. ', decimalDigits: 0)
                        .format(quantity * widget.transaction.food.price),
                    style: blackFontStyle2.copyWith(fontSize: 18),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 163,
              height: 45,
              child: RaisedButton(
                onPressed: () {
                  Get.to(PaymentPage(
                    transaction: mocktransaction[0],
                  ));
                },
                color: mainColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'Order Now',
                  style: blackFontStyle3.copyWith(fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Container(
              color: mainColor,
            ),
            SafeArea(
                child: Container(
              color: Colors.white,
            )),
            ListView(
              children: [
                Stack(
                  children: [
                    CarouselSlider(
                        options: CarouselOptions(
                            autoPlay: true,
                            enlargeCenterPage: false,
                            viewportFraction: 1.0,
                            height: 300.0,
                            aspectRatio: 16 / 10,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration:  
                                Duration(milliseconds: 3000)),
                        items: [
                          Container(
                            width: double.infinity,
                            height: 300,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        widget.transaction.food.picturePath),
                                    fit: BoxFit.cover)),
                          ),
                        ]),
                    Column(
                      children: [
                        //// back buton
                        Container(
                          height: 100,
                          padding:
                              EdgeInsets.symmetric(horizontal: defaultMargin),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                              onTap: () {
                                if (widget.backButtonPressed != null) {
                                  widget.backButtonPressed();
                                }
                              },
                              child: Container(
                                padding: EdgeInsets.all(3),
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.black12),
                                child:
                                    Image.asset('assets/back_arrow_white.png'),
                              ),
                            ),
                          ),
                        ),
                        //// Body
                        Container(
                          //width: double.infinity,
                          //height: MediaQuery.of(context).size.height,
                          margin: EdgeInsets.only(top: 180),
                          padding: EdgeInsets.symmetric(
                              vertical: 26, horizontal: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              color: Colors.white),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                134, //(32 - 102)
                                        child: Text(
                                          'Jenis Sayuran',
                                          style: blackFontStyle2,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                134, //(32 - 102)
                                        child: Text(
                                            widget.transaction.food.name,
                                            style: greyFontStyle.copyWith(
                                                fontWeight: FontWeight.w500)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            quantity = max(1, quantity - 1);
                                          });
                                        },
                                        child: Container(
                                            width: 26,
                                            height: 26,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(width: 1),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/btn_min.png')),
                                            )),
                                      ),
                                      SizedBox(
                                        width: 50,
                                        child: Text(
                                          quantity.toString(),
                                          textAlign: TextAlign.center,
                                          style: blackFontStyle2,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            quantity = min(
                                                widget.transaction.food
                                                    .ingredients
                                                    .toInt(),
                                                quantity + 1);
                                          });
                                        },
                                        child: Container(
                                            width: 26,
                                            height: 26,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(width: 1),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/btn_add.png')),
                                            )),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 20, 0, 16),
                                child: Text(
                                  'Vendor',
                                  style: blackFontStyle3,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 4, 0, 30),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/ic_profile_normal.png'),
                                              fit: BoxFit.cover)),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      widget.transaction.food.description,
                                      style: greyFontStyle.copyWith(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                'Informasi Produk',
                                style: blackFontStyle3.copyWith(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w700),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 15, 0, 10),
                                    child: Text(
                                      "Stok Tersedia",
                                      style: greyFontStyle.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: "456268".toColor()),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 15, 0, 10),
                                    child: Text(
                                      widget.transaction.food.ingredients,
                                      style: greyFontStyle.copyWith(
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 4, 0, 15),
                                    child: Text(
                                      "Maks. Pembelian",
                                      style: greyFontStyle.copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: "456268".toColor()),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 4, 0, 15),
                                    child: Text(
                                      "${widget.transaction.food.ingredients} pieces",
                                      style: greyFontStyle.copyWith(
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Detail Produk',
                                style: blackFontStyle3.copyWith(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w700),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 15, 0, 10),
                                child: Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                                  style: greyFontStyle.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: "456268".toColor()),
                                ),
                              ),SizedBox(
                                height: 30.0,
                              ),
                              Text(
                                'Produk Lainya',
                                style: blackFontStyle3.copyWith(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w700),
                              ),
                              Container(
                                height: 240,
                                width: double.infinity,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Row(

                                        // logika untuk menerapkan padding di awal awal
                                        children: mockFood
                                            .map((e) => Padding(
                                                  padding: EdgeInsets.only(
                                                      left:
                                                          (e == mockFood.first)
                                                              ? defaultMargin
                                                              : 0,
                                                      right: defaultMargin),
                                                  child: FoodCard(e),
                                                ))
                                            .toList())
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
