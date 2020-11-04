import 'package:flutter/material.dart';
import 'package:flutter_social_media_app/model/TopicsRadioModel.dart';

class CustomInterestCard extends StatefulWidget {
  @override
  createState() {
    return new CustomInterestCardState();
  }
}

class CustomInterestCardState extends State<CustomInterestCard> {
  List<TopicsRadio> sampleData = new List<TopicsRadio>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sampleData.add(new TopicsRadio(
      isSelected: false,
      title: 'Education',
    ));
    sampleData.add(new TopicsRadio(
      isSelected: false,
      title: 'Memes',
    ));
    sampleData.add(new TopicsRadio(
      isSelected: false,
      title: 'Music',
    ));
    sampleData.add(new TopicsRadio(
      isSelected: false,
      title: 'Technologies',
    ));
    sampleData.add(new TopicsRadio(
      isSelected: false,
      title: 'Entertainment',
    ));
    sampleData.add(new TopicsRadio(
      isSelected: false,
      title: 'Sports',
    ));
    sampleData.add(new TopicsRadio(
      isSelected: false,
      title: 'Drawing',
    ));
    sampleData.add(new TopicsRadio(
      isSelected: false,
      title: 'Science',
    ));
    sampleData.add(new TopicsRadio(
      isSelected: false,
      title: 'Acting',
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 2.3),
        scrollDirection: Axis.vertical,
        itemCount: sampleData.length,
        itemBuilder: (BuildContext context, int index) {
          return new InkWell(
            splashColor: Colors.blueAccent,
            onTap: () {
              setState(() {
                sampleData[index].isSelected = !sampleData[index].isSelected;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(child: new RadioItem(sampleData[index])),
            ),
          );
        },
      ),
    );
  }
}

class RadioItem extends StatelessWidget {
  final TopicsRadio _item;
  RadioItem(this._item);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
      ),
      child: _item.isSelected
          ? Container(
              alignment: Alignment.center,
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  color: Color(0xFF1ab7ea),
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                _item.title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            )
          : Container(
              alignment: Alignment.center,
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xFF1ab7ea)),
              ),
              child: Text(
                _item.title,
                style: TextStyle(color: Color(0xFF1ab7ea), fontSize: 18),
              ),
            ),
    );
  }
}
