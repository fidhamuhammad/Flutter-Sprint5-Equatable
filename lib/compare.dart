import 'package:compare/user.dart';
import 'package:flutter/material.dart';

class Compare extends StatefulWidget {
  const Compare({Key? key}):super(key: key);

  @override
  State<Compare> createState() => _CompareState();
}

class _CompareState extends State<Compare> {
  final user1 = User(
      userName: 'reem',
      phoneNumber: '8523697410',
      userImage:
          'assets/images/img1.png');
  final user2 = User(
      userName: 'reem',
      phoneNumber: '8523697410',
      userImage:
          'assets/images/img1.png');



  compareUser(BuildContext context){
    if(user1 == user2){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('yes, they are equal')));
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('no, they are not equal!')));

    }
  }        

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('equatable'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            userWidget(phoneNo: user1.phoneNumber, name: user1.userName, image: user1.userImage),
            ElevatedButton(onPressed: () {
              compareUser(context);
            }, 

            child: Text('Compare'),),

            userWidget(phoneNo: user2.phoneNumber, name: user2.userName, image: user2.userImage),
          ],
        ),
      ),
    );
  }
}

userWidget({
  required phoneNo,
  required name,
  required image,
}) {
  return Column(
    children: [
     Image.asset( image,
        width: 80,
        height: 80,),
      // Image.network(
      //   image,
      //   width: 80,
      //   height: 80,
      // ),
      const SizedBox(height: 5),
      Text(
        name,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w800,
        ),
      ),
      Text(
        phoneNo,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w800,
        ),
      ),
    ],
  );
}
