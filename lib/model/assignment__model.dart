class AssignmentModel {
  final String id;
  final String corseName;
  final String numberOfLectures;
  final String numberOfSubjects;
  final String assignmentType;
  final List<AssignmentTime> assignmentTime;

  AssignmentModel({
    required this.id,
    required this.corseName,
    required this.numberOfLectures,
    required this.numberOfSubjects,
    required this.assignmentType,
    required this.assignmentTime,
  });
}

class AssignmentTime {
  final String time;
  final String type;

  AssignmentTime({required this.time, required this.type});
}
