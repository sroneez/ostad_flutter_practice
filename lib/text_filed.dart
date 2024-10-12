import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:untitled/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TExt'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    barrierColor: Colors.grey,
                    context: context,
                    builder: (ctx) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Text('delete'),
                                              content: Text('Are you sure?'),
                                              actions: [
                                                TextButton(onPressed: (){},
                                                    child: Text('yes')
                                                ),
                                                TextButton(onPressed: (){},
                                                    child: Text('no')
                                                ),
                                              ],
                                            );
                                          });
                                    },
                                    child: Text('title'))
                              ],
                            ),
                          ),
                          Divider(height: 10,),
                          Text('Sample'),
                          Row(
                            children:[
                              ElevatedButton(onPressed: (){}, child: Text('Cancel')),
                              VerticalDivider(width: 20,thickness: 5,
                                color: Colors.grey,
                              ),
                              ElevatedButton(onPressed: (){}, child: Text('Save')),
                            ],
                          ),
                        ],
                      );
                    });
              },
              child: Text('Show Dialog'),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: TextField(
                onTap: () {},
                // obscureText:true,
                maxLength: 11,
                maxLines: 1,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Phone',
                  // labelText: 'Phone Number',
                  prefixIcon: Icon(Icons.call),
                  prefix: Text('+880 '),
                  suffixIcon: Icon(Icons.contact_phone),
                  fillColor: Colors.white24,
                  filled: true,
                  label: Text(
                    'Phone Number',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 2,
                    ),
                  ),
                  /* disabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),*/
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
