import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  void _launcherURL(int value)async{
    String url="";

    if (value==1){
      url= "https://vitbhopal.ac.in/";
    }else if(value==2){
      url= "https://vitbhopal.ac.in/freshers2023/";
    }else if(value==3){
      url= "https://www.google.com/maps/place/VIT+Bhopal+University/@23.0774715,76.8487122,17z/data=!3m1!4b1!4m6!3m5!1s0x397ce9ceaaaaaaab:0xa224b6b82b421f83!8m2!3d23.0774715!4d76.8512871!16s%2Fg%2F11hbgkdndx?entry=ttu";
    }else if(value==4){
      url="https://vit.ac.in/vit-privacy-policy#:~:text=We%20aim%20to%20take%20reasonable,%40vit.ac.in.";
    }

    if ( await launch(url)){
      await launch(url,
        forceSafariVC : true,
        forceWebView: true,
        enableJavaScript: true,

      );
    }else{
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(

        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName:const Text("VIT Bhopal") ,
                  accountEmail: const Text("vitbhopal.ac.in"),
                  currentAccountPicture:new CircleAvatar(
                      backgroundImage: AssetImage("assets/vit_logo.jpeg")
                  ) ,
                )
            ),
            new ListTile(
              title: new Text("VIT Bhopal Site"),
              trailing: new Icon(Icons.web),
              onTap: (){
                _launcherURL(1);
                },
            ),
            Divider(),
            new ListTile(
              title: new Text("VIT Bhopal Time Table"),
              trailing: new Icon(Icons.timer),
              onTap: (){
                _launcherURL(2);
              },
            ),
            Divider(),
            new ListTile(
              title: new Text("VIT Bhopal Location"),
              trailing: new Icon(Icons.map),
              onTap: (){
                _launcherURL(3);
              },
            ),
            Divider(),
            new ListTile(
              title: new Text("VIT Bhopal Privacy Policy"),
              trailing: new Icon(Icons.policy),
              onTap: (){
                _launcherURL(4);
              },
            ),



          ],
        ),
      ),
    );
  }
}