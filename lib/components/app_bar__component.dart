import 'package:flutter/material.dart';

appBarComponent(BuildContext context, String title) {
  return AppBar(
      iconTheme: Theme.of(context)
          .iconTheme
          .copyWith(color: Theme.of(context).textTheme.bodyText1!.color),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      // leadingWidth: 100,
      title: Text(
        title,
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
      ]);
}
