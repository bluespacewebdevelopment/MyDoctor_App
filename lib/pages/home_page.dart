import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor_app/pages/furgi.dart';
import 'package:doctor_app/utils/doctor_profile.dart';
import 'package:doctor_app/utils/drawer.dart';
import 'package:doctor_app/utils/home.dart';
import 'package:flutter/material.dart';

import 'bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int selectedItem = 0;
  List<User> li = [];
  List<User> filter = [];
  List<User> list = [];
  MaterialColor checkColor = Colors.green;
  List<User> isTrue = [
    User.name('Fever', false),
    User.name('Cough', false),
    User.name('Mind', false),
    User.name('Tummy', false),
    User.name('Allergy', false),
  ];
  late bool all = true;
  var instance = FirebaseFirestore.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(() {
      list = Doctor_Detail();
      li = ListOfUser();
    });
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      li = ListOfUser();
    });
    return Scaffold(
      drawer: const MyDrawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            elevation: 2,
            expandedHeight: 150,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              title: Text(
                'Docs App',
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              background: Image.asset(
                'assets/images/doctors.png',
                fit: BoxFit.fill,
              ),
            ),
            actions: [
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
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
                                        top:
                                            MediaQuery.of(context).size.height *
                                                .05,
                                        left:
                                            MediaQuery.of(context).size.width *
                                                .3,
                                        bottom:
                                            MediaQuery.of(context).size.height *
                                                .47,
                                        right:
                                            MediaQuery.of(context).size.width *
                                                .03),
                                    color: Colors.white,
                                    shape: Border.all(
                                        color: Colors.green,
                                        width: 1,
                                        style: BorderStyle.solid),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                          title: Text(
                                              isTrue.elementAt(0).specialist),
                                          tileColor: Colors.white,
                                          //   checkColor:checkColor ,
                                          shape: ShapeBorder.lerp(
                                              const Border(
                                                  bottom: BorderSide(
                                                      color: Colors.black,
                                                      width: 1,
                                                      style:
                                                          BorderStyle.solid)),
                                              null,
                                              .5),
                                        ),
                                        CheckboxListTile(
                                          value: isTrue.elementAt(1).isVerified,
                                          onChanged: (values) {
                                            setState(() {
                                              isTrue.elementAt(1).isVerified =
                                                  values!;
                                            });
                                          },
                                          title: Text(
                                              isTrue.elementAt(1).specialist),
                                          tileColor: Colors.white,
                                          //   checkColor:checkColor ,
                                          shape: ShapeBorder.lerp(
                                              const Border(
                                                  bottom: BorderSide(
                                                      color: Colors.black,
                                                      width: 1,
                                                      style:
                                                          BorderStyle.solid)),
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
                                          title: Text(
                                              isTrue.elementAt(2).specialist),
                                          tileColor: Colors.white,
                                          //   checkColor:checkColor ,
                                          shape: ShapeBorder.lerp(
                                              const Border(
                                                  bottom: BorderSide(
                                                      color: Colors.black,
                                                      width: 1,
                                                      style:
                                                          BorderStyle.solid)),
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
                                          title: Text(
                                              isTrue.elementAt(3).specialist),
                                          tileColor: Colors.white,
                                          //   checkColor:checkColor ,
                                          shape: ShapeBorder.lerp(
                                              const Border(
                                                  bottom: BorderSide(
                                                      color: Colors.black,
                                                      width: 1,
                                                      style:
                                                          BorderStyle.solid)),
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
                                          title: Text(
                                              isTrue.elementAt(4).specialist),
                                          tileColor: Colors.white,
                                          //   checkColor:checkColor ,
                                          shape: ShapeBorder.lerp(
                                              const Border(
                                                  bottom: BorderSide(
                                                      color: Colors.black,
                                                      width: 1,
                                                      style:
                                                          BorderStyle.solid)),
                                              null,
                                              .5),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            var result = isTrue.where(
                                                (element) =>
                                                    element.isVerified == true);
                                            if (result.isEmpty) {
                                              all = true;
                                            } else {
                                              all = false;
                                            }
                                            filter = ListOfFilter(result);
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
              ),
            ],
          ),
          _buildCard(),
          SliverToBoxAdapter(
            child: Column(
              children: const [
                Divider(
                  thickness: 2,
                  height: 5,
                ),
                Text(
                  "Doctor's Details ",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Lobster-Regular',
                      color: Colors.green),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          DoctorDetails(),
        ],
      ),
      bottomNavigationBar: Bottom_Bar(),
    );
  }

  Widget _buildCard() {
    return SliverToBoxAdapter(
      child: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: isTrue.length,
        primary: false,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          User us = isTrue.elementAt(index);
          return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Home(
                              name: us.specialist,
                            )));
              },
              child: _myCards(us));
        },
      ),
    );
  }

  Widget _myCards(User user) {
    return Card(
      elevation: 10,
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
              image: NetworkImage(
                  'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/317363_1100-800x825.jpg'),
              fit: BoxFit.fill),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            height: 40,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                gradient: LinearGradient(
                  colors: [
                    Colors.purple,
                    Colors.blue.withOpacity(0.5),
                    Colors.red.withOpacity(0.2),
                  ],
                  tileMode: TileMode.mirror,
                  stops: const [0, 1, 2],
                  begin: Alignment.bottomLeft,
                )),
            child: Text(
              user.specialist,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget DoctorDetails() {
    return li.isNotEmpty
        ? SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                User user = li.elementAt(index);
                return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Doctor_Profile()));
                    },
                    child: CustomUser(user));
              },
              childCount: li.length,
            ),
          )
        : SliverGrid(
            delegate: SliverChildBuilderDelegate(childCount: 1,
                (BuildContext context, int index) {
              return Text(
                'No Result Found',
                textAlign: TextAlign.center,
              );
            }),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
          );
  }

  List<User> ListOfFilter(Iterable<User> result) {
    List<User> filter = [];
    setState(() {
      for (User us in result) {
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
            print(user.toString());
            li.add(user);
          } else {
            for (User u in filter) {
              print(u.specialist + user.specialist);
              if (u.specialist
                  .toLowerCase()
                  .contains(user.specialist.toLowerCase())) {
                li.add(user);
              }
            }
          }
        }
      }
    });

    return li;
  }

  Widget CustomUser(User user) {
    return Card(
      shadowColor: Colors.green,
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Contain(
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Flexible(
                fit: FlexFit.loose,
                flex: 3,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://assets.sentinelassam.com/h-upload/2022/08/03/370769-flag.jpg'),
                  radius: 30,
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.black,
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                flex: 2,
                child: Text(
                  user.name,
                  style: const TextStyle(
                      fontSize: 24,
                      fontFamily: 'Lobster-Regular',
                      color: Colors.white),
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                flex: 2,
                child: Text(
                  user.specialist,
                  style: const TextStyle(
                      fontSize: 24,
                      fontFamily: 'Lobster-Regular',
                      color: Colors.white),
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                flex: 4,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: user.qualification
                      .map((e) => Flexible(
                            fit: FlexFit.loose,
                            flex: 2,
                            child: Text(
                              e,
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Lobster-Regular',
                                  color: Colors.white),
                            ),
                          ))
                      .toList(growable: true),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget Contain(Widget widget) {
    return Container(
      padding: EdgeInsets.only(top: 4, bottom: 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          gradient: LinearGradient(
            colors: [
              Colors.purple,
              Colors.blue.withOpacity(0.5),
              Colors.red.withOpacity(0.2),
            ],
            tileMode: TileMode.mirror,
            stops: const [0, 1, 2],
            begin: Alignment.bottomLeft,
          )),
      child: widget,
    );
  }

  List<User> Doctor_Detail() {
    List<User> list = [];

    setState(() {
      instance
          .collection('Doctor')
          .where('isActive', isEqualTo: true)
          .get()
          .then((event) {
        for (var element in event.docs) {
          print(element.get('Qualification'));
          List<String> li = [];
          for (String val in element.get('Qualification')) {
            li.add(val);
          }
          User user = User(element.get('Name'), li, element.get('isActive'),
              element.get('Specialist'));
          list.add(user);
        }
      });
    });

    return list;
  }
}
