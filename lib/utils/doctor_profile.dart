import 'package:flutter/material.dart';

class Doctor_Profile extends StatefulWidget {
  const Doctor_Profile({Key? key}) : super(key: key);

  @override
  State<Doctor_Profile> createState() => _Doctor_ProfileState();
}

class _Doctor_ProfileState extends State<Doctor_Profile>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor Info'),
        surfaceTintColor: Colors.cyan,
      ),
      body: Container(
          color: Colors.white60,
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ListTile(
                  contentPadding: EdgeInsets.all(11),
                  shape: Border(
                      bottom: BorderSide(
                          width: 1,
                          style: BorderStyle.solid,
                          color: Colors.grey)),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://img.freepik.com/free-photo/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg?w=2000"),
                    radius: 50,
                  ),
                  title: Text('Dr. Archana Muralidharan'),
                  subtitle: Text('Ent \n Dr Archana Ent Care Centre'),
                ),
                ListTile(
                  isThreeLine: true,
                  contentPadding: EdgeInsets.all(11),
                  shape: Border(
                      bottom: BorderSide(
                          width: 1,
                          style: BorderStyle.solid,
                          color: Colors.grey)),
                  title: Text('Next Available'),
                  subtitle: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.video_camera_back),
                    tooltip: 'Time',
                  ),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      '400\n Consult Online',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Card(
                  shadowColor: Colors.grey,
                  child: TabBar(
                      labelPadding: const EdgeInsets.only(left: 20, right: 20),
                      overlayColor: MaterialStateProperty.all(Colors.green),
                      controller: tabController,
                      splashBorderRadius:
                          BorderRadius.vertical(top: Radius.circular(5)),
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      isScrollable: false,
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: const [
                        Tab(text: "Places"),
                        Tab(text: "Inspiration"),
                      ]),
                ),
                Expanded(
                  child: SizedBox(
                    height: double.maxFinite,
                    width: double.maxFinite,
                    child: TabBarView(controller: tabController, children: [
                      ListView.builder(
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return const ListTile(
                              shape: Border(
                                  bottom: BorderSide(
                                      width: 1,
                                      style: BorderStyle.solid,
                                      color: Colors.grey)),
                              title: Text('Ent'),
                              subtitle: Text('Speciality'),
                            );
                          }),
                      ListView.builder(
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return const ListTile(
                              shape: Border(
                                  bottom: BorderSide(
                                      width: 1,
                                      style: BorderStyle.solid,
                                      color: Colors.grey)),
                              title: Text('Tata heolso'),
                              subtitle: Text('Clinic'),
                            );
                          }),
                    ]),
                  ),
                ),
              ])),
    );
  }
}
