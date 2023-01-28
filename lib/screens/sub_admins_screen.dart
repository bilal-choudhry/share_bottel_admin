import 'package:flutter/material.dart';
import 'package:share_bottel_admin/screens/add_new_subadmin_screen.dart';
import 'package:share_bottel_admin/screens/home_page_screen.dart';
import 'package:share_bottel_admin/screens/sub_admins_details_screen.dart';

class SubAdminsScreen extends StatefulWidget {
  @override
  _SubAdminsScreenState createState() => _SubAdminsScreenState();
}

class _SubAdminsScreenState extends State<SubAdminsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sub Admins",style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20,
        ),),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(_)
            {
              return HomePageScreen();
            },

            ));
          },
        ),
        elevation: 1,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search), color: Colors.black,)
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          GestureDetector(
            child: ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(_)
                {
                  return SubAdminsDetailsScreen();
                },

                ));
              },
              title: Text("Jacob"),
              subtitle: Text("abc@email.com"),
              trailing: IconButton(onPressed: (){},
                icon: Icon(Icons.arrow_forward_ios),color: Colors.black,),

            ),
          ),
          Divider(
            height: 10,
            thickness: 0.3,
            color: Colors.grey,
          ),GestureDetector(
            child: ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(_)
                {
                  return SubAdminsDetailsScreen();
                },

                ));
              },
              title: Text("Jacob"),
              subtitle: Text("abc@email.com"),
              trailing: IconButton(onPressed: (){},
                icon: Icon(Icons.arrow_forward_ios),color: Colors.black,),

            ),
          ),
          Divider(
            height: 10,
            thickness: 0.3,
            color: Colors.grey,
          ),GestureDetector(
            child: ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(_)
                {
                  return SubAdminsDetailsScreen();
                },

                ));
              },
              title: Text("Jacob"),
              subtitle: Text("abc@email.com"),
              trailing: IconButton(onPressed: (){},
                icon: Icon(Icons.arrow_forward_ios),color: Colors.black,),

            ),
          ),
          Divider(
            height: 10,
            thickness: 0.3,
            color: Colors.grey,
          ),GestureDetector(
            child: ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(_)
                {
                  return SubAdminsDetailsScreen();
                },

                ));
              },
              title: Text("Jacob"),
              subtitle: Text("abc@email.com"),
              trailing: IconButton(onPressed: (){},
                icon: Icon(Icons.arrow_forward_ios),color: Colors.black,),

            ),
          ),
          Divider(
            height: 10,
            thickness: 0.3,
            color: Colors.grey,
          ),GestureDetector(
            child: ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(_)
                {
                  return SubAdminsDetailsScreen();
                },

                ));
              },
              title: Text("Jacob"),
              subtitle: Text("abc@email.com"),
              trailing: IconButton(onPressed: (){},
                icon: Icon(Icons.arrow_forward_ios),color: Colors.black,),

            ),
          ),
          Divider(
            height: 10,
            thickness: 0.3,
            color: Colors.grey,
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black, onPressed: (
          ) {
        Navigator.push(context, MaterialPageRoute(builder:(_)
        {
          return AddNewSubadminScreen();
        },

        ));
      },
        child: Icon(Icons.add, color: Colors.white,),

      ),
    );
  }
}
