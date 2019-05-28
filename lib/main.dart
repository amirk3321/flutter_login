import 'package:flutter/material.dart';

void main() => runApp(loginPage());

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Page",
      home: loginComponents(),
    );
  }
} //end loginPage

class loginComponents extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => loginComponentsState();
}

class loginComponentsState extends State<loginComponents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          children: <Widget>[
            SizedBox(height: 50.0),
            Container(width:200,height:200,child: Image.asset('assets/login_icon.png'),),
            SizedBox(height: 70,),
            TextField(decoration: InputDecoration(
              hintText: "Enter Your Name",
              labelText: "Username"
            ),),
            SizedBox(height: 15,),
            TextField(decoration: InputDecoration(
                hintText: "Enter Your Email",
                labelText: "Email"
            ),),
            SizedBox(height: 15,),
            TextField(decoration: InputDecoration(
                hintText: "Enter Your Password",
                labelText: "Password"
            ),),
            SizedBox(height: 15,),
            TextField(decoration: InputDecoration(
                hintText: "Please Confirm Password",
                labelText: "Confirm Password"
            ),),
            ButtonBar(
              alignment:MainAxisAlignment.start ,
              children: <Widget>[
                RawMaterialButton(onPressed: (){},child: Text("Registor",style: TextStyle(color: Colors.white),),fillColor: Colors.green,),
                RawMaterialButton(onPressed: (){},child: Text("Login",style: TextStyle(color: Colors.white),),fillColor: Colors.blue,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
