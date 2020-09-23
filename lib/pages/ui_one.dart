import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UISix extends StatefulWidget {
  UISix({Key key}) : super(key: key);

  _UISixState createState() => _UISixState();
}

class _UISixState extends State<UISix> {
  var _scrollViewOffsetY = 0.0;

  double get _imageHeight {
    var height = 250 + _scrollViewOffsetY;
    return height;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: _imageHeight,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: NetworkImage(
                          "https://image.freepik.com/free-photo/elegant-beautiful-woman-red-fashionable-suit-wide-hat_149155-882.jpg"))),
            ),
          ),
          Row(
            children: [
              FlatButton(
                padding: EdgeInsets.only(top: 10),
                onPressed: () {},
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      shape: BoxShape.circle),
                  child: Icon(
                    FontAwesomeIcons.chevronLeft,
                    color: Colors.white.withOpacity(0.5),
                    size: 16,
                  ),
                ),
              ),
              Spacer(),
              FlatButton(
                padding: EdgeInsets.only(top: 10),
                onPressed: () {},
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      shape: BoxShape.circle),
                  child: Icon(
                    FontAwesomeIcons.shoppingCart,
                    color: Colors.white.withOpacity(0.5),
                    size: 16,
                  ),
                ),
              ),
              FlatButton(
                padding: EdgeInsets.only(top: 10),
                onPressed: () {},
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      shape: BoxShape.circle),
                  child: Icon(
                    FontAwesomeIcons.home,
                    color: Colors.white.withOpacity(0.5),
                    size: 16,
                  ),
                ),
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: NotificationListener<ScrollNotification>(
              onNotification: (ScrollNotification notification) {
                print(notification.metrics.pixels);
                _scrollViewOffsetY = notification.metrics.pixels;
                setState(() {});
              },
              child: ListView.builder(
                  padding: EdgeInsets.only(top: 250),
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: MediaQuery.of(context).size.height - 250,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Red velvet hat",
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w900),
                                ),
                                FlatButton(
                                    padding: EdgeInsets.only(top: 10),
                                    onPressed: () {},
                                    child: Icon(
                                      FontAwesomeIcons.times,
                                      size: 16,
                                      color: Colors.grey.shade400,
                                    ))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                "Color",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey.shade500),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.shade300,
                                          width: 2),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Icon(
                                    FontAwesomeIcons.check,
                                    size: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        shape: BoxShape.circle),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        shape: BoxShape.circle),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 107, 163, 246),
                                        shape: BoxShape.circle),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
