import 'package:flutter/material.dart';

class Bio extends StatelessWidget {
  const Bio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.edit,
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.star_border,
          ),
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Text("New Group"),
                onTap: () {},
              ),
              PopupMenuItem(
                child: Text("New broadcast"),
                onTap: () {},
              ),
              PopupMenuItem(
                child: Text("Starred Message "),
                onTap: () {},
              ),
              PopupMenuItem(
                child: Text("Settings"),
                onTap: () {},
              ),
            ];
          }),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://tse1.mm.bing.net/th?id=OIP.4q7cBlQOn0PmbWF-82YbWAHaGg&pid=Api&P=0&h=180'),
              radius: 100,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Pranav",
            style: TextStyle(fontSize: 30),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.call,
                    size: 30,
                  ),
                  Text("Call"),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.message,
                    size: 30,
                  ),
                  Text("Text"),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.video_call,
                    size: 30,
                  ),
                  Text("Video"),
                ],
              ),
            ],
          ),
          Divider(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey,
            ),
            height: MediaQuery.of(context).size.height * .35,
            width: MediaQuery.of(context).size.width * .96,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Contact info",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("9605563887"),
                  subtitle: Text("Mobile"),
                  trailing: Icon(Icons.message),
                ),
                ListTile(
                  leading: Icon(Icons.video_call_outlined),
                  title: Text("Video call +9605563887"),
                ),
                ListTile(
                  leading: Icon(Icons.chat),
                  title: Text("Message  +9605563887"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
