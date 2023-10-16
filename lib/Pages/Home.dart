import 'package:flutter/material.dart';
import 'package:siga_go/ColorsTheme.dart';
import 'package:siga_go/Components/HomeParagraph.dart';
import 'package:visibility_detector/visibility_detector.dart';

class Home extends StatefulWidget {
  Home({super.key});

  bool showHeader = false;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            backgroundColor: ColorsTheme.tertiary,
            actionsIconTheme: IconThemeData(color: ColorsTheme.primary),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.home_outlined, color: ColorsTheme.primary,),
                Text(
                    'Siga Go',
                    style: TextStyle(
                        color: ColorsTheme.primary,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  )
                ,
              ],
            ),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  icon: const Icon(Icons.login_outlined),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  icon: const Icon(Icons.person_add),
                ),
              ],
            )
          ,

      backgroundColor: ColorsTheme.secondary,
      body: SingleChildScrollView(
            child:Padding(
          padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
          child:  Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                
                Padding(
                  padding: const EdgeInsets.all(14),
                  child: HomeParagraph(
                    description:
                        'Siga Go is a mobile application that allows you to track your daily activities and your daily expenses.',
                    image: Image.asset('images/1.jpg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14),
                  child: HomeParagraph(
                    description:
                        'Siga Go is a mobile application that allows you to track your daily activities and your daily expenses.',
                    image: Image.asset('images/1.jpg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14),
                  child: HomeParagraph(
                    description:
                        'Siga Go is a mobile application that allows you to track your daily activities and your daily expenses.',
                    image: Image.asset('images/1.jpg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14),
                  child: HomeParagraph(
                    description:
                        'Siga Go is a mobile application that allows you to track your daily activities and your daily expenses.',
                    image: Image.asset('images/1.jpg'),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
