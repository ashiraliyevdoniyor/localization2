import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatefulWidget {
  static final String id="home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Text('flutter',style: TextStyle(fontSize: 20),).tr(),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.green,
                    onPressed: () {
                      context.locale = Locale('en', 'US');
                    },
                    child: Text("English",style: TextStyle(color: Colors.white),),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.red,
                    onPressed: () {
                      context.locale = Locale('ja', 'JA');
                    },
                    child: Text("Japanese",style: TextStyle(color: Colors.white),),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.blue,
                    onPressed: () {
                      context.locale = Locale('ko', 'KO');
                    },
                    child: Text("Korean",style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
