import 'package:counter_app/screens/admin/admin_menu.dart';
import 'package:counter_app/screens/user/checkin_checkout.dart';
import 'package:flutter/material.dart';

class MyAppHome extends StatefulWidget {
  const MyAppHome({super.key});

  @override
  State<MyAppHome> createState() => _MyAppHomeState();
}

class _MyAppHomeState extends State<MyAppHome> {
  bool isPasswordHidden = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Widget spacing(double height) {
    return SizedBox(
      height: height,
    );
  }

// List<String> email = [];
// List<String> password = [];
  Future<void> _signUp() async {
    // final prefs = await SharedPreferences.getInstance();
    // await prefs.setString('email', emailController.text);
    // await prefs.setString('password', passwordController.text);
    // await prefs.setStringList('email', []);
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => const NextPage()),
    // );
  }

  Future<void> _signIn() async {
//     Register newUser = Register(
// username: emailController.text,
// password: passwordController.text
//    );
//    ApiService apiService = ApiService();
//    apiService.signInUser(context,  newUser);
    // final prefs = await SharedPreferences.getInstance();
    // String? storedEmail = prefs.getString('email');
    // String? storedPassword = prefs.getString('password');
    // // List<stored> = prefs.getStringList(key);

    // if (storedEmail == emailController.text && storedPassword == passwordController.text) {
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (context) => const NextPage()),
    //   );

    // } else {
    //   // Show an error message
    // showDialog(
    //   context: context,
    //                 builder: (BuildContext context) {
    //     return AlertDialog(
    //       title: const Text('Error'),
    //       content: const Text('Invalid email or password'),
    //       actions: [
    //         TextButton(
    //           onPressed: () => Navigator.pop(context),
    //           child: const Text('OK'),
    //         ),
    //       ],
    //     );
    //   },
    // );
    // }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              image: AssetImage("lib/assets/download.jpg"),
              fit: BoxFit.fill,
            )),
            child: Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.network(
                  //   "https://cdn-icons-png.flaticon.com/512/7922/7922264.png",
                  //   width: 100,
                  //   height: 100,
                  // ),

                  const Text(
                    "STEMLAND",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  TextButton(
                    onPressed: () {
                      emailController.clear();
                      passwordController.clear();
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
                                            "lib/assets/download1.jpg"),
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
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "ADMIN",
                                              style: TextStyle(
                                                color: Color(0xffffffff),
                                                fontSize: 20.0,
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            "Username",
                                            style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 15.0,
                                            ),
                                          ),
                                          Container(
                                            width: 200,
                                            height: 80,
                                            child: TextField(
                                              controller: emailController,
                                              style: const TextStyle(
                                                  color: Colors.white),
                                              decoration: InputDecoration(
                                                suffixIcon: const Icon(
                                                  Icons.person,
                                                  color: Colors.white,
                                                ),
                                                hintText: "Username",
                                                hintStyle: const TextStyle(
                                                    color: Colors.white),
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
                                              color: Color(0xffffffff),
                                              fontSize: 15.0,
                                            ),
                                          ),
                                          Container(
                                            width: 200,
                                            height: 80,
                                            child: TextField(
                                              controller: passwordController,
                                              obscureText: true,
                                              style: const TextStyle(
                                                  color: Colors.white),
                                              decoration: InputDecoration(
                                                suffixIcon: const Icon(
                                                  Icons.visibility,
                                                  color: Colors.white,
                                                ),
                                                hintText: "**********",
                                                hintStyle: const TextStyle(
                                                    color: Colors.white),
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
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.push<void>(
                                                context,
                                                MaterialPageRoute<void>(
                                                  builder:
                                                      (BuildContext context) =>
                                                          const MenuPage(),
                                                ),
                                              );
                                            },
                                            style: ElevatedButton.styleFrom(
                                              // primary: Colors.white,
                                              // onPrimary: Colors.black,
                                              shape:
                                                  const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(20.0),
                                                ),
                                              ),
                                            ),
                                            child: const Text(
                                              "SIGN IN",
                                              style: TextStyle(fontSize: 20.0),
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
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        border: Border.all(color: Colors.red, width: 2.0),
                      ),
                      child: const Center(
                        child: Text(
                          "ADMIN",
                          style: TextStyle(color: Colors.red, fontSize: 20.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  TextButton(
                    onPressed: () {
                      emailController.clear();
                      passwordController.clear();
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
                            child: SizedBox(
                              height: 400, // Adjusted height for signup
                              child: Center(
                                child: Container(
                                  width: double.maxFinite,
                                  height: double.maxFinite,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "lib/assets/download1.jpg"),
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
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "USER",
                                            style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 20.0,
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          "Username",
                                          style: TextStyle(
                                            color: Color(0xffffffff),
                                            fontSize: 15.0,
                                          ),
                                        ),
                                        Container(
                                          width: 200,
                                          height: 80,
                                          child: TextField(
                                            controller: emailController,
                                            style: const TextStyle(
                                                color: Colors.white),
                                            decoration: InputDecoration(
                                              suffixIcon:
                                                  const Icon(Icons.person),
                                              hintText: "Username",
                                              hintStyle: const TextStyle(
                                                  color: Colors.white),
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 8.0),
                                        const Text(
                                          "Password",
                                          style: TextStyle(
                                            color: Color(0xffffffff),
                                            fontSize: 15.0,
                                          ),
                                        ),
                                        Container(
                                          width: 200,
                                          height: 80,
                                          child: TextField(
                                            controller: passwordController,
                                            obscureText: isPasswordHidden,
                                            style: const TextStyle(
                                                color: Colors.white),
                                            decoration: InputDecoration(
                                              suffixIcon: const Icon(
                                                Icons.visibility,
                                                color: Colors.white,
                                              ),
                                              hintText: "**********",
                                              hintStyle: const TextStyle(
                                                  color: Colors.white),
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(15.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 10.0),
                                        ElevatedButton(
                                          onPressed: (){
                                          Navigator.push<void>(
    context,
    MaterialPageRoute<void>(
      builder: (BuildContext context) => const CheckInCheckOutProduct(),
    ),
  );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            // primary: Colors.white,
                                            // onPrimary: Colors.black,
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(20.0),
                                              ),
                                            ),
                                          ),
                                          child: const Text(
                                            "SIGN IN",
                                            style: TextStyle(fontSize: 20.0),
                                          ),
                                        ),
                                        const SizedBox(height: 20.0),
                                      ],
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
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        border: Border.all(color: Colors.red, width: 2.0),
                      ),
                      child: const Center(
                        child: Text(
                          "USER",
                          style: TextStyle(color: Colors.red, fontSize: 20.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 100.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
