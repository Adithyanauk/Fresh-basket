import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  final String imageUrl;
  final String name;
  final String desc;
  final String price;

  const ProductPage({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.desc,
    required this.price,
  });

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  int _quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F3F2),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.ios_share_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFF2F3F2),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
            ),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Expanded(
                  child: Center(
                    child: Image.network(
                      widget.imageUrl,
                      height: 250,
                      width: 250,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 6,
                      width: 18,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,

                ),),
                Icon(Icons.favorite_outline_outlined,
                color: Colors.grey[600],
                size: 35,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: Text(widget.desc,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              fontSize: 18,
            ),),
          ),
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Minus Button
            IconButton(
              icon: Icon(Icons.remove, color: Colors.grey, size: 24),
              onPressed: () {
                if (_quantity > 1) {
                  setState(() {
                    _quantity--;
                  });
                }
              },
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                '$_quantity',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            // Plus Button
            IconButton(
              icon: Icon(Icons.add, color: Colors.green, size: 24),
              onPressed: () {
                setState(() {
                  _quantity++;
                });
              },
            ),
          SizedBox(width: 140,),
          Text('\$${widget.price}',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),),
          ],
        ),
      ),
          Divider(height: 30,
            thickness: 1,
            indent: 30,
            endIndent: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("Product Details",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),),
              Icon(Icons.keyboard_arrow_down_rounded,
              size: 30,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: Text("This is the details of the product your gonna buy \nthe product is very good ,fresh , clean and green  \nyou should use this for a healthy diet.",
            style: TextStyle(
              color: Colors.grey[500],
              fontWeight: FontWeight.bold,
            ),),
          ),
          Divider(height: 30,
            thickness: 1,
            indent: 30,
            endIndent: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Nutritions",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),),
                Row(
                  children: [
                    Container(
                      height: 15,
                      width: 35,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[300],
                      ),
                      child: Center(
                        child: Text("  100gr  ",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey[800]
                        ),),
                      ),

                    ),
                    SizedBox(width: 10,),

                    Icon(Icons.arrow_forward_ios_outlined,
                      size: 20,),
                  ],
                )
              ],
            ),
          ),
          Divider(height: 30,
            thickness: 1,
            indent: 30,
            endIndent: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Rewiew",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,

                ),),
                Row(
                  children: [
                    Row(
                      children: List.generate(5, (index) => Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 20,
                      )),
                    ),
                    Icon(Icons.arrow_forward_ios_outlined,
                      size: 20,),
                  ],
                ),

              ],
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: Container(
              height: 40,
              width:350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF53B175),
            ),
              child: Center(child: Text("Add To Basket",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),)),
            ),
          )


        ],
      ),
    );
  }
}
