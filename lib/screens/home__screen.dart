import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

import '../components/content_body__component.dart';
import '../components/custom_app_bar__component.dart';
import '../components/custom_slider__component.dart';
import '../components/news_item__component.dart';
import '../components/notification_item__component.dart';
import '../components/user_profile__component.dart';
import '../model/corse_data__model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<SliderDrawerState> _key = GlobalKey<SliderDrawerState>();

  void openSideBar() {
    _key.currentState!.openSlider();
  }

  void closeSideBar() {
    _key.currentState!.closeSlider();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SliderDrawer(
            key: _key,
            isDraggable: true,
            sliderOpenSize: 200,
            appBar: CustomAppBar(open: openSideBar),
            slider: CustomSlider(close: closeSideBar),
            child: HomePage()));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8,
            ),
            // const UserProfile(),
            const SizedBox(height: 8),
            const ContentCard(),
            const SizedBox(
              height: 8,
            ),
            const NotificationItem(),
            const SizedBox(
              height: 20,
            ),
            Text(
              "News and Fun",
              style: Theme.of(context).textTheme.headline6,
            ),
            ListView.separated(
                shrinkWrap: true,
                primary: false,
                padding: const EdgeInsets.only(top: 20),
                itemBuilder: (context, i) => NewsItem(
                    title: newsDetailsList[i].title,
                    body: newsDetailsList[i].body,
                    imgUrl: newsDetailsList[i].image,
                    location: newsDetailsList[i].location),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                itemCount: newsDetailsList.length),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
