import 'package:flutter/material.dart';
import '../model/corse_data__model.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 3, 68, 121)),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.notifications,
              color: Colors.redAccent,
            ),
            Text(
              'Reminder',
              style: Theme.of(context).textTheme.headline6,
            ),
            const Icon(
              Icons.notifications,
              color: Colors.redAccent,
            ),
          ],
        ),
        ListView(
          shrinkWrap: true,
          primary: false,
          children: notificationList
              .map(
                (notification) => Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  color: Color.fromARGB(255, 33, 59, 125),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          notification.title,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          "${notification.body} ${notification.time}",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(color: Colors.white24, fontSize: 15),
                        )
                      ]),
                ),
              )
              .toList(),
        )
      ]),
    );
  }
}
