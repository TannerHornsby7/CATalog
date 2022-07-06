import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CATalog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CATalog'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              var cats = ['bengal', 'british-shorthair', 'maine', 'persian'];
              var cat = cats[index++];
              return Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/$cat.jpg',
                      width: 200,
                      height: 200,
                      fit: BoxFit.fill,

                    ),
                    Text(cat),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            //TODO: Navigate to Informational Page
                            //Navigator.push(context, Route)
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('More Info'),
                          ),
                        ),
                        IconButton(
                          onPressed:() {
                            /*print('favorited')*/
                          },
                          icon: const Icon(Icons.favorite_border),
                          //iconSize: 100,
                        ),

                      ],
                    ),
                  ],
                ),
              );
            }),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Random Cat'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorites'),
        ],
      ),
    );
  }
}
