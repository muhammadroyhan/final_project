import 'package:flutter/material.dart';

class TabbarScreen extends StatelessWidget {
  const TabbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRU3d7NsTUucn-oy_9wKTTwSoKAlmGkc59-Lg&usqp=CAU"),
                    ),
                    Text(
                      "Dhio Bimantara",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Icon(Icons.expand_more),
                    Icon(Icons.settings),
                  ],
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Material(
                  elevation: 5.0,
                  shadowColor: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(fontSize: 16),
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white38,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home_outlined,
              size: 30,
            ),
            title: const Text(
              "Home",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.notifications_none,
              size: 30,
            ),
            title: const Text(
              "Notification",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Favorites",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Icon(
                      Icons.navigate_next,
                      size: 20,
                    )
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Spaces",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Icon(
                      Icons.navigate_next,
                      size: 20,
                    )
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Dashboards",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Icon(
                      Icons.navigate_next,
                      size: 20,
                    )
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Docs",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Icon(
                      Icons.navigate_next,
                      size: 20,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
