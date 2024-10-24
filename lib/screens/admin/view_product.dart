import 'package:counter_app/screens/admin/edit_product.dart';
import 'package:flutter/material.dart';

class ViewProduct extends StatefulWidget {
  const ViewProduct({super.key});

  @override
  State<ViewProduct> createState() => _ViewProductState();
}

class _ViewProductState extends State<ViewProduct> {
   final List<String> items = List<String>.generate(10, (index) => "Item $index");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: const Color(0xffb2854f),
        title: const Center(
            child: Text("Products",
                style: TextStyle(
                    color: Color(0xff361b1a),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900))),
      ),
      body: Container(

          width: double.infinity,
          height: MediaQuery.of(context).size.height, // Fill available height
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/assets/download4.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: ListView.builder(
        itemCount: items.length,  // Number of items in the list
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
               decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage("lib/assets/download4.jpg"),
                                fit: BoxFit.fill,
                              ),
                              color: Colors.white, // Background color
                              borderRadius: BorderRadius.circular(
                                  8), // Optional: Rounded corners
                              boxShadow: [
                                const BoxShadow(
                                  color: Colors.black54, // Shadow color
                                  offset: Offset(
                                      10, 10), // Horizontal and vertical offset
                                  blurRadius: 8, // Blur radius
                                  spreadRadius: 5, // Spread radius
                                ),
                              ],
                            ),
              child: ListTile(
                
                leading:const CircleAvatar(
                  radius: 20.0,
                ),  // Optional: Add an icon on the left
                title: const Text("productName"),   // Main content of the tile
                subtitle: const Text('product description}'), // Optional: Add a subtitle
                 trailing: Row(
                  mainAxisSize: MainAxisSize.min,  // Make the Row fit the icons' size
                  children: [
                    IconButton(
                      icon: const Icon(Icons.check, color: Color.fromARGB(255, 3, 98, 6)),
                      onPressed: () {
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        _showDeleteConfirmationDialog(context,items[index]);
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.edit, color: Color.fromARGB(255, 44, 141, 220)),
                      onPressed: () {
                       Navigator.push<void>(
    context,
    MaterialPageRoute<void>(
      builder: (BuildContext context) => const EditProduct(),
    ),
  );
                      },
                    ),
                  ],
                ), // Optional: Add an icon on the right
                onTap: () {
                  // Handle tap on ListTile
                  print('Tapped on ${items[index]}');
                },
              ),
            ),
          );
        },
      ),
      ),
    );
  }
}


 // Function to show the alert dialog
  void _showDeleteConfirmationDialog(BuildContext context, String itemName) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
         contentPadding: EdgeInsets.zero, // Remove default padding to fit the image
          content: Stack(
            children: [
              Container(
                height: 200, // Set height of the alert box
                decoration:  BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/assets/download4.jpg"), // Background image for the alert box
                    fit: BoxFit.cover,
                  ),
                   borderRadius: BorderRadius.circular(25.0),
                ),
              ),
               Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Delete Product",
                style: TextStyle(
                    color: Color(0xff361b1a),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900)),
                  SizedBox(height: 16.0),
                   Text("Are you sure?",
                style: TextStyle(
                    color: Color(0xff361b1a),
                    fontSize: 15.0,fontWeight: FontWeight.w700)),
                   SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("lib/assets/download4.jpg"),
                          fit: BoxFit.fill,
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          const BoxShadow(
                            color: Colors.black54,
                            offset: Offset(10, 10),
                            blurRadius: 8,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("lib/assets/download4.jpg"),
                          fit: BoxFit.fill,
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          const BoxShadow(
                            color: Colors.black54,
                            offset: Offset(10, 10),
                            blurRadius: 8,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          "Confirm",
                          style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

