import 'package:intl/intl.dart';
import 'package:study_buddy/model/corse_schedule__model.dart';
import 'package:study_buddy/model/news__model.dart';
import 'package:study_buddy/model/notification__model.dart';

List<CorseSchedule> _corseList = [
  CorseSchedule(
      id: 'cd1',
      corseName: "Visual Basic",
      venue: "TF1",
      time: DateFormat.jm().format(DateTime.now())),
  CorseSchedule(
      id: 'cd2',
      corseName: "Assembly Language",
      venue: "TF2",
      time: DateFormat.jm().format(DateTime.now())),
  CorseSchedule(
      id: 'cd3',
      corseName: "System Analysis",
      venue: "TF3",
      time: DateFormat.jm().format(DateTime.now())),
];

List<NotificationDetails> _notificationList = [
  NotificationDetails(
      title: "Visual Basic",
      body: "You have a class today at TF1",
      time: DateFormat.jm().format(DateTime.now())),
  NotificationDetails(
      title: "Assembly Language",
      body: "You have a class today at TF2",
      time: DateFormat.jm().format(DateTime.now())),
];

List<NewsDetails> _newsDetailsList = [
  NewsDetails(
      location: 'Social Science Department',
      title: 'Computer Science Quiz',
      body: "It will be entertaining and fun",
      date: DateFormat.yMEd().format(DateTime.now()),
      image: "assets/imgs/splashScreen.jpeg",
      id: 'ns1'),
  NewsDetails(
      location: 'Social Science Department',
      title: 'Computer Science Quiz',
      body: "It will be entertaining and fun",
      date: DateFormat.yMEd().format(DateTime.now()),
      image: "assets/imgs/splashScreen.jpeg",
      id: 'ns2'),
  NewsDetails(
      location: 'Social Science Department',
      title: 'Computer Science Quiz',
      body: "It will be entertaining and fun",
      date: DateFormat.yMEd().format(DateTime.now()),
      image: "assets/imgs/splashScreen.jpeg",
      id: 'ns2'),
  NewsDetails(
      location: 'Social Science Department',
      title: 'Computer Science Quiz',
      body: "It will be entertaining and fun",
      date: DateFormat.yMEd().format(DateTime.now()),
      image: "assets/imgs/splashScreen.jpeg",
      id: 'ns2'),
  NewsDetails(
      location: 'Social Science Department',
      title: 'Computer Science Quiz',
      body: "It will be entertaining and fun",
      date: DateFormat.yMEd().format(DateTime.now()),
      image: "assets/imgs/splashScreen.jpeg",
      id: 'ns2'),
];

List<NewsDetails> get newsDetailsList => _newsDetailsList;
List<NotificationDetails> get notificationList => _notificationList;

List<CorseSchedule> get corseScheduleList => _corseList;
