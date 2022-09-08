import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsApp extends StatefulWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text("Whats App"),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.values[0],
            indicatorWeight: 4,
            tabs: const [
              Tab(
                child: Icon(Icons.camera_alt,),
              ),
              Tab(
                child: Text("CHATS",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Tab(
                child: Text("STATUS",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Tab(
                child: Text("CALLS",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ],
          ),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              height: 10,
            ),
            PopupMenuButton(
              itemBuilder: (context) {
                const Icon(Icons.more_vert);
                return const [
                  PopupMenuItem(
                    value: 1,
                    child: Text("New Group"),
                  ),
                  PopupMenuItem(
                    child: Text("New broadcast"),
                  ),
                  PopupMenuItem(
                    child: Text("Link device"),
                  ),
                  PopupMenuItem(
                    child: Text("Starred messages"),
                  ),
                  PopupMenuItem(
                    child: Text("Setting"),
                  ),
                ];
              },
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            const Text("Camera"),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/1.png'),
                  ),
                  title: Text("Mukaram Khan",style: TextStyle(fontWeight: FontWeight.bold),),
                  trailing: Text("9:41 PM"),
                  subtitle: Text("Where are you right now"),
                );
              },
            ),
            ListView.builder(itemBuilder: (context, index) {
              return ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.teal,
                      width: 2,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child:const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/2.png"),
                    ),
                  ),
                ),
                title: const Text("Kamran Khan",style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: const Text("10 min ago"),
              );
            }),
            ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/2.png"),
                  ),
                  title: const Text("Calls"),
                  subtitle: Row(
                    children: const [
                      Icon(CupertinoIcons.arrow_down_left,color: Colors.red,size: 20,),
                      SizedBox(
                        width: 10,
                      ),
                      Text("September 7 10:46PM"),
                    ],
                  ),
                  trailing: const Icon(CupertinoIcons.phone_fill,color: Colors.green,),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
