import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "FILM",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        )),
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          CarouselSlider(
            items: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://id.bookmyshow.com/blog-hiburan/wp-content/uploads/2018/12/BlacKkKlansman.jpg"),
                        fit: BoxFit.cover)),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.keepo.me/images/post/lists/2019/04/12/main-list-image-64011c27-3860-4412-b1c0-0bd89f71cfc7-5.jpg"),
                        fit: BoxFit.cover)),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://upload.wikimedia.org/wikipedia/id/c/c2/Wonder_Jacob_Tremblay_Poster.jpg"),
                        fit: BoxFit.cover)),
              ),
            ],
            options: CarouselOptions(
                height: 380.0,
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                enlargeCenterPage: true,
                reverse: true),
          ),
          Padding(
              padding: EdgeInsets.only(left: 15.0, top: 25.0),
              child: Text(
                "Most Popular",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Container(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://movieden.net/wp-content/uploads/2019/09/poster-zombieland-2.jpg"),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://s0.bukalapak.com/img/5551314833/w-1000/MV5BMTk3NDY5MTU0NV5BMl5BanBnXkFtZTgwNDI3MDE1NTM__V1_.jpg"),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://id.bookmyshow.com/blog-hiburan/wp-content/uploads/2018/12/BlacKkKlansman.jpg"),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://id.bookmyshow.com/blog-hiburan/wp-content/uploads/2018/12/BlacKkKlansman.jpg"),
                            fit: BoxFit.fill)),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
