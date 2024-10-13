import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FlutterButtons(),
    );
  }
}

class FlutterButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Buttons',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  shadowColor: Colors.yellow.shade900,
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: const BorderSide(color: Colors.amber, width: 5),
                  ),
                  minimumSize: Size(100,50),
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Delete'),
                          content: Text('Are your sure?'),
                          actions: [
                            TextButton(
                              onPressed: () {},
                              child: Text('yes'),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text('no'),
                            ),
                          ],
                        );
                      });
                },
                child: Text('Press'),
              ),
              SizedBox(height: 20,),
              TextButton(
                  onPressed: () {
                    showDialog(
                        barrierColor: Colors.black,
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Exit'),
                            content: const Text('are you sure?'),
                            actions: [
                              ElevatedButton(
                                  onPressed: () {}, child: const Text('yes')),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: const Icon(Icons.add_alert)),
                              ElevatedButton(
                                  onPressed: () {}, child: const Text('yes')),
                              ElevatedButton(
                                  onPressed: () {}, child: const Text('yes')),
                            ],
                          );
                        });
                  },
                  child: const Text('hello')
              ),
              const SizedBox(height: 20,),

              FloatingActionButton(onPressed: (){},
                  child: const Icon(Icons.ac_unit),
              ),
              const SizedBox(height: 20,),
              OutlinedButton(onPressed: () {},
                  child:const Text('Tap'),
              ),
              //this button is for adding a button on a simple text
              GestureDetector(
                onTap: (){
                  print('onTap');
                },
                onDoubleTapCancel: (){
                  print('On double Tap');
                },
                onHorizontalDragEnd: (details){
                  print('on horizontal press');
                },
                child: const Column(
                  children: [
                    Text('Simple Text'),
                    Text('Simple Text'),
                    Text('Simple Text'),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  print('InkWell');
                },
                splashColor: Colors.amber,
                borderRadius: BorderRadius.circular(20),
                child: Text('Button'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {},
            child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
