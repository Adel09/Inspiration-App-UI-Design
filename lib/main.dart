import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        title: 'Inspiration',
        home: MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          onPressed: (){
              print("AYYYYYYY");
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                width: double.infinity,
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Find Your',
                      style: TextStyle(color: Colors.black87, fontSize: 25),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Inspiration',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(244, 243, 243, 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black87,
                            ),
                            hintText: "Search you're looking for",
                            hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 15)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal:20.0),
                  child: Text(
                      "Promo Today",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                  ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(left: 20),
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    promoCard("https://i.insider.com/5fd299359cf1420018d2ea79?width=1136&format=jpeg"),
                    promoCard("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/amazon-tech-products-2021-1635430982.jpg?crop=0.502xw:1.00xh;0.256xw,0&resize=640:*"),
                    promoCard("https://fazewp-fazemediainc.netdna-ssl.com/cms/wp-content/uploads/2015/04/led-usb-clock-fan1-600x600.jpg")
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                height: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://about.me/cdn-cgi/image/q=80,dpr=1,f=auto,fit=cover,w=1024,h=512,gravity=0.259x0.103/https://assets.about.me/background/users/a/d/e/adelnehikhare_1625657467_481.jpg"),
                    fit: BoxFit.cover

                  ),
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
              SizedBox(height: 30,),
              Align(
                alignment: Alignment.center,
                child: Text("Designed by Adel Nehikhare"),
              )
            ],
          ),
        ),
      )
    );
  }
}

Widget promoCard(image){

  return AspectRatio(
    aspectRatio: 2.62/3,
    child: Container(
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(image)
        )
      ),
      child: Text(""),
    ),
  );

}