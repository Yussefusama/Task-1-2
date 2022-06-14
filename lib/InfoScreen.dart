
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text('اعضاء هيئة التدرس'),



      ),
        drawer: Drawer(
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
                onTap: (){},
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

    body: Padding(

          padding: const EdgeInsets.all(20.0),
          child:
          SingleChildScrollView(
            child: Container(
              width: double.infinity,
              child: Column(
                  children:[

                  CircleAvatar(
                    radius: 60.0,
                    backgroundImage: NetworkImage('https://image.freepik.com/free-icon/important-person_318-10744.jpg?w=740'),
                  ),
                   Text('د/محمد خالد'),
                   Text('هندسة شبكات'),
                  SizedBox(height: 15),
                  CircleAvatar(radius: 60.0,
                    backgroundImage: NetworkImage('https://image.freepik.com/free-icon/important-person_318-10744.jpg?w=740'),

                  ),
                  Text('د/محمد خالد'),
                  Text('هندسة شبكات'),
                  SizedBox(height:15),
                  CircleAvatar(
                    radius: 60.0,
                    backgroundImage: NetworkImage('https://image.freepik.com/free-icon/important-person_318-10744.jpg?w=740'),
                  ),
                  Text('د/محمد خالد'),
                  Text('هندسة شبكات'),
                  SizedBox(height:15),
                  CircleAvatar(
                    radius: 60.0,
                    backgroundImage: NetworkImage('https://image.freepik.com/free-icon/important-person_318-10744.jpg?w=740'),
                  ),
                  Text('د/محمد خالد'),
                  Text('هندسة شبكات'),
                    SizedBox(height:15),
                    CircleAvatar(
                      radius: 60.0,
                      backgroundImage: NetworkImage('https://image.freepik.com/free-icon/important-person_318-10744.jpg?w=740'),
                    ),
                    Text('د/محمد خالد'),
                    Text('هندسة شبكات'),
                    SizedBox(height:15),
                    CircleAvatar(
                      radius: 60.0,
                      backgroundImage: NetworkImage('https://image.freepik.com/free-icon/important-person_318-10744.jpg?w=740'),
                    ),
                    Text('د/محمد خالد'),
                    Text('هندسة شبكات'),






                  ],
              ),
            ),
          )

      ));

  }
}
