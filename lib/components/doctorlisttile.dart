import 'package:flutter/material.dart';
import '../components/pillcomponent.dart';
import '../constants.dart';

class DoctorListTile extends StatelessWidget {
  //const DoctorListTile({Key? key}) : super(key: key);

  final String docName;
  final String docBlurb;
  final String picPath;
  final List<String> valueList;
  final List<int> valueIndex;
  const DoctorListTile(
      {Key? key,
      required this.docName,
      required this.docBlurb,
      required this.picPath,
      required this.valueIndex,
      required this.valueList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black45,
                spreadRadius: 0.5,
                blurRadius: 7.5,
                offset: Offset(2, 3),
              ),
            ]),
        //alignment: Alignment.center,
        width: 305,
        //color: c_primaryColor,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NameArea(
              docName: docName,
              docBlurb: docBlurb,
              picPath: picPath,
            ),
            PillArea(
              valueIndex: valueIndex,
              valueList: valueList,
            ),
          ],
        ),
      ),
    );
  }
}

class NameArea extends StatelessWidget {
  //const NameArea({Key? key}) : super(key: key);
  final String docName;
  final String docBlurb;
  final String picPath;
  const NameArea(
      {Key? key,
      required this.docName,
      required this.docBlurb,
      required this.picPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              margin: const EdgeInsets.only(left: 5),
              width: 100,
              child: Image.asset(picPath)
              //const Icon(Icons.account_box_sharp),
              ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  docName,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 90,
                width: 200,
                child: Text(
                  docBlurb,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PillArea extends StatelessWidget {
  //const PillArea({Key? key}) : super(key: key);
  final List<String> valueList;
  final List<int> valueIndex;
  const PillArea({Key? key, required this.valueList, required this.valueIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            PillComponent(
                PillColor: kMaxBlueGreenColour,
                PillText: valueList[valueIndex[0]]),
            PillComponent(
                PillColor: kMaxBlueGreenColour,
                PillText: valueList[valueIndex[1]]),
            PillComponent(
                PillColor: kMaxBlueGreenColour,
                PillText: valueList[valueIndex[2]]),
          ],
        ),
        Column(
          children: [
            Column(
              children: [
                PillComponent(
                    PillColor: kAmaranthPinkColour,
                    PillText: valueList[valueIndex[3]]),
                PillComponent(
                    PillColor: kAmaranthPinkColour,
                    PillText: valueList[valueIndex[4]]),
                PillComponent(
                    PillColor: kAmaranthPinkColour,
                    PillText: valueList[valueIndex[5]]),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
