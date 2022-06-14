import 'package:first_flutter/InfoScreen.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController =TextEditingController();

  var passwordController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,),),
            DrawerHeader(
              child:
              Image.network('https://media.istockphoto.com/photos/group-of-people-in-graduation-caps-and-gowns-picture-id1319965440'),),
            ListTile(
              title: Text('Home',),
              trailing: Icon(Icons.home,),
              onTap: (){
                Navigator.push(context,MaterialPageRoute<void>(builder: (BuildContext)=> HomeScreen()));
                },
            ),
            ListTile(
              title: Text('MyAccount'),
              trailing: Icon(Icons.account_box_outlined,),
              onTap: (){},
            ),
            ListTile(
              title: Text('Settings'),
              trailing: Icon(Icons.settings,),
              onTap: (){},
            ),
            ListTile(
              title: Text('EXIT',),
              trailing: Icon(Icons.exit_to_app_rounded,),
              onTap: (){},
            )

          ],
        ),
      ),

      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
        body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Icon(Icons.person,),
              Text('Login',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),),
              SizedBox(
                height: 50.0 ,
              ),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (String value){
                  print(value);
                },

                decoration: InputDecoration(
                  labelText: 'Email or code',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.email_rounded,
                  )

                ),

              ),
              SizedBox(
                height: 20.0 ,
              ),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                onFieldSubmitted: (String value){
                  print(value);
                },

                decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.lock),
                    suffixIcon: Icon(
                      Icons.remove_red_eye_outlined
                    )

                ),

              ),
              SizedBox(
                height: 25.0 ,
              ),
              Container(
                width: double.infinity,
                color: Colors.blue,
                child: MaterialButton(
                    onPressed: (){
                      print(emailController.text);
                      print(passwordController.text);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InfoScreen(),
                      ),
                      );
                      },
                  child: Text('Login'),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text
                    ('Don\'t have an account?',
                    style: TextStyle(
                      fontSize: 10.0,),),
                  TextButton(onPressed:(){}, child: Text('Register now'),)],
              )




            ],
          ),
        ),
      ),
    );


  }
}






