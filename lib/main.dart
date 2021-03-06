import 'package:flutter/material.dart';

//where code starts run
void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,  //remove debug banner
      home: MyHomePage(),
    );
  }
}

//home page code
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //decalre intialize veriables 
  int a = 0;
  int b = 0;
  int sum = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(  
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Container(
              //   width: 100,
              //   height: 20,
              //   color: Colors.brown,
              // ),
              // Text(
              //   'Hello Flutter!',
              //   style: TextStyle(color: Colors.indigo, fontSize: 40,),
              // ),
              

              TextField(
                        autofocus: true,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: 'value 1'),
                              onSubmitted: (value) {
                                setState(() {
                                  a = int.parse(value);
                                });
                                 
                              },
                      ),
                      
                            SizedBox(height:5.0),
                      
                       TextField(
                        autofocus: true,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: 'value 2'),
                              onSubmitted: (value) {
                                setState(() {
                                  b = int.parse(value);
                                });
                                 
                              },
                      ),
                      
                            SizedBox(height:15.0),

                        MaterialButton(
                                  shape: new RoundedRectangleBorder(  
                                    borderRadius: new BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.transparent)),
                                  color: Colors.indigo[400],
                                 
                                  padding: EdgeInsets.all(8.0),
                                  onPressed: () async{
                                     //button onpressed login
                                     setState(() {
                                       sum = a + b;
                                     });
                                  },
                                  child: Text(
                                    "Submit",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                  
                            SizedBox(height:20.0),

                            Text(
                            'Sum is $sum',
                            style: TextStyle(color: Colors.grey, fontSize: 40,),
                          ),

            ],
          ),
        ),
      ),
    );
  }
}
