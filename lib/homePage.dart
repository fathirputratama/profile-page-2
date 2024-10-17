import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String username;
  final String sekolah;
  final String role;
  final String deskripsi;

  const HomePage({
    Key? key,
    required this.username,
    required this.sekolah,
    required this.role,
    required this.deskripsi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  shadowColor: Colors.black45,
                  color: Colors.white.withOpacity(0.9),
                  child: Padding(
                    padding: const EdgeInsets.all(60.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 70.0,
                          backgroundImage: AssetImage('assets/images/shouyo.jpeg'),
                          backgroundColor: Colors.transparent,
                        ),
                        SizedBox(height: 20),
                        Text(
                          username,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '$sekolah',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700],
                              fontStyle: FontStyle.italic),
                        ),
                        SizedBox(height: 10),
                        Text(
                          role,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal),
                        ),
                        SizedBox(height: 10),
                        Text(
                          deskripsi,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700],
                              fontStyle: FontStyle.italic),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 12),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Page2(
                                username: username,
                              )),
                            );
                          },
                          child: Text(
                            'See More',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  final String username;

    const Page2({
    Key? key,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Details"),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('assets/images/shouyo.jpeg'),
              ),
              SizedBox(height: 20),
              Text(
                username,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.teal),
              ),
              SizedBox(height: 20),
              // Card About
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.info_outline, color: Colors.teal),
                    title: Text(
                      'About',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'I am a student at SMK Wikrama Bogor, passionate about technology and programming.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
              // Card History
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.history, color: Colors.teal),
                    title: Text(
                      'History',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'I have experience in front-end development and user interface design through various projects.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
              // Card Skills with logos
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.code, color: Colors.teal),
                            SizedBox(width: 10),
                            Text(
                              'Skills',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        // List of skills with logos
                        Row(
                          children: [
                            Image.asset('assets/images/react.jpg', width: 30),
                            SizedBox(width: 10),
                            Text('React', style: TextStyle(fontSize: 16)),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Image.asset('assets/images/js.jpg', width: 30),
                            SizedBox(width: 10),
                            Text('JavaScript', style: TextStyle(fontSize: 16)),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Image.asset('assets/images/tailwind.jpg', width: 30),
                            SizedBox(width: 10),
                            Text('Tailwind', style: TextStyle(fontSize: 16)),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Image.asset('assets/images/laravel.jpg', width: 30),
                            SizedBox(width: 10),
                            Text('Laravel', style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}