import 'package:flutter/material.dart';
import 'package:study_buddy/components/app_bar__component.dart';
import 'package:study_buddy/components/assignment_details_item__component.dart';

class AssignmentItemDetails extends StatelessWidget {
  const AssignmentItemDetails({super.key});

  static String routeName = "/assignment_details";

  @override
  Widget build(BuildContext context) {
    final String id = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: appBarComponent(context, "Assignment"),
      body: AssignmentDetailsItem(id: id),
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
        child: const Icon(Icons.dark_mode),
      ),
    );
  }
}
