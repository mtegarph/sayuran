part of 'pages.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double listItemWIdth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;
    return ListView(
      children: [
        Column(
          children: [
            //// HEADER
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              color: Colors.white,
              height: 100,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'VeggieShop',
                        style: blackFontStyle1,
                      ),
                      Text(
                        'Lets see some new fresh vegetables',
                        style:
                            greyFontStyle.copyWith(fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://i.pinimg.com/originals/0f/43/93/0f43933135d0d61b3d6e8fcf68740369.jpg'),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ),

            /// LIST FOOD
            SizedBox(
              height: 15.0,
            ),
            CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.8,
                  height: 180.0,
                  aspectRatio: 18 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 3000)),
              items: [
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://i.pinimg.com/564x/94/17/82/941782f60e16a9d7f9b4cea4ae7025e0.jpg"),
                          fit: BoxFit.cover)),
                  //         child: Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: [
                  //     Text(
                  //       'VeggieShop',
                  //       style: blackFontStyle1.copyWith(color: Colors.white,fontSize: 18.0),
                  //     ),
                  //     Padding(
                  //       padding: const EdgeInsets.all(15.0),
                  //       child: Text(
                  //         'Lets see some new fresh vegetables',
                  //         style: greyFontStyle.copyWith(
                  //             fontWeight: FontWeight.w300, color: Colors.white,fontSize: 15.0),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  
                )
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 14, left: 25),
              child: Text(
                'Our reccomendations..',
                style: blackFontStyle1,
              ),
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
                                    left: (e == mockFood.first)
                                        ? defaultMargin
                                        : 0,
                                    right: defaultMargin),
                                child: FoodCard(e),
                              ))
                          .toList())
                ],
              ),
            ),

            /// LIST FOOD (TABS)
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 14, left: 25, bottom: 15),
                    child: Text(
                      'Or try something new..',
                      style: blackFontStyle1,
                    ),
                  ),
                  Builder(builder: (_) {
                    List<Food> food = (selectedIndex == 0)
                        ? mockFood
                        : (selectedIndex == 1)
                            ? []
                            : [];
                    return Column(
                        children: food
                            .map((e) => Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      defaultMargin, 0, defaultMargin, 16),
                                  child: FoodListItem(
                                    food: e,
                                    itemWidth: listItemWIdth,
                                  ),
                                ))
                            .toList());
                  }),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            )
          ],
        )
      ],
    );
  }
}
