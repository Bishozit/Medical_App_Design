import 'package:flutter/material.dart';
import 'package:page3/screen/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://png.pngtree.com/thumb_back/fh260/background/20210224/pngtree-blue-abstract-background-business-image_564246.jpg"),
                fit: BoxFit.cover)),
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                text: "Virtual\n",
                children: [
                  TextSpan(
                    text: "Ecosystem.",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
                style: TextStyle(
                  fontSize: size.width * 0.12,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF00dca7),
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Text(
              "Specialised healthcare, on a single tech platfrom,\nsimplifying access for anyone, anywhere.",
              style: TextStyle(
                color: Colors.white,
                fontSize: size.width * 0.04,
                fontWeight: FontWeight.w700,
                wordSpacing: 1.0,
                height: 2.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    height: size.height * 0.32,
                    width: size.width * 0.40,
                    color: Color(0xFF0a70de),
                    padding: EdgeInsets.only(top: 20.0),
                     child: Image.network(
                              "https://t4.ftcdn.net/jpg/00/67/90/19/360_F_67901984_mzXsXD6NC7hxddHeePp1i7hGVuljQl32.jpg",
                              fit: BoxFit.cover,
                            ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 100.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      height: size.height * 0.32,
                      width: size.width * 0.40,
                      color: Color(0xFFdcedff),
                      padding: EdgeInsets.only(top: 20.0),
                      child: Image.network(
                                "https://thumbs.dreamstime.com/b/smiling-businessman-office-colleagues-background-smiling-businessman-office-colleagues-background-101628040.jpg",
                                fit: BoxFit.cover,
                              ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                FloatingActionButton(
                  onPressed: ()  => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Page2(),
                    ),
                  ),
                  child: Icon(Icons.arrow_forward),
                  backgroundColor: Color(0xFF00dca7),
                ),
                SizedBox(
                  width: 16.0,
                ),
                Text(
                  "Get\nStarted",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        ),




      ),
    );
  }
}
