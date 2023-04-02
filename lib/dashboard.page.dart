import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage(this.user, {Key? key}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 32, horizontal: 30)),
            RichText(
                text: TextSpan(
                    text: 'Halo, ',
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    children: <TextSpan>[
                  TextSpan(
                      text: user.username,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue)),
                ])),
            Padding(padding: const EdgeInsets.all(10)),
            Text(
              "Pokedex",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search Pokemon',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0)),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              isThreeLine: true,
              leading: Image.asset(
                "images/Bulbasaur.png",
                height: 100,
                width: 100,
              ),
              title: Text(
                "Bulbasaur",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: "Grass",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          backgroundColor: Color.fromARGB(255, 34, 233, 100)),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Poison",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              backgroundColor:
                                  Color.fromARGB(255, 213, 113, 219)),
                        ),
                      ],
                    ),
                  ),
                  Text(
                      "There is a plant seed on its back right from the day this Pokémon is born. The seed slowly grows larger.")
                ],
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              isThreeLine: true,
              leading: Image.asset(
                "images/Butterfree.png",
                height: 100,
                width: 100,
              ),
              title: Text(
                "Butterfree",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: "Bug",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          backgroundColor: Color.fromARGB(255, 21, 163, 80)),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Flying",
                          style: TextStyle(
                              color: Colors.white,
                              backgroundColor:
                                  Color.fromARGB(255, 185, 62, 126)),
                        ),
                      ],
                    ),
                  ),
                  Text(
                      "In battle, it flaps its wings at great speed to release highly toxic dust into the air.")
                ],
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              isThreeLine: true,
              leading: Image.asset(
                "images/charmander.png",
                height: 100,
                width: 100,
              ),
              title: Text(
                "Charmander",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: "Fire",
                      style: TextStyle(
                          color: Colors.white,
                          backgroundColor: Color.fromARGB(255, 198, 19, 19)),
                      children: <TextSpan>[
                        TextSpan(
                          text: "",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                      "It has a preference for hot things. When it rains, steam is said to spout from the tip of its tail.")
                ],
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              isThreeLine: true,
              leading: Image.asset(
                "images/Squirtle.png",
                height: 100,
                width: 100,
              ),
              title: Text(
                "Squirtle",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: "Water",
                      style: TextStyle(
                          color: Colors.white, backgroundColor: Colors.blue),
                      children: <TextSpan>[
                        TextSpan(
                          text: "",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                      "When it retracts its long neck into its shell, it squirts out water with vigorous force.")
                ],
              ),
            ),
            Divider(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  final String username, email, password;
  const User(this.username, this.email, this.password);
}
