
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {

  MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final double _textSize = 18 ;
  final double _iconSize = 27 ;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20,right: 20,top: 40,bottom: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                    Text('Ramesh',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green)),
                    Icon(Icons.edit,size: 25,color: Colors.grey),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              height: 70,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                border: const Border(
                    top: BorderSide(color: Colors.black26,width: 0.8),
                    bottom: BorderSide(color: Colors.black26,width: 0.8))
              ),
              child: Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 10)),
                  const Icon(CupertinoIcons.speaker_3,size: 45,color: Colors.deepPurple),
                  const SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Refer & Earn DocsApp Cash worth',style: TextStyle(fontSize: 12)),
                      Text('Rs. 100',style: TextStyle(fontSize: 30,color: Colors.purple,fontWeight: FontWeight.bold),)
                    ],
                  )
                ],
              ),
            ),
           ListTile(
              leading:  Icon(Icons.person,color: Colors.red,size: _iconSize,),
              title:  Text('Profile', style: TextStyle(fontSize: _textSize),),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
              },
            ),
            ListTile(
              leading:  Icon(Icons.device_thermostat,color: Colors.green,size: _iconSize,),
              title:  Text('My Doctors', style: TextStyle(fontSize: _textSize),),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
              },
            ),
            ListTile(
              leading:  Icon(Icons.psychology,color: Colors.pink,size: _iconSize,),
              title:  Text('Find Doctor ', style: TextStyle(fontSize: _textSize),),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
              },
            ),
            ListTile(
              leading:  Icon(Icons.folder,color: Colors.blue,size: _iconSize,),
              title:  Text('Terms & Conditions', style: TextStyle(fontSize: _textSize),),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
              },
            ),
            ListTile(
              leading:  Icon(Icons.headset_mic_outlined,color: Colors.yellow,size: _iconSize,),
              title:  Text('Help & Support ', style: TextStyle(fontSize: _textSize),),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
              },
            ),
            ListTile(
              leading:  Icon(Icons.share,color: Colors.brown,size: _iconSize,),
              title:  Text('Share App', style: TextStyle(fontSize: _textSize),),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
              },
            ),
            ListTile(
              leading:  Icon(Icons.logout,color: Colors.purple,size: _iconSize,),
              title:  Text('Log Out', style: TextStyle(fontSize: _textSize),),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
              },
            ),

          ],
        ));
  }
}
