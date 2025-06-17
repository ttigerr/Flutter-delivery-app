import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/home_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView( // Helps avoid overflow on smaller screens
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // vertical center
                crossAxisAlignment: CrossAxisAlignment.center, // horizontal center
                mainAxisSize: MainAxisSize.min,
                children: [
                  //Logo
                  Image(
                    width: 250,
                    image: NetworkImage("https://1000logos.net/wp-content/uploads/2021/04/Uber-Eats-logo.png"),
                  ),
                  SizedBox(height: 20.0),
                  // Header
                  Text(
                    "Welcome to Uber Eats!",
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Helvetica',
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "We are here to deliver the needs for you",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Helvetica',
                    ),
                  ),
                  SizedBox(height: 30.0),

                  // Form
                  Form(
                    child: Column(
                      children: [
                        // Email
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          autofocus: false,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            hintText: 'Email',
                            contentPadding: EdgeInsets.all(20.0),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0), borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0), borderSide: BorderSide(color: Colors.black)),
                            hintStyle: TextStyle(fontFamily: 'Helvetica'),
                          ),
                          // validator: FormValidator().validateEmail,
                          // onSaved: (String value) {
                          //   _loginData.email = value;
                        ),
                        SizedBox(height: 10.0),

                        // Password
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          autofocus: false,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            hintText: 'Password',
                            contentPadding: EdgeInsets.all(20.0),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0), borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0), borderSide: BorderSide(color: Colors.black)),
                            hintStyle: TextStyle(fontFamily: 'Helvetica'),
                          ),
                          // validator: FormValidator().validateEmail,
                          // onSaved: (String value) {
                          //   _loginData.email = value;
                        ),
                        SizedBox(height: 10.0),
                      ],
                    ),
                  ),

                  // forgot password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Remember me: checkbox and text
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (value){}, fillColor: WidgetStateProperty.all(Colors.black),),
                          Text("Remember me", style: TextStyle(fontFamily: 'Helvetica'),),
                        ],
                      ),
                      // Forgot password; textButton
                      TextButton(onPressed: () {}, child: Text("Forgot password", style: TextStyle(fontFamily: 'Helvetica', color: const Color.fromARGB(255, 122, 121, 121)))),
                    ],
                  ),
                  SizedBox(height: 30.0),

                  // Footer: Button
                  SizedBox(
                    width: 200.0,
                    height: 60.0,
                    // child: ElevatedButton(
                    //   onPressed: () {},
                    //   child: Text("Login"), 
                    // ),
                    child: OutlinedButton(
                      // Navigate to home screen
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()),);
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.black),
                      ), 
                      child: Text(
                        "Login", 
                        style: TextStyle(
                          fontSize: 18.0 ,
                          fontFamily: 'Helvetica', 
                          color: Colors.white, 
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
