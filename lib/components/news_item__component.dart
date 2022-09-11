import 'package:flutter/material.dart';
import '../model/corse_data__model.dart';

class NewsItem extends StatelessWidget {
  final String title;
  final String body;
  final String imgUrl;
  final String location;
  const NewsItem(
      {super.key,
      required this.title,
      required this.body,
      required this.imgUrl,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 3, 68, 121)),
      child: Row(children: [
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    fontSize: 16),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  const Icon(Icons.note),
                  Text(
                    body,
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .color!
                            .withOpacity(0.5),
                        fontSize: 15),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  const Icon(Icons.location_on),
                  Text(
                    location,
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .color!
                            .withOpacity(0.5),
                        fontSize: 15),
                  )
                ],
              ),
            ],
          ),
        ),
        Expanded(
            child: Image.asset(
          imgUrl,
          fit: BoxFit.cover,
        ))
      ]),
    );
  }
}
