import 'package:flutter/material.dart';
import 'package:clipboard/clipboard.dart';
import 'package:share_plus/share_plus.dart';

class PoemViewPage extends StatefulWidget {
  String poem;
  String poemName;

  PoemViewPage(this.poem,this.poemName);

  @override
  State<PoemViewPage> createState() => _PoemViewPageState();
}

class _PoemViewPageState extends State<PoemViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,

        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text(widget.poemName),
        actions: [
          InkWell(
            onTap: (){
              FlutterClipboard.copy(widget.poem).then(( value ) => print('copied'));
            },
            child: Icon(Icons.copy),
          ),

          InkWell(
            onTap: (){
              Share.share(widget.poem, subject: widget.poemName);
            },
            child: Icon(Icons.share),
          ),
          SizedBox(width: 20,)
        ],
      ),


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SelectableText(widget.poem),
        ),
      ),
    );
  }
}
