import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          overflow: Overflow.visible,
          alignment: Alignment.center,
          children: <Widget>[
            Image(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 3,
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://www.houstonmethodist.org/-/media/Images/Contenthub/Article-Images/Wellness/Hub_NightOwl_Article.ashx")),
            Positioned(
              bottom: -60.0,
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    "https://pbs.twimg.com/profile_images/901375673419403265/XxW_2NNz_400x400.jpg"),
              ),
            )
          ],
        ),
        SizedBox(
          height: 50,
        ),
        ListTile(
            title: Center(
                child: Text("Mohammad Awwad")),
                subtitle: Center(child : Text("Flutter Developer"))),
        FlatButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.mail,
            color: Colors.white,
          ),
          label: Text(
            "Hire Me",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        ListTile(
          title: Text("About Me"),
          subtitle: Text("My name is Mohammad awwad"),
        ),
      ],
    );
  }
}
