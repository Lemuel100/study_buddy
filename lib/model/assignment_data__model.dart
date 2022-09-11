import 'package:study_buddy/model/assignment__model.dart';

List<AssignmentModel> _assignmentList = [
  AssignmentModel(
      id: 'ass1',
      corseName: "Math",
      assignmentType: "Urgent",
      numberOfLectures: "10",
      numberOfSubjects: "5",
      assignmentTime: [
        AssignmentTime(time: "10", type: "Days"),
        AssignmentTime(time: "22", type: "Hours"),
        AssignmentTime(time: "02", type: "Mins")
      ]),
  AssignmentModel(
    id: 'ass2',
    corseName: "English",
    assignmentType: "Pending",
    numberOfLectures: "12",
    numberOfSubjects: "6",
    assignmentTime: [
      AssignmentTime(time: "10", type: "Days"),
      AssignmentTime(time: "22", type: "Hours"),
      AssignmentTime(time: "02", type: "Mins")
    ],
  ),
  AssignmentModel(
    corseName: "Science",
    assignmentType: "Urgent",
    numberOfLectures: "10",
    numberOfSubjects: "5",
    assignmentTime: [
      AssignmentTime(time: "10", type: "Days"),
      AssignmentTime(time: "22", type: "Hours"),
      AssignmentTime(time: "02", type: "Mins")
    ],
    id: 'ass3',
  ),
  AssignmentModel(
    corseName: "Social Science",
    assignmentType: "Pending",
    numberOfLectures: "12",
    numberOfSubjects: "6",
    assignmentTime: [
      AssignmentTime(time: "10", type: "Days"),
      AssignmentTime(time: "22", type: "Hours"),
      AssignmentTime(time: "02", type: "Mins")
    ],
    id: 'ass4',
  ),
  AssignmentModel(
    corseName: "History",
    assignmentType: "Completed",
    numberOfLectures: "10",
    numberOfSubjects: "5",
    assignmentTime: [
      AssignmentTime(time: "10", type: "Days"),
      AssignmentTime(time: "22", type: "Hours"),
      AssignmentTime(time: "02", type: "Mins")
    ],
    id: 'ass5',
  ),
  AssignmentModel(
    corseName: "Geography",
    assignmentType: "Pending",
    numberOfLectures: "12",
    numberOfSubjects: "6",
    assignmentTime: [
      AssignmentTime(time: "10", type: "Days"),
      AssignmentTime(time: "22", type: "Hours"),
      AssignmentTime(time: "02", type: "Mins")
    ],
    id: 'ass6',
  ),
  AssignmentModel(
    corseName: "Physics",
    assignmentType: "Completed",
    numberOfLectures: "10",
    numberOfSubjects: "5",
    assignmentTime: [
      AssignmentTime(time: "10", type: "Days"),
      AssignmentTime(time: "22", type: "Hours"),
      AssignmentTime(time: "02", type: "Mins")
    ],
    id: 'ass7',
  ),
  AssignmentModel(
    corseName: "Chemistry",
    assignmentType: "Urgent",
    numberOfLectures: "10",
    numberOfSubjects: "5",
    assignmentTime: [
      AssignmentTime(time: "10", type: "Days"),
      AssignmentTime(time: "22", type: "Hours"),
      AssignmentTime(time: "02", type: "Mins")
    ],
    id: 'ass8',
  ),
  AssignmentModel(
    corseName: "Biology",
    assignmentType: "Pending",
    numberOfLectures: "12",
    numberOfSubjects: "6",
    assignmentTime: [
      AssignmentTime(time: "10", type: "Days"),
      AssignmentTime(time: "22", type: "Hours"),
      AssignmentTime(time: "02", type: "Mins")
    ],
    id: 'ass9',
  ),
];

List<AssignmentModel> get assignmentList {
  return [..._assignmentList];
}
