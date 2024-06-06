import 'package:flutter/material.dart';
import 'package:task3/task3/dummy_data.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flute Music Player',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Now Playing'),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                dummyData[index]['imageUrl'],
              ),
            ),
            title: Text(dummyData[index]['name']),
            subtitle: Text(dummyData[index]['title']),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.shuffle),
      ),
    );
  }
}
