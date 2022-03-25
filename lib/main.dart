import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:untitled4/mainscreen.dart';
import 'package:untitled4/notificationservice.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen()// MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  /*
  var flp = FlutterLocalNotificationsPlugin();
  Future <void> kurulum() async
  {
    var androidAyari = AndroidInitializationSettings("@mipmap/ic_launcher");
    var iosAyari = IOSInitializationSettings();
    var kurulumAyari = InitializationSettings();

    await flp.initialize(kurulumAyari,onSelectNotification: bildirimSecilme);

  }


  Future <void> bildirimSecilme (String payLoad) async
  {
    if(payLoad != null)
      {
        print('Bildirim seçildi: $payLoad');
      }
  }

   */




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {

        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
