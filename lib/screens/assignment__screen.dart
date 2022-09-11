import 'package:flutter/material.dart';
import 'package:study_buddy/tabs/completed__tab.dart';
import 'package:study_buddy/tabs/pending__tab.dart';
import 'package:study_buddy/tabs/urgent__tab.dart';

class Assignments extends StatefulWidget {
  const Assignments({super.key});

  static String routeName = '/assignment';

  @override
  State<Assignments> createState() => _AssignmentsState();
}

class _AssignmentsState extends State<Assignments>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  final List<Tab> _tabList = [
    Tab(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.redAccent, width: 1),
        ),
        child: const Text(
          "Urgent",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
    ),
    Tab(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.redAccent, width: 1),
        ),
        child: const Text(
          "Completed",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
    ),
    Tab(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.redAccent, width: 1),
        ),
        child: const Text(
          "Pending",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
    )

    // Tab(
    //   text: 'Urgent',
    // ),
    // Tab(
    //   text: "completed",
    // ),
    // Tab(
    //   text: "Pending",
    // ),
  ];

  final List<Widget> _tabBarViewList = [
    UrgentAssignment(),
    CompletedAssignment(),
    PendingAssignment()
  ];

  // final List<Color> _colorsList = [
  //   Colors.redAccent,
  //   Colors.blueAccent,
  //   Colors.greenAccent,
  // ];

  @override
  void initState() {
    super.initState();
    _controller =
        TabController(length: _tabList.length, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  var _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context)
            .iconTheme
            .copyWith(color: Theme.of(context).textTheme.bodyText1!.color),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        // leadingWidth: 100,
        title: Text(
          "Assignment",
          style: Theme.of(context).textTheme.headline6,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Stack(children: const [
              CircleAvatar(
                maxRadius: 20,
                backgroundImage: AssetImage("assets/imgs/img.jpg"),
              ),
            ]),
          )
        ],
        bottom: TabBar(
          isScrollable: true,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          controller: _controller,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            // color: _colorsList[_index],
            color: Colors.redAccent,
          ),
          tabs: _tabList,
          onTap: (int i) {
            // setState(() {
            //   _index = i;
            // });
          },
        ),
      ),
      body: TabBarView(controller: _controller, children: _tabBarViewList),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2 - 20,
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.dark_mode),
      ),
    );
  }
}
