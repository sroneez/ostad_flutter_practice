// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:untitled/text_filed.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home:SignInPage(),
    );
  }
}

class SignInPage extends StatelessWidget{
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text('Image'),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                      width: 5,
                    ),
                  ),
                  child: Image.asset('assets/—Pngtree—tianli school campus image image_3796528.png',
                  height: 100,
                  ),
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  width: 350,
                  child: TextField(
                    onTap: (){},
                    decoration: const InputDecoration(
                      hintText: 'your_full_name',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w200,
                      ),
                      label: Text('Name'),
                      border: OutlineInputBorder(
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                        color: Colors.black,
                        width: 2,
                        ),
                       ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                  ),
                      ),
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  width: 350,
                  child: TextField(
                    onTap: (){},
                    decoration: const InputDecoration(
                      hintText: '01XXXXXXXXX',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w200,
                      ),
                      label: Text('Phone'),
                      border: OutlineInputBorder(
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  width: 350,
                  child: TextField(
                    onTap: (){},
                    decoration: const InputDecoration(
                      hintText: 'outlook@gmail.com',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w200,
                      ),
                      label: Text('Email'),
                      border: OutlineInputBorder(
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(onPressed: (){
                      showDialog(context: context, builder: (context){
                        return AlertDialog(
                          content: const Text('Are you sure?'),
                          actions: [
                            TextButton(onPressed: (){}, child: const Text('yes')),
                            TextButton(onPressed: (){}, child: const Text('no')),
                          ],
                        );
                      });
                    },
                        child: const Text('Submit'),
                    ),
                    const SizedBox(width: 10,),
                    ElevatedButton(onPressed: (){},
                      child: const Text('Cancel'),
                    ),
                  ],
                ),
              ],
            )
        ),
      ),
    );
  }
}