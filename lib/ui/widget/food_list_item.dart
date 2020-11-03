part of 'widgets.dart';

class FoodListItem extends StatelessWidget {
  final Food food;
  final double itemWidth;

  const FoodListItem({this.food, @required this.itemWidth});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: NetworkImage(food.picturePath), fit: BoxFit.cover)),
        ),
        SizedBox(
          width: itemWidth - 182, //(60 - 12 - 110),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                food.name,
                style: blackFontStyle2,
                maxLines: 1,
                overflow: TextOverflow.clip,
              ),
              Text(
                NumberFormat.currency(
                        symbol: 'Rp. ', decimalDigits: 0, locale: 'id-ID')
                    .format(food.price),
                style: greyFontStyle.copyWith(fontSize: 13),
              )
            ],
          ),
        ),
        Container(
          alignment: AlignmentDirectional.center,
          width: 100,
          height: 40,
          margin: EdgeInsets.only(top: 10, bottom: 15),
          //padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: RaisedButton(
            onPressed: () {
              Get.to(FoodDetailsPage(
                transaction: Transaction(food: mockFood[0],),
                backButtonPressed: () {
                  Get.back();
                },
              ));
            },
            color: mainColor,
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            child: Text(
              '>',
              style: greyFontStyle.copyWith(
                  fontWeight: FontWeight.w500, fontSize: 20),
            ),
          ),
        )
      ],
    );
  }
}
