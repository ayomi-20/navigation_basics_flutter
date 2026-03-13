import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: HomeScreen()));
class HomeScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: Text('Home Screen')),
body: Center(
child: ElevatedButton(
  onPressed: () {
Navigator.push(
context,
MaterialPageRoute(builder: (context) => SecondScreen()),
);
},
child: Text('Go to Second Screen'),
),
),
);
}
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Go Back'),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdScreen()),
                );
              },
              child: Text('Go To Third Screen'),
            ),

          ],
        ),
      ),
    );
  }
}


class ThirdScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: Text('Third Screen')),
body: Center(child: GestureDetector(
          onTap: () {
            Navigator.pop(context); // Go back to Second Screen
          },
          child: Image.asset('assets/images/image.png'),
          ),
        ),
      );
}
}