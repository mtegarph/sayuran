part of 'pages.dart';

class PaymentPage extends StatelessWidget {
  final Transaction transaction;

  const PaymentPage({this.transaction});

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Payment',
      subtitle: 'Your Detail Payment',
      onBackButtonPressed: () {
        Get.back();
      },
      backColor: 'FAFAFC'.toColor(),
      child: Column(
        children: [
          //// Bagian atas
          Container(
            margin: EdgeInsets.only(bottom: defaultMargin),
            padding:
                EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 16),
            color: Colors.white,
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Item Ordered',
                    style: blackFontStyle3,
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Colors.black,
                    indent: 3.0,
                    endIndent: 3.0,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            margin: EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        transaction.food.picturePath),
                                    fit: BoxFit.cover)),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width - 189,
                                // 2 * defaultMargin (jarak border) +
                                // 60 (lebar picture) +
                                // 12 (jarak Picture ke title) +
                                // 78 (lebar jumlah items),
                                child: Text(
                                  transaction.food.name,
                                  style: blackFontStyle2,
                                  maxLines: 1,
                                  overflow: TextOverflow.clip,
                                ),
                              ),
                              Text(
                                NumberFormat.currency(
                                        locale: 'id-ID',
                                        symbol: 'Rp.',
                                        decimalDigits: 0)
                                    .format(transaction.food.price),
                                style: greyFontStyle.copyWith(fontSize: 13),
                              )
                            ],
                          )
                        ],
                      ),
                      Text(
                        '${transaction.quantity} item(s)',
                        style: greyFontStyle.copyWith(fontSize: 13),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16, bottom: 8),
                    child: Text(
                      'Details Transaction',
                      style: blackFontStyle3,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          transaction.food.name,
                          style: greyFontStyle,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          NumberFormat.currency(
                                  locale: 'id-ID',
                                  decimalDigits: 0,
                                  symbol: 'Rp. ')
                              .format(transaction.quantity *
                                  transaction.food.price),
                          style: blackFontStyle3,
                          textAlign: TextAlign.right,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          'Driver',
                          style: greyFontStyle,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          NumberFormat.currency(
                                  locale: 'id-ID',
                                  decimalDigits: 0,
                                  symbol: 'Rp. ')
                              .format(50000),
                          style: blackFontStyle3,
                          textAlign: TextAlign.right,
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          'Tax 10%',
                          style: greyFontStyle,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          NumberFormat.currency(
                                  locale: 'id-ID',
                                  decimalDigits: 0,
                                  symbol: 'Rp. ')
                              .format(transaction.quantity *
                                  transaction.food.price *
                                  0.1),
                          style: blackFontStyle3,
                          textAlign: TextAlign.right,
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          'Total',
                          style: greyFontStyle.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 -
                            defaultMargin -
                            5,
                        child: Text(
                          NumberFormat.currency(
                                  locale: 'id-ID',
                                  decimalDigits: 0,
                                  symbol: 'Rp. ')
                              .format(transaction.food.price *
                                      transaction.quantity *
                                      1.1 +
                                  50000),
                          style: blackFontStyle3.copyWith(
                              fontWeight: FontWeight.bold,
                              ),
                          textAlign: TextAlign.right,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          //// Bagian bawah
          Container(
            margin: EdgeInsets.only(bottom: defaultMargin),
            padding:
                EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 16),
            color: Colors.white,
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Deliver To',
                          style: blackFontStyle2,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Other Address',
                            style: blackFontStyle2.copyWith(color: '1ABC9C'.toColor()),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Colors.black,
                    indent: 3.0,
                    endIndent: 3.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Text(
                          transaction.user.name,
                          style: blackFontStyle3,
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          "(${transaction.user.phoneNumber})",
                          style: blackFontStyle3,
                          textAlign: TextAlign.right,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Text(
                          transaction.user.address,
                          style: blackFontStyle3,
                          textAlign: TextAlign.right,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          // SizedBox(
          //   height: MediaQuery.of(context).size.width / 10,
          // ),
          Container(
            width: double.infinity,
            height: 45,
            margin: EdgeInsets.only(top: 60),
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: RaisedButton(
              onPressed: () {
                Get.to(SuccessOrderpage());
              },
              color: mainColor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: Text(
                'Checkout Now',
                style: blackFontStyle3.copyWith(fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}
