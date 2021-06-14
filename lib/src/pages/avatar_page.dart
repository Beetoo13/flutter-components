import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar page'),
        actions: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www1.pictures.zimbio.com/gi/Yasmine+Yousaf+iHeartRadio+Ultimate+Pool+Party+0Ljrf1ryjSpx.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text("SL"),
              backgroundColor: Colors.brown,
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: FadeInImage(
              image: NetworkImage(
                  'https://i.pinimg.com/originals/7f/77/0e/7f770e5380ffa4338a07e543893e79f6.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 300),
            ),
          ),
        ),
      ),
    );
  }
}
