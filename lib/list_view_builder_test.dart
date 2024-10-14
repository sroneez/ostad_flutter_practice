import 'package:flutter/material.dart';
import 'user.dart';

class ListViewBuilderTest extends StatelessWidget{
  const ListViewBuilderTest({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text('List View Builder'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body:ListView.separated(
        separatorBuilder: (BuildContext context, int index){
          return (index +3) % 2 ==0 ?
            ListTile(
            leading: const CircleAvatar(
              child: const Text('A',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              ),
              backgroundColor: Colors.orange,
            ),
              title: const Text('Advertise',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle:const Text('some information about add',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              trailing: Container(
                alignment: Alignment.center,
                width: 30,
                height: 20,
                child: const Text('Ad',style: TextStyle(fontSize: 12,color: Colors.white)),
                color: Colors.orange.shade400,
              ),
          )
              :const SizedBox(height: 0,width: 0,);
        },
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                users[index].image,
              ),
            ),
            title: Text(users[index].name),
            titleTextStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            subtitle: Text(users[index].profession),
            subtitleTextStyle: const TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          );
        },
      ),
    );
  }
}