import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.redAccent),
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/imgs/img.jpg'),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          "Welcome Dacosta!",
          style: Theme.of(context).textTheme.headline6!.copyWith(
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 4, 61, 108)),
        ),
      ],
    );
  }
}
