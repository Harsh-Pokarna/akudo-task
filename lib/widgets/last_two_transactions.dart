import '../models/user_model.dart';
import 'package:flutter/material.dart';

class TotalRewards extends StatefulWidget {
  @override
  _TotalRewardsState createState() => _TotalRewardsState();
}

class _TotalRewardsState extends State<TotalRewards> {
  String getName(int index) {
    if (listOfTransaction[index].senderName != null) {
      return listOfTransaction[index].senderName;
    }
    return listOfTransaction[index].receiverName;
  }

  String getSign(int index) {
    if (listOfTransaction[index].isDebit) {
      return '+';
    }
    return '-';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      height: 265,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 4, 0, 4),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image(
                    image: AssetImage(
                        'assets/images/profile_image_${index + 1}.jpg'),
                    height: 60,
                    width: 60,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${getName(index)}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Container(
                      width: 230,
                      child: Text(
                        listOfTransaction[index].description,
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      getSign(index) +
                          listOfTransaction[index].amount.toInt().toString(),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      '12/03/2020',
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
