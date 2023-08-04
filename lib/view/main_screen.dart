import 'package:contact_ui/view/bio.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  Chats({super.key});
  var names = [
    "Dulqer",
    " Pranav",
    "Allu arjun",
    "Prithviraj",
    "Tovino ",
    "Asif ali",
    " Sundar pichai",
    "surya ",
    "Vikram",
    "Dhruv"
  ];
  var numbers = [
    9605563880,
    8075351288,
    9745554648,
    1233456789,
    808965332,
    9605563880,
    8075351288,
    9745554648,
    1233456789,
    808965332
  ];
  var photo = [
    'https://tse2.mm.bing.net/th?id=OIP.FY5atpTZRVqfabMhulCT7wHaKO&pid=Api&P=0&h=180',
    'https://tse1.mm.bing.net/th?id=OIP.4q7cBlQOn0PmbWF-82YbWAHaGg&pid=Api&P=0&h=180',
    'https://data1.ibtimes.co.in/en/full/610609/allu-arjun.jpg?h=450&l=50&t=40',
    'https://tse2.mm.bing.net/th?id=OIP.rJdOVMf0PXhWfak1vqcD8QHaE0&pid=Api&P=0&h=180',
    'https://www.thenewsminute.com/sites/default/files/TovinoThomas_191220_1200_DN.jpg',
    'https://tse1.mm.bing.net/th?id=OIP.a-4h0BWHXls-ClLFeKKpxwHaHa&pid=Api&P=0&h=180',
    'https://celebtap.com/wp-content/uploads/2020/05/Sundar-Pichai.jpg',
    'https://tse3.mm.bing.net/th?id=OIP.8InCRDCBzMT3DQiCNZyWiwHaLG&pid=Api&P=0&h=180',
    'http://media2.intoday.in/indiatoday/images/stories/2015April/vikram-story-650_041715032224.jpg',
    'https://tse4.mm.bing.net/th?id=OIP.qdP00WA5Rg1_l_wmLtKegQHaEK&pid=Api&P=0&h=180'
  ];
  var num = [
    '11:52 pm',
    '1:36 pm',
    '2:36 pm',
    '3:36 pm',
    '4:36 pm',
    '5:36 pm',
    '6:36 pm',
    '7:36 pm',
    '8:36 pm',
    '9:36 pm',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Contacts",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://tse1.mm.bing.net/th?id=OIP.4q7cBlQOn0PmbWF-82YbWAHaGg&pid=Api&P=0&h=180'),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Bio()));
            },
            title: Text(names[index]),
            leading: CircleAvatar(
              backgroundImage: NetworkImage('${photo[index]}'),
            ),
            subtitle: Text('${numbers[index]}'),
            trailing: Text(num[index]),
          );
        },
        itemCount: names.length,
      ),
    );
  }
}
