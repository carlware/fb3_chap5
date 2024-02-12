import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final double height= MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFffffff),
      body: Container(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height:height*0.04),
              Text("Here to Get", style: TextStyle(fontSize: 30, color:Color(0xFF363f93)),),
              Text("Welcomed !", style: TextStyle(fontSize: 30, color:Color(0xFF363f93)),),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter your name"
                ),
                validator: (value){
                  if(value!.isEmpty || !RegExp(r'^[a-z A-Z]').hasMatch(value!)) {
                    return "Enter correct name";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height:height*0.04),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Enter your phone"
                ),
                validator: (value){
                  if(value!.isEmpty || !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$').hasMatch(value!)) {
                    return "Enter correct phone";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height:height*0.04),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Enter your email"
                ),
                validator: (value){
                  if(value!.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value!)) {
                    return "Enter correct email";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height:height*0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sign up", style: TextStyle(fontSize: 22, color: Colors.blue),),
                  IconButton(
                      onPressed: () {
                        if(formKey.currentState!.validate()) {
                          print("valid");
                        } else {
                          print("invalid");
                        }
                      },
                      icon: Icon(Icons.arrow_right_outlined),
                  )
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
