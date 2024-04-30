import 'package:flutter/material.dart';
import 'package:time_daily_task/home/utils/globle_list.dart';
import 'package:time_daily_task/home/utils/image.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Buttons',
      routes: {
        '/': (context) => const HomePage(),
      },
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
Calendar calendar= Calendar.week;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: (colors == false) ? Colors.white : Colors.cyanAccent,
        height: 80,
        child: (profile == false) ? buildRow() : const Center(child: Text(
          'Butten Is All Work For Different', style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),)),
      ),
      body: Container(
        color: (colors == true) ? Colors.white : Colors.cyanAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (colors == true) {
                      colors = false;
                    } else {
                      colors = true;
                    }
                  });
                },
                child: const Icon(
                  Icons.color_lens,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    if (profile == true) {
                      profile = false;
                    } else {
                      profile = true;
                    }
                  });
                },
                icon: Icon(
                  Icons.account_circle_outlined,
                  size: 50,
                  color: (colo == false) ? Colors.white : Colors.black,
                ),
              ),
              OutlinedButton(onPressed: () {
                setState(() {
                  if (colo == true) {
                    colo = false;
                  } else {
                    colo = true;
                  }
                });
              },
                child: const Text(
                  'Butten Color', style: TextStyle(fontSize: 30),),),
              ElevatedButton(onPressed: () {
                setState(() {
                  if (first == true) {
                    first = false;
                  }
                  else {
                    first = true;
                  }
                });
              }, child: const Text('Last Button'),),
              (first == false) ? buildContainer() : Container(),
              SegmentedButton(
                  segments: [
                    ButtonSegment(value: Calendar.day,label: Text('day'),icon: Icon(Icons.calendar_view_day)),
                    ButtonSegment(value: Calendar.week,label: Text('Week'),icon: Icon(Icons.view_week)),
                  ], selected: <Calendar>{
                    calendar,
              },
                onSelectionChanged: (p0) {
                    setState(() {
                      calendar= p0.first ;
                    });
                },)
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainer() {
    return Container(
      height: 250,
      width: 250,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: ram
          )
      ),
    );
  }

  Row buildRow() {
    return Row(
      children: [
        const SizedBox(width: 20,),
        Container(
          height: 50, width: 50,
          decoration: BoxDecoration(
            image: DecorationImage(image: pro,),
          ),
        ),
        const SizedBox(width: 20,),
        const Text('Akhil Sodvadiya', style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),),
      ],
    );
  }
}
enum Calendar{day,week}
