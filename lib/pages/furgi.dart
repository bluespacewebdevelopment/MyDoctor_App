import 'package:flutter/material.dart';
class Furgi extends StatefulWidget {
  const Furgi({Key? key}) : super(key: key);

  @override
  State<Furgi> createState() => _FurgiState();
}

class _FurgiState extends State<Furgi> {
  bool name=true,email=false,pass=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(


        child: Center(
          child: IconButton(

            icon: Icon(Icons.ac_unit),
           onPressed: () {
            Dialog(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Checkbox(value: name, onChanged: (name){
                    setState(() {
                      this.name=name!;
                    });
                  }),

                  Checkbox(value: email, onChanged: (email){
                    setState(() {
                      this.email=email!;
                    });
                  })
                ],

              ),
           );
          },

          ),
        ) ,
      ),
    );
  }
}
