import 'package:counter_app/screens/admin/add_product.dart';
import 'package:counter_app/screens/admin/checkin_checkout.dart';
import 'package:counter_app/screens/admin/view_product.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffb2854f),
        title: Center(
            child: Text("Admin Menu",
                style: TextStyle(
                    color: Color(0xff361b1a),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900))),
      ),
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            // decoration: const BoxDecoration(
            //   gradient: LinearGradient(
            //     colors: [Color(0xff9f1b3a), Color(0xff3f1a3b)],
            //   ),
            // ),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("lib/assets/download4.jpg"),
              fit: BoxFit.fill,
            )),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 100.0, right: 8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (BuildContext context) {
                              return Padding(
                                padding: EdgeInsets.only(
                                  bottom: MediaQuery.of(context)
                                      .viewInsets
                                      .bottom, // Adjust for keyboard
                                ),
                                child: SingleChildScrollView(
                                  child: SizedBox(
                                    height: 400, // Adjusted height for signup
                                    child: Center(
                                      child: Container(
                                        width: double.maxFinite,
                                        height: double.maxFinite,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "lib/assets/download4.jpg"),
                                            fit: BoxFit.fill,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20.0),
                                            topLeft: Radius.circular(20.0),
                                          ),
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0xff9f1b3a),
                                              Color(0xff3f1a3b)
                                            ],
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text("Create User",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff361b1a),
                                                          fontSize: 20.0,
                                                          fontWeight: FontWeight
                                                              .w900))),
                                              const Text(
                                                "Username",
                                                style: TextStyle(
                                                    color: Color(0xff361b1a),
                                                    fontSize: 18.0,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              Container(
                                                width: 200,
                                                height: 80,
                                                child: TextField(
                                                  controller: emailController,
                                                  style: const TextStyle(
                                                    color: Color(0xff361b1a),
                                                  ),
                                                  decoration: InputDecoration(
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Color(
                                                            0xff361b1a), // Border color when focused
                                                        width: 2.0,
                                                      ),
                                                    ),
                                                    hoverColor:
                                                        Color(0xff361b1a),
                                                    suffixIcon: const Icon(
                                                      Icons.person,
                                                      color: Color(0xff361b1a),
                                                    ),
                                                    hintText: "Username",
                                                    hintStyle: const TextStyle(
                                                      color: Color(0xff361b1a),
                                                    ),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(15.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 4.0),
                                              const Text(
                                                "Password",
                                                style: TextStyle(
                                                    color: Color(0xff361b1a),
                                                    fontSize: 18.0,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              Container(
                                                width: 200,
                                                height: 80,
                                                child: TextField(
                                                  controller:
                                                      passwordController,
                                                  obscureText: true,
                                                  style: const TextStyle(
                                                    color: Color(0xff361b1a),
                                                  ),
                                                  decoration: InputDecoration(
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Color(
                                                            0xff361b1a), // Border color when focused
                                                        width: 2.0,
                                                      ),
                                                    ),
                                                    suffixIcon: const Icon(
                                                      Icons.visibility,
                                                      color: Color(0xff361b1a),
                                                    ),
                                                    hintText: "**********",
                                                    hintStyle: const TextStyle(
                                                      color: Color(0xff361b1a),
                                                    ),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(15.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 10.0),
                                              Container(
                                                height: 40,
                                                width: 150,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        "lib/assets/download4.jpg"),
                                                    fit: BoxFit.fill,
                                                  ),
                                                  color: Colors
                                                      .white, // Background color
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8), // Optional: Rounded corners
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors
                                                          .black54, // Shadow color
                                                      offset: Offset(10,
                                                          10), // Horizontal and vertical offset
                                                      blurRadius:
                                                          8, // Blur radius
                                                      spreadRadius:
                                                          5, // Spread radius
                                                    ),
                                                  ],
                                                ),
                                                child: Center(
                                                  child: const Text(
                                                    "SIGN UP",
                                                    style: TextStyle(
                                                        fontSize: 20.0),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          width: 120,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("lib/assets/download4.jpg"),
                              fit: BoxFit.fill,
                            ),
                            color: Colors.white, // Background color
                            borderRadius: BorderRadius.circular(
                                8), // Optional: Rounded corners
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black54, // Shadow color
                                offset: Offset(
                                    10, 10), // Horizontal and vertical offset
                                blurRadius: 8, // Blur radius
                                spreadRadius: 5, // Spread radius
                              ),
                            ],
                          ),
                          child: menuText(
                            firstText: "Create",
                            secondText: "User",
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.push<void>(
    context,
    MaterialPageRoute<void>(
      builder: (BuildContext context) => const AddProduct(),
    ),
  );
                        },
                        child: Container(
                          width: 120,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("lib/assets/download4.jpg"),
                              fit: BoxFit.fill,
                            ),
                            color: Colors.white, // Background color
                            borderRadius: BorderRadius.circular(
                                8), // Optional: Rounded corners
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black54, // Shadow color
                                offset: Offset(
                                    10, 10), // Horizontal and vertical offset
                                blurRadius: 8, // Blur radius
                                spreadRadius: 5, // Spread radius
                              ),
                            ],
                          ),
                          child: menuText(
                            firstText: "Add",
                            secondText: "Product",
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 50.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: (){
                           Navigator.push<void>(
    context,
    MaterialPageRoute<void>(
      builder: (BuildContext context) => const ViewProduct(),
    ),
  );
                          },
                          child: Container(
                            width: 120,
                            height: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("lib/assets/download4.jpg"),
                                fit: BoxFit.fill,
                              ),
                              color: Colors.white, // Background color
                              borderRadius: BorderRadius.circular(
                                  8), // Optional: Rounded corners
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black54, // Shadow color
                                  offset: Offset(
                                      10, 10), // Horizontal and vertical offset
                                  blurRadius: 8, // Blur radius
                                  spreadRadius: 5, // Spread radius
                                ),
                              ],
                            ),
                            child: menuText(
                              firstText: "View",
                              secondText: "Product",
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: (){
                           Navigator.push<void>(
    context,
    MaterialPageRoute<void>(
      builder: (BuildContext context) => const CheckInCheckOutProduct(),
    ),
  );
                          },
                          child: Container(
                            width: 120,
                            height: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("lib/assets/download4.jpg"),
                                fit: BoxFit.fill,
                              ),
                              color: Colors.white, // Background color
                              borderRadius: BorderRadius.circular(
                                  8), // Optional: Rounded corners
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black54, // Shadow color
                                  offset: Offset(
                                      10, 10), // Horizontal and vertical offset
                                  blurRadius: 8, // Blur radius
                                  spreadRadius: 5, // Spread radius
                                ),
                              ],
                            ),
                            child: menuText(
                              firstText: "CheckIN",
                              secondText: "CheckOut",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                    width: 300,
                    height: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("lib/assets/download4.jpg"),
                        fit: BoxFit.fill,
                      ),
                      color: Colors.white, // Background color
                      borderRadius:
                          BorderRadius.circular(8), // Optional: Rounded corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54, // Shadow color
                          offset:
                              Offset(10, 10), // Horizontal and vertical offset
                          blurRadius: 8, // Blur radius
                          spreadRadius: 10, // Spread radius
                        ),
                      ],
                    ),
                    child: Center(
                        child: Text("Logout",
                            style: TextStyle(
                                color: Color(0xff361b1a),
                                fontSize: 20.0,
                                fontWeight: FontWeight.w900))),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class menuText extends StatelessWidget {
  const menuText(
      {super.key, required this.firstText, required this.secondText});
  final String firstText;
  final String secondText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text(firstText,
              style: TextStyle(
                  color: Color(0xff361b1a),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13.0),
          child: Text(secondText,
              style: TextStyle(
                  color: Color(0xff361b1a),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900)),
        ),
      ],
    );
  }
}
