import 'package:flutter/material.dart';

class Furgi extends StatefulWidget {
  const Furgi({Key? key}) : super(key: key);

  @override
  State<Furgi> createState() => _FurgiState();
}

class _FurgiState extends State<Furgi> {
   List<User> li =[];
   List<User> filter=[];
  List<User> list = [
    User('Dr. Ram', ['Nursing', 'Atomology'], false, 'Allergy'),
    User('Dr. Hanuman', ['Nursing', 'Atomology'], true, 'Allergy'),
    User('Dr. Anurag', ['Nursing', 'Atomology'], true, 'alos ci'),
    User('Dr. Indra', ['Nursing', 'Atomology'], true, 'Allergy'),
    User('Dr. Narendra', ['Nursing', 'Atomology'], false, 'Asthma'),
    User('Dr. Neeraj', ['Nursing', 'Atomology'], true, 'Allergy'),
    User('Dr. Nikhil', ['Nursing', 'Atomology'], true, 'Fever'),
    User('Dr. Hemant', ['Nursing', 'Atomology'], true, 'Allergy'),
    User('Dr. Hemraj', ['Nursing', 'Atomology'], false, 'mind'),
    User('Dr. Ravi', ['Nursing', 'Atomology'], false, 'Allergy'),
    User('Dr. Ankit', ['Nursing', 'Atomology'], true, 'Brain'),
    User('Dr. Anil', ['Nursing', 'Atomology'], true, 'Allergy'),
  ];
  MaterialColor checkColor = Colors.green;
  List<User> isTrue = [
    User.name('Fever', false),
    User.name('Cough', false),
    User.name('Mind', false),
    User.name('Tummy', false),
    User.name('Allergy', false),
  ];
  late bool all = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    li = ListOfUser();

  }

  @override
  Widget build(BuildContext context) {
    setState(() {

   filter.length==0? null:  print('${filter.length} ${filter.elementAt(0).specialist}');

    });
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return StatefulBuilder(
                          builder: (BuildContext context,
                                  void Function(void Function()) setState) =>
                              Card(
                                  elevation: 2,
                                  margin: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                          .05,
                                      left: MediaQuery.of(context).size.width *
                                          .3,
                                      bottom:
                                          MediaQuery.of(context).size.height *
                                              .47,
                                      right: MediaQuery.of(context).size.width *
                                          .03),
                                  color: Colors.white,
                                  shape: Border.all(
                                      color: Colors.green,
                                      width: 1,
                                      style: BorderStyle.solid),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CheckboxListTile(
                                        value: isTrue.elementAt(0).isVerified,
                                        onChanged: (values) {
                                          setState(() {
                                            isTrue.elementAt(0).isVerified =
                                                values!;
                                          });
                                        },
                                        title: Text(isTrue.elementAt(0).specialist),
                                        tileColor: Colors.white,
                                        //   checkColor:checkColor ,
                                        shape: ShapeBorder.lerp(
                                            const Border(
                                                bottom: BorderSide(
                                                    color: Colors.black,
                                                    width: 1,
                                                    style: BorderStyle.solid)),
                                            null,
                                            .5),
                                      ),
                                      CheckboxListTile(
                                        value: isTrue.elementAt(1).isVerified,
                                        onChanged: (values) {
                                          setState(() {
                                            isTrue.elementAt(1).isVerified = values!;
                                          });
                                        },
                                        title: Text(isTrue.elementAt(1).specialist),
                                        tileColor: Colors.white,
                                        //   checkColor:checkColor ,
                                        shape: ShapeBorder.lerp(
                                            const Border(
                                                bottom: BorderSide(
                                                    color: Colors.black,
                                                    width: 1,
                                                    style: BorderStyle.solid)),
                                            null,
                                            .5),
                                      ),
                                      CheckboxListTile(
                                        value: isTrue.elementAt(2).isVerified,
                                        onChanged: (values) {
                                          setState(() {
                                            isTrue.elementAt(2).isVerified =
                                                values!;

                                          });
                                        },
                                        title: Text(isTrue.elementAt(2).specialist),
                                        tileColor: Colors.white,
                                        //   checkColor:checkColor ,
                                        shape: ShapeBorder.lerp(
                                            const Border(
                                                bottom: BorderSide(
                                                    color: Colors.black,
                                                    width: 1,
                                                    style: BorderStyle.solid)),
                                            null,
                                            .5),
                                      ),
                                      CheckboxListTile(
                                        value: isTrue.elementAt(3).isVerified,
                                        onChanged: (values) {
                                          setState(() {
                                            isTrue.elementAt(3).isVerified =
                                                values!;
                                          });
                                        },
                                        title: Text(isTrue.elementAt(3).specialist),
                                        tileColor: Colors.white,
                                        //   checkColor:checkColor ,
                                        shape: ShapeBorder.lerp(
                                            const Border(
                                                bottom: BorderSide(
                                                    color: Colors.black,
                                                    width: 1,
                                                    style: BorderStyle.solid)),
                                            null,
                                            .5),
                                      ),
                                      CheckboxListTile(
                                        value: isTrue.elementAt(4).isVerified,
                                        onChanged: (values) {
                                          setState(() {
                                            isTrue.elementAt(4).isVerified =
                                                values!;
                                          });
                                        },
                                        title: Text(isTrue.elementAt(4).specialist),
                                        tileColor: Colors.white,
                                        //   checkColor:checkColor ,
                                        shape: ShapeBorder.lerp(
                                            const Border(
                                                bottom: BorderSide(
                                                    color: Colors.black,
                                                    width: 1,
                                                    style: BorderStyle.solid)),
                                            null,
                                            .5),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          var result = isTrue.where((element) =>
                                              element.isVerified == true);
                                          if (result.isEmpty) {
                                            all = true;
                                          } else {

                                            all = false;
                                          }
                                          filter=ListOfFilter(result);
                                          li = ListOfUser();
                                          Navigator.pop(context);
                                        },
                                        style: const ButtonStyle(
                                            alignment: Alignment.center),
                                        child: const Text(
                                          'Apply',
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                    ],
                                  )),
                        );
                      });
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(11),
                    border: Border.all(
                        color: Colors.black,
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Filter',
                        style: TextStyle(fontSize: 20),
                      ),
                      Icon(
                        Icons.filter_alt,
                        size: 24,
                      )
                    ],
                  ),
                ),
              ),
              li.isNotEmpty
                  ? ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: li.length,
                      itemBuilder: (context, index) {
                        User user = li.elementAt(index);
                        return CustomUser(user);
                      },
                    )
                  : const Center(
                      child: Text('No Result Found'),
                    )
            ],
          ),
        ),
      ),
    );
  }

 List<User> ListOfFilter(Iterable<User> result){
   List<User> filter=[];
    setState(() {
      for(User us in result){
        filter.add(us);
      }
    });

    return filter;
 }

  List<User> ListOfUser() {
    List<User> li = [];
    setState(() {
      for (User user in list) {
        if (user.isVerified) {
          if (all) {
            li.add(user);
          } else {
            for(User u in filter) {
              print(u.specialist +user.specialist);
              if (u.specialist.toLowerCase().contains(user.specialist.toLowerCase())) {
                  li.add(user);
              }
            }
          }
        }
      }
    });

    return li;
  }

  CheckboxListTile CustomCheckBox(bool value, String title, int index) {
    return CheckboxListTile(
      value: value,
      onChanged: (values) {
        setState(() {
          value = values!;
          isTrue.elementAt(index).isVerified = values;
        });
      },
      title: Text(title),
      tileColor: Colors.white,
      //   checkColor:checkColor ,
      shape: ShapeBorder.lerp(
          const Border(
              bottom: BorderSide(
                  color: Colors.black, width: 1, style: BorderStyle.solid)),
          null,
          .5),
    );
  }

  Widget CustomUser(User user) {
    return Card(
      margin: EdgeInsets.only(left: 50, right: 50, bottom: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(user.name),
          Text(user.qualification
              .toString()
              .replaceAll(RegExp(r'[]', dotAll: true), '')),
          Text(user.specialist),
        ],
      ),
    );
  }
}

class User {
  late String name;
  late List<String> qualification;
  late bool isVerified;
  late String specialist;

  User(this.name, this.qualification, this.isVerified, this.specialist);

  User.name( this.specialist,this.isVerified);
}
