import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class LastOrderItem extends StatelessWidget {
  final String logo;
  final int price;
  final String name;
  final double rate;
  final DateTime dateTime;

  const LastOrderItem({
    Key key,
    this.logo,
    this.price,
    this.name,
    this.rate,
    this.dateTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 3),
            blurRadius: 10,
            color: Color(0x0f262626),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            child: Image.asset(
              this.logo,
              width: 80.0,
              height: 80.0,
            ),
          ),
          SizedBox(width: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(this.name, style: Theme.of(context).textTheme.headline6),
              Text(new DateFormat.yMd().add_jm().format(this.dateTime),
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Color(0xff999999))),
              SizedBox(height: 16.0),
              RichText(
                text: TextSpan(
                    text: 'Your rate: ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontWeight: FontWeight.w300),
                    children: [
                      TextSpan(
                        text: '${this.rate} ',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      WidgetSpan(
                        child: SvgPicture.asset('assets/svg/star.svg'),
                        alignment: PlaceholderAlignment.middle,
                      ),
                    ]),
              ),
            ],
          ),
          Spacer(),
          Text(
            '${this.price} \$',
            style: TextStyle(
              color: Color(0xff0085FF),
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
