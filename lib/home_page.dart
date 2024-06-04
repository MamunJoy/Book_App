import 'package:book_app/poem_model.dart';
import 'package:book_app/poem_source.dart';
import 'package:book_app/poem_view_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: ListView.builder(
              itemCount: PoemSource.poem.length,
              itemBuilder: (context,index){
                PoemModel Poem = PoemSource.poem[index];
                return Card(
                  child: ListTile(
                    title: Text(Poem.PoemName),
                    subtitle: Text(Poem.WriterName),
                    trailing: Icon(Icons.arrow_forward_ios),
                    
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> PoemViewPage(Poem.Poem,Poem.PoemName)));
                    },
                  )
                );
              }),
        ),
      ),
    );
  }
}
