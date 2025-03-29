import 'package:flutter/material.dart';
import 'package:fresh_basket/wigets/productcard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, String>> Exclusiveoffer = [
    {
      "imageUrl": "https://www.pngmart.com/files/1/Banana-PNG.png",
      "name": "Organic Banana",
      "desc":"7pcs,priceg",
      "price": "2.99"
    },
    {
      "imageUrl": "https://www.pngkey.com/png/full/932-9328480_apples-png-image-red-apple-fruit.png",
      "name": "Red Apple",
      "desc":"1kg ,priceg",
      "price": "3.49"
    },
    {
      "imageUrl": "http://www.pngall.com/wp-content/uploads/2016/05/Strawberry-Download-PNG.png",
      "name": "Strawberries",
      "desc":"12pcs,priceg",
      "price": "5.99"
    },
    {
      "imageUrl": "https://purepng.com/public/uploads/large/purepng.com-mangomangofruithalvedfrontalfullsweetfresh-481521564634qp959.png",
      "name": "Mangos",
      "desc":"2pcs,priceg",
      "price": "4.56"
    },
    {
      "imageUrl": "https://www.nicepng.com/png/full/244-2446176_broiler-chicken-png.png",
      "name": "Boiler Chicken",
      "desc":"1kg,priceg",
      "price": "9.36"
    },
  ];

  final List<Map<String, String>> BestSelling = [
    {
      "imageUrl": "https://www.traderjoes.com/content/dam/trjo/products/m20702/91328.png/jcr:content/renditions/cq5dam.web.1280.1280",
      "name": "Bell pepper Red",
      "desc":"1kg,priceg",
      "price": "4.99"
    },
    {
      "imageUrl": "https://static.vecteezy.com/system/resources/previews/033/303/216/non_2x/ginger-with-ai-generated-free-png.png",
      "name": "Ginger",
      "desc":"250gm ,priceg",
      "price": "1.49"
    },
    {
      "imageUrl": "https://www.pngall.com/wp-content/uploads/8/Red-Chilli-Pepper-PNG-Download-Image.png",
      "name": "chilies",
      "desc":"12pcs,priceg",
      "price": "2.9"
    },
    {
      "imageUrl": "https://www.pngkey.com/png/full/253-2534384_fresh-capsicum-bell-pepper-with-scientific-name.png",
      "name": "Capsicum",
      "desc":"2pcs,priceg",
      "price": "7.06"
    },
    {
      "imageUrl": "http://pluspng.com/img-png/eggplant-png-image-900.png",
      "name": "Brinjal",
      "desc":"1kg,priceg",
      "price": "3.36"
    },
  ];

  final List<Map<String, String>> Others = [
    {
      "imageUrl": "https://www.pngplay.com/wp-content/uploads/1/Beef-PNG-Royalty-Free-Image.png",
      "name": "Beef Bone",
      "desc":"1kg,priceg",
      "price": "7.99"
    },
    {
      "imageUrl": "https://www.nicepng.com/png/full/244-2446176_broiler-chicken-png.png",
      "name": "Boiler Chicken",
      "desc":"1kg,priceg",
      "price": "9.36"
    },
    {
      "imageUrl": "https://clipground.com/images/seafood-png-6.png",
      "name": "Fish",
      "desc":"1kg,priceg",
      "price": "8.20"
    },
    {
      "imageUrl": "https://static.vecteezy.com/system/resources/thumbnails/042/169/513/small_2x/ai-generated-3d-rendering-of-a-mutton-or-beef-raw-meet-on-transparent-background-ai-generated-png.png",
      "name": "lamb chop",
      "desc":"1kg,priceg",
      "price": "5.68"
    },



  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.network(
          'https://www.pngarts.com/files/6/Vector-Carrot-PNG-Photo.png',
          height: 35,
          width: 35,
        ),
        centerTitle: true,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [ Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on, color: Colors.grey[800], size: 30),
                  Text(
                    "Dhaka, Banassre",
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.grey[600]),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.brown[700]),
                    SizedBox(width: 5),
                    Text(
                      "Search Store",
                      style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Image.asset('assets/fresh.png', width: 600),
              SizedBox(height: 20),
              Row(
                children: [
                  Text("Exclusive Offer", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Spacer(),
                  Text("See all", style: TextStyle(color: Colors.green, fontSize: 15)),
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 240,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Exclusiveoffer.length,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      imageUrl: Exclusiveoffer[index]['imageUrl']!,
                      name: Exclusiveoffer[index]['name']!,
                      desc: Exclusiveoffer[index]['desc']!,
                      price: Exclusiveoffer[index]['price']!,
                    );
                  },
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text("Best Selling", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Spacer(),
                  Text("See all", style: TextStyle(color: Colors.green, fontSize: 15)),
                ],
              ),
              SizedBox(height:  10,),
              SizedBox(
                height: 240,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: BestSelling.length,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      imageUrl: BestSelling[index]['imageUrl']!,
                      name: BestSelling[index]['name']!,
                      desc: BestSelling[index]['desc']!,
                      price: BestSelling[index]['price']!,
                    );
                  },
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text("Groceries", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Spacer(),
                  Text("See all", style: TextStyle(color: Colors.green, fontSize: 15)),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 250,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),
                        color: Colors.orange[100],),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network("https://img3.exportersindia.com/product_images/bc-full/dir_177/5280689/pulses-1508240215-3402921.png",
                          height: 100,
                            width: 100,),
                        ),
                        Text("Pulses",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),)
                      ],
                      ),
                    ),

                    Container(
                      height: 100,
                      width: 250,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),
                        color: Colors.greenAccent[100],),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network("https://pluspng.com/img-png/sack-of-rice-png-rice-wholesale-price-rice-wholesale-price-suppliers-and-manufacturers-at-alibaba-com-400.png",
                            height: 100,
                            width: 100,),
                        ),
                        Text("Rice",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),)
                      ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 250,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),
                        color: Colors.brown[100],),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network("https://www.pngall.com/wp-content/uploads/5/Nilgiri-Oolong-Tea-Leaf-PNG-Free-Download.png",
                            height: 100,
                            width: 100,),
                        ),
                        Text("Tea Powder",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),)
                      ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 250,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),
                        color: Colors.blueAccent[100],),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network("https://static.vecteezy.com/system/resources/previews/032/746/910/non_2x/spice-ingredients-transparent-background-ai-generative-free-png.png",
                            height: 100,
                            width: 100,),
                        ),
                        Text("Spices ",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),)
                      ],
                      ),
                    ),
                  ],
                ),

              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 240,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Others.length,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      imageUrl: Others[index]['imageUrl']!,
                      name: Others[index]['name']!,
                      desc: Others[index]['desc']!,
                      price: Others[index]['price']!,
                    );
                  },
                ),
              ),
            ],
          ),
        ),

    ],
      ),
    );
  }
}
