import 'package:flutter/material.dart';
import 'package:fresh_basket/Pages/productpage.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String desc;
  final String price;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.desc,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to ProductPage and pass product details
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductPage(
              imageUrl: imageUrl,
              name: name,
              desc: desc,
              price: price,
            ),
          ),
        );
      },
      child: Container(
        width: 150,


        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
    border: Border.all(
    color: Colors.grey.shade300,  // Border color
    width: 2,
    ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.grey.shade100),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Center(
                child: Image.network(imageUrl, height: 100,width: 100,
                    fit: BoxFit.contain,
                  alignment: Alignment.center,),
              ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
              child: Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 17),
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
              child: Text(desc,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight:FontWeight.bold,
              ),),
            ),
            SizedBox(height:10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "\$$price     ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                    fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,0 ,10, 0),
                  child: Positioned(
                    bottom: 8,
                    left: 8,
                    child: SizedBox(
                      height: 40,
                      width: 40,
                      child: FloatingActionButton(
                        onPressed: () {},
                        elevation: 0,
                        highlightElevation: 0,
                        backgroundColor: Colors.green,
                        child: Icon(Icons.add_outlined
                            , size: 20,
                        color: Colors.white,), 
                      ),
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),

      ),
    );
  }
}
