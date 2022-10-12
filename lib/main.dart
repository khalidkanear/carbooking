// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:untitled/carbooking/splashscreen.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xff1e3161),
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Color(0xff1e3161)));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Car Booking App',
        theme: ThemeData(
          // is not restarted.
          primarySwatch: Colors.green,
        ),
        home: const SplashScreen());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static final ValueNotifier<List<Map<String, dynamic>>> tasksNotifier =
      ValueNotifier([]);

  //add task
  void _addNewTask() {
    final List<Map<String, dynamic>> tasks = [...tasksNotifier.value];
    tasks.add({
      "id": DateTime.now().toString(),
      "title": "Task ${DateTime.now()}",
      "isDone": false
    });
    tasksNotifier.value = tasks;
    debugPrint('tasks--->$tasks');
  }

// update task
  void _finishTask(String updatedTaskId) {
    final List<Map<String, dynamic>> tasks = [...tasksNotifier.value];

    final int index = tasks.indexWhere((task) => task['id'] == updatedTaskId);
    tasks[index]['isDone'] = true;

    tasksNotifier.value = tasks;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBars(),
      body: ValueListenableBuilder<List<Map<String, dynamic>>>(
        valueListenable: tasksNotifier,
        builder: (context, tasks, child) {
          final uncompletedTasks =
              tasks.where((task) => task['isDone'] == false).toList();
          return ListView.builder(
              itemCount: uncompletedTasks.length,
              itemBuilder: ((context, index) {
                return (Text('${uncompletedTasks[index]['title']}'));
              }));
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          createTAsk();
          //   await signUp();
          debugPrint('ayayayayay');
          // _addNewTask();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class AppBars extends AppBar {
  AppBars({Key? key})
      : super(
          key: key,
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          scrolledUnderElevation: 0.9,
          title: const Text(
            "Demo App",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0.2,
          toolbarHeight: 50,
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () => {},
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () => {},
            ),
          ],
        );
}

GetConnect _connect = GetConnect();
TextEditingController name = TextEditingController(text: 'Ali');
FormData body = FormData({
  'user[email]': 'rash.id.ra.mk@gmdairq@45.com',
  'user[first_name]': name.text,
  'user[last_name]': 'Shahbaz',
  'user[phone]': '03439434344',
  'PushToken': 'pushasdfasd4cwerqwecda4qrcadqd3der3rqweresdssddee',
  'user[password]': '12345678',
  'user[password_confirmation]': '12345678',
});

Future signUp() async {
  var response = await _connect.post("http://54.197.94.1/api/v1/users", body);
  debugPrint('${response.statusCode}');
  if (response.statusCode == 201 || response.statusCode == 200) {
    debugPrint('if---->${response.body}');
  } else {
    debugPrint('els--->${response.body}');
  }
}

//
Future createTAsk() async {
  Response response = await _connect.post('http://54.197.94.1/api/v1/news', {
    'description': 'description',
    'title': 'title',
    'user_id': 'userId',
    'league_id': 'leagueId',
    'match_id': 'matchId',
  });

  debugPrint('${response.statusCode}');
  if (response.statusCode == 201 || response.statusCode == 200) {
    debugPrint('if---->${response.body}');
  } else {
    debugPrint('els--->${response.body}');
  }
}
