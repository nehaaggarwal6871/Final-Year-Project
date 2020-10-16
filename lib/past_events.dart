import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';






class PastEventPage extends StatefulWidget {
  @override
  _PastEventPageState createState() => _PastEventPageState();
}

class _PastEventPageState extends State<PastEventPage> {

  Color primaryColor = Color(0xff18203d);
  Color secondaryColor = Color(0xff232c51);
  Color logoGreen = Color(0xff25bcbb);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Past Event Page'),
        backgroundColor: Color(0xff25bcbb),
      ),
      backgroundColor: Color(0xff18203d),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: primaryColor,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10.0),
//            height: 220,
            width: double.maxFinite,
            child: Card(
              elevation: 5.0,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        Container(
                          height: 80.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/nature.jpg'),
//                              fit: BoxFit.fitWidth,
                                alignment: Alignment.topLeft,
                              )
                          ),
                        ),
                        Column(
                          children: [
                            Text("Event Name", style: GoogleFonts.lobster(fontSize: 20.0),),
                            Text("Organization", style: GoogleFonts.lobster(fontSize: 10.0))
                          ],
                        ),

                      ],
                    ),

                    Text("Description Description Description Description Description Description"),
                    FlatButton(
                      textColor: Colors.green,
                      child: Text("Read More"),
                      onPressed: null,
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon( FontAwesomeIcons.facebook,),
                          onPressed: null,
                        ),
                        IconButton(
                          icon: Icon( FontAwesomeIcons.chrome,),
                          onPressed: null,
                        ),
                        IconButton(
                          icon: Icon( FontAwesomeIcons.twitter,),
                          onPressed: null,
                        ),
                        IconButton(
                          icon: Icon( FontAwesomeIcons.instagram,),
                          onPressed: null,
                        ),
                        IconButton(
                          icon: Icon( FontAwesomeIcons.linkedin,),
                          onPressed: null,
                        ),

                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      )
    );
  }
}
