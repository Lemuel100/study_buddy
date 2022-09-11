import 'package:flutter/material.dart';
import 'package:study_buddy/screens/assignment__screen.dart';
import 'package:study_buddy/screens/corse_guide__screen.dart';
import 'package:study_buddy/screens/corse_materials__screen.dart';
import 'package:study_buddy/screens/home__screen.dart';

class CustomSlider extends StatelessWidget {
  final VoidCallback close;
  CustomSlider({super.key, required this.close});

  final List<Map> navList = [
    {
      "icon": Icons.home,
      "title": "Home",
      "route": HomeScreen.routeName,
    },
    {
      "icon": Icons.book,
      "title": "Course Materials",
      "route": CorseMaterials.routeName,
    },
    {
      "icon": Icons.lan_outlined,
      "title": "Course Guide",
      "route": CorseGuid.routeName,
    },
    {
      "icon": Icons.home,
      "title": "Assignments",
      "route": Assignments.routeName,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 3, 68, 121),
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Expanded(
                  child: CircleAvatar(
                      maxRadius: 50,
                      backgroundImage: AssetImage("assets/imgs/img.jpg"))),
              Text(
                "Hey! Dacosta",
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Theme.of(context).scaffoldBackgroundColor),
              )
            ],
          )),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  const Spacer(),
                  ListView.separated(
                      shrinkWrap: true,
                      primary: false,
                      itemBuilder: (context, i) => _navItem(
                          context: context,
                          icon: navList[i]['icon'],
                          title: navList[i]['title'],
                          screen: navList[i]['route']),
                      separatorBuilder: ((context, index) => const Divider(
                            color: Color.fromARGB(255, 9, 99, 173),
                            height: 1,
                          )),
                      itemCount: navList.length),
                  const Spacer(),
                ],
              )),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 9, 99, 173),
                      ),
                      width: 100,
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          "Sign out",
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                              ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                        onTap: close,
                        child: const CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/imgs/splash_three.jpg"),
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ))
        ]),
      )),
    );
  }

  ListTile _navItem(
      {required BuildContext context,
      required IconData icon,
      required String title,
      required String screen}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline6!.copyWith(
            color: Theme.of(context).scaffoldBackgroundColor, fontSize: 15),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(screen);
        close();
      },
    );
  }
}
