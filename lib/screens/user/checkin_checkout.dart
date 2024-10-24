import 'package:flutter/material.dart';
import 'package:barcode_scan2/barcode_scan2.dart';

class CheckInCheckOutProduct extends StatefulWidget {
  const CheckInCheckOutProduct({super.key});

  @override
  State<CheckInCheckOutProduct> createState() => _CheckInCheckOutProductState();
}

class _CheckInCheckOutProductState extends State<CheckInCheckOutProduct> {
  TextEditingController aboutstemland = TextEditingController();
  TextEditingController visitorname = TextEditingController();
  TextEditingController organisationname = TextEditingController();
  String barcode = "";
    Future scanBarcode() async {
    try {
      var result = await BarcodeScanner.scan();
      setState(() {
        barcode = result.rawContent.isEmpty ? "Scan failed!" : result.rawContent;
      });
    } catch (e) {
      setState(() {
        barcode = "Error: $e";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffb2854f),
        title: const Center(
          child: Text(
            "Checkin_checkout",
            style: TextStyle(
              color: Color(0xff361b1a),
              fontSize: 20.0,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView( // Prevents overlap when keyboard appears
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height, // Fill available height
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/assets/download4.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "",
                  style: TextStyle(
                    color: Color(0xff361b1a),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Text(
                  "Product ID",
                  style: TextStyle(
                    color: Color(0xff361b1a),
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  width: 200,
                  height: 80,
                  child: TextField(
                    controller: TextEditingController(text: barcode),
                    style: const TextStyle(
                      color: Color(0xff361b1a),
                    ),
                    decoration:  InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff361b1a),
                          width: 2.0,
                        ),
                      ),
                      suffixIcon:TextButton( onPressed: (){
 scanBarcode();
                      },  child: Image(image: AssetImage("lib/assets/scan.png",),height: 20,)),
                      hintStyle: TextStyle(
                        color: Color(0xff361b1a),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 4.0),
                const Text(
                  "Visitor Name",
                  style: TextStyle(
                    color: Color(0xff361b1a),
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  width: 200,
                  height: 80,
                  child: TextField(
                    controller: visitorname,
                   // obscureText: true,
                    style: const TextStyle(
                      color: Color(0xff361b1a),
                    ),
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff361b1a),
                          width: 2.0,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Color(0xff361b1a),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                ),
                 const SizedBox(height: 4.0),
                const Text(
                  "Organisation",
                  style: TextStyle(
                    color: Color(0xff361b1a),
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  width: 200,
                  height: 80,
                  child: TextField(
                    controller: organisationname,
                    obscureText: true,
                    style: const TextStyle(
                      color: Color(0xff361b1a),
                    ),
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff361b1a),
                          width: 2.0,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Color(0xff361b1a),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                ),
                const Text(
                  "About stemland",
                  style: TextStyle(
                    color: Color(0xff361b1a),
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  width: 200,
                  height: 150,
                  child: TextField(
                    maxLines: 10,
                    controller: aboutstemland,
                    style: const TextStyle(
                      color: Color(0xff361b1a),
                    ),
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff361b1a),
                          width: 2.0,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Color(0xff361b1a),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 40,
                      width: 150,
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
                          "CheckIn",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 150,
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
                          "CheckOut",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30.0),
                 Container(
                      height: 40,
                      width: 150,
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
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
