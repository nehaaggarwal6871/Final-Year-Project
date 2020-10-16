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
        title: Text('Past Event Page', style: GoogleFonts.alegreya(fontSize: 25.0),),
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
            child: Column(
              children: [
                _buildCard("Hackathon","by CSI-BPIT","assets/images/nature.jpg", "Hackathon is the platform where in groups we showcase our ability and creativity."),
                SizedBox(height: 10.0,),
                _buildCard("Hackathon","by CSI-BPIT","assets/images/nature.jpg", "Hackathon is the platform where in groups we showcase our ability and creativity."),
                SizedBox(height: 10.0,),
                _buildCard("Hackathon","by CSI-BPIT","assets/images/nature.jpg", "Hackathon is the platform where in groups we showcase our ability and creativity."),
                SizedBox(height: 10.0,),
                _buildCard("Hackathon","by CSI-BPIT","assets/images/nature.jpg", "Hackathon is the platform where in groups we showcase our ability and creativity."),
                SizedBox(height: 10.0,),
                _buildCard("Hackathon","by CSI-BPIT","assets/images/nature.jpg", "Hackathon is the platform where in groups we showcase our ability and creativity."),

              ],
            )
          ),
        ),
      )
    );
  }



  _buildCard(String eventName, String org, String img, String desc){
    return Card(
      elevation: 10.0,
      color: Colors.tealAccent[100],
      shadowColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Container(
                  height: 100.0,
                  width: 130.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: AssetImage(img),
                        fit: BoxFit.cover,
                        alignment: Alignment.topLeft,
                      )
                  ),
                ),
                Column(
                  children: [
                    Text(eventName, style: GoogleFonts.lobster(fontSize: 20.0),),
                    Text(org, style: GoogleFonts.lobster(fontSize: 10.0))
                  ],
                ),

              ],
            ),

            SizedBox(height: 10.0,),
            Text(desc, style: GoogleFonts.aBeeZee(fontSize: 18.0),),
            FlatButton(
              textColor: Colors.green,
              child: Text("Read More", style: GoogleFonts.acme(fontSize: 15.0),),
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
    );
  }
}
