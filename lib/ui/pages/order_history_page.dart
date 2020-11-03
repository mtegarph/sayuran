part of 'pages.dart';

class OrderHistoryPage extends StatefulWidget {
  @override
  _OrderHistoryPageState createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  int selectedIndex = 0;
  List<Transaction> inProgress = mocktransaction
      .where((element) =>
          element.transactionStatus == TransactionStatus.on_delivery ||
          element.transactionStatus == TransactionStatus.pending)
      .toList();
  List<Transaction> past = mocktransaction
      .where((element) =>
          element.transactionStatus == TransactionStatus.delivered ||
          element.transactionStatus == TransactionStatus.cancelled)
      .toList();
  @override
  Widget build(BuildContext context) {
    if (inProgress.length == 0 && past.length == 0) {
      return IllustrationPage(
        title: 'OH NO !! ITS EMPTY',
        subtitle: 'Seems you havent \nordered any food yet',
        picturePath: 'assets/love_burger.png',
        buttonTitle1: 'Find foods',
        buttonTap1: () {},
        //buttonTap2: () {},
        //buttonTitle2: 'Oke',
      );
    } else {
      double listItemWidth =
          MediaQuery.of(context).size.width - 2 * defaultMargin;
      return ListView(
        children: [
          Column(
            children: [
              //// header
              Container(
                height: 100,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: defaultMargin),
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Your Orders',
                      style: blackFontStyle1,
                    ),
                    Text('Wait for the best meal',
                        style: greyFontStyle.copyWith(
                            fontWeight: FontWeight.w300)),
                  ],
                ),
              ),
              //// Body
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    CustomTabBar(
                      titles: ['In Progress', 'Past Orders'],
                      selectedIndex: selectedIndex,
                      onTap: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      children: (selectedIndex == 0 ? inProgress : past)
                          .map((e) => Padding(
                                padding: const EdgeInsets.only(
                                    right: defaultMargin,
                                    left: defaultMargin,
                                    bottom: 16),
                                child: OrderListItem(
                                  itemWidth: listItemWidth,
                                  transaction: e,
                                ),
                              ))
                          .toList(),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      );
    }
  }
}
