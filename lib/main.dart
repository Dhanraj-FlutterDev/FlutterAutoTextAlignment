import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

void main()=> runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: AutoTextDemo(),
));

class AutoTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Auto TExt') ,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Text('This is regular String which does not resize Lets see if this AUto '
                  'sizes if more than 4 line will it work.',
              style: TextStyle(fontSize: 50.0),
              maxLines: 4,),
              Divider(height: 20, color: Colors.red, thickness: 10.0,),
              AutoSizeText('This it the String which auto resize with the length Lets see if this AUto '
                  'sizes if more than 4 line will it work see how this work well'
                  ,
              style: TextStyle(fontSize: 50.0),
              minFontSize: 10.0,
              maxLines: 4,)
            ],
          )
        ],
      ),
    );
  }
}
