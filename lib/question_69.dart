import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GmailAppSplash extends StatefulWidget {
  @override
  State<GmailAppSplash> createState() => _GmailAppSplashState();
}

class _GmailAppSplashState extends State<GmailAppSplash> {
  @override
  Widget build(BuildContext context) {
    exitSplash();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            height: 270,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/gmail-animation.png')),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> exitSplash() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => GmailApp(),
        ));
  }
}

class GmailApp extends StatefulWidget {
  const GmailApp({super.key});

  @override
  State<GmailApp> createState() => _GmailAppState();
}

class _GmailAppState extends State<GmailApp> {
  int _bottomNavIndex = 0;
  List<Widget> _navitem = [
    MailScreen(),
    MeetApp(),
  ];
  var _drawerIndex = 1;
  Color _mailColor = Color.fromRGBO(51, 75, 79, 1);
  Color _meetColor = Color.fromRGBO(24, 34, 36, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _bottomNavIndex == 0
          ? FilledButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromRGBO(51, 75, 79, 1)),
                padding: MaterialStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 20, vertical: 18)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ComposeEmail(),
                    ));
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.edit,
                    color: Colors.blue.shade100,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Compose',
                    style: TextStyle(fontSize: 15, color: Colors.blue.shade100),
                  ),
                ],
              ),
            )
          : null,
      backgroundColor: Color.fromRGBO(11, 21, 22, 1),
      body: _navitem[_bottomNavIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          switch (value) {
            case 0:
              _mailColor = Color.fromRGBO(51, 75, 79, 1);
              _meetColor = Color.fromRGBO(24, 34, 36, 1);
              setState(() {
                _bottomNavIndex = value;
              });
              break;
            case 1:
              _mailColor = Color.fromRGBO(24, 34, 36, 1);
              _meetColor = Color.fromRGBO(51, 75, 79, 1);
              setState(() {
                _bottomNavIndex = value;
              });
              break;
          }
        },
        currentIndex: _bottomNavIndex,
        backgroundColor: Color.fromRGBO(24, 34, 36, 1),
        selectedItemColor: Colors.blue.shade100,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(),
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                style: ButtonStyle(
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 24)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40))),
                    backgroundColor: MaterialStatePropertyAll(_mailColor)),
                onPressed: () {
                  _mailColor = Color.fromRGBO(51, 75, 79, 1);
                  _meetColor = Color.fromRGBO(24, 34, 36, 1);
                  setState(() {
                    _bottomNavIndex = 0;
                  });
                },
                icon: Icon(
                  Icons.mail,
                  color: Colors.blue.shade100,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: IconButton(
                style: ButtonStyle(
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 24)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40))),
                    backgroundColor: MaterialStatePropertyAll(_meetColor)),
                onPressed: () {
                  _mailColor = Color.fromRGBO(24, 34, 36, 1);
                  _meetColor = Color.fromRGBO(51, 75, 79, 1);
                  setState(() {
                    _bottomNavIndex = 1;
                  });
                },
                icon: Icon(Icons.photo_camera_front),
                color: Colors.blue.shade100,
              ),
              label: '')
        ],
      ),
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(21, 36, 39, 1),
        child: SafeArea(
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                height: 60,
                child: Text(
                  'Gmail',
                  style: TextStyle(fontSize: 25, color: Colors.white70),
                ),
              ),
              Divider(
                height: 1,
              ),
              ListTile(
                selectedTileColor: Color.fromRGBO(51, 75, 79, 1),
                selected: _drawerIndex == 0,
                onTap: () {
                  setState(() {
                    _drawerIndex = 0;
                  });
                },
                leading: Icon(
                  Icons.all_inbox,
                  color: Colors.white70,
                ),
                title: Text(
                  'All inboxes',
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              ),
              Divider(
                height: 1,
              ),
              ListTile(
                selectedTileColor: Color.fromRGBO(51, 75, 79, 1),
                selected: _drawerIndex == 1,
                onTap: () {
                  setState(() {
                    _drawerIndex = 1;
                  });
                },
                leading: Icon(
                  Icons.image_outlined,
                  color: Colors.white70,
                ),
                title: Text(
                  'Primary',
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              ),
              ListTile(
                selectedTileColor: Color.fromRGBO(51, 75, 79, 1),
                selected: _drawerIndex == 2,
                onTap: () {
                  setState(() {
                    _drawerIndex = 2;
                  });
                },
                leading: Icon(
                  Icons.add_home_outlined,
                  color: Colors.white70,
                ),
                title: Text(
                  'Promotions',
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              ),
              ListTile(
                selectedTileColor: Color.fromRGBO(51, 75, 79, 1),
                selected: _drawerIndex == 3,
                onTap: () {
                  setState(() {
                    _drawerIndex = 3;
                  });
                },
                leading: Icon(
                  Icons.people_alt_outlined,
                  color: Colors.white70,
                ),
                title: Text(
                  'Social',
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              ),
              ListTile(
                title: Text(
                  'All labels',
                  style: TextStyle(fontSize: 13, color: Colors.white38),
                ),
              ),
              ListTile(
                selectedTileColor: Color.fromRGBO(51, 75, 79, 1),
                selected: _drawerIndex == 4,
                onTap: () {
                  setState(() {
                    _drawerIndex = 4;
                  });
                },
                leading: Icon(
                  Icons.star_border,
                  color: Colors.white70,
                ),
                title: Text(
                  'Starred',
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              ),
              ListTile(
                selectedTileColor: Color.fromRGBO(51, 75, 79, 1),
                selected: _drawerIndex == 5,
                onTap: () {
                  setState(() {
                    _drawerIndex = 5;
                  });
                },
                leading: Icon(
                  Icons.snooze_outlined,
                  color: Colors.white70,
                ),
                title: Text(
                  'Snoozed',
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              ),
              ListTile(
                selectedTileColor: Color.fromRGBO(51, 75, 79, 1),
                selected: _drawerIndex == 6,
                onTap: () {
                  setState(() {
                    _drawerIndex = 6;
                  });
                },
                leading: Icon(
                  Icons.label_important_outline,
                  color: Colors.white70,
                ),
                title: Text(
                  'Social',
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              ),
              ListTile(
                selectedTileColor: Color.fromRGBO(51, 75, 79, 1),
                selected: _drawerIndex == 7,
                onTap: () {
                  setState(() {
                    _drawerIndex = 7;
                  });
                },
                leading: Icon(
                  Icons.people_alt_outlined,
                  color: Colors.white70,
                ),
                title: Text(
                  'Important',
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              ),
              ListTile(
                selectedTileColor: Color.fromRGBO(51, 75, 79, 1),
                selected: _drawerIndex == 8,
                onTap: () {
                  setState(() {
                    _drawerIndex = 8;
                  });
                },
                leading: Icon(
                  Icons.send_outlined,
                  color: Colors.white70,
                ),
                title: Text(
                  'Sent',
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              ),
              ListTile(
                selectedTileColor: Color.fromRGBO(51, 75, 79, 1),
                selected: _drawerIndex == 9,
                onTap: () {
                  setState(() {
                    _drawerIndex = 9;
                  });
                },
                leading: Icon(
                  Icons.schedule_send,
                  color: Colors.white70,
                ),
                title: Text(
                  'Scheduled',
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              ),
              ListTile(
                selectedTileColor: Color.fromRGBO(51, 75, 79, 1),
                selected: _drawerIndex == 10,
                onTap: () {
                  setState(() {
                    _drawerIndex = 10;
                  });
                },
                leading: Icon(
                  Icons.outbox,
                  color: Colors.white70,
                ),
                title: Text(
                  'Outbox',
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              ),
              ListTile(
                selectedTileColor: Color.fromRGBO(51, 75, 79, 1),
                selected: _drawerIndex == 11,
                onTap: () {
                  setState(() {
                    _drawerIndex = 11;
                  });
                },
                leading: Icon(
                  Icons.contact_page_rounded,
                  color: Colors.white70,
                ),
                title: Text(
                  'Drafts',
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              ),
              ListTile(
                selectedTileColor: Color.fromRGBO(51, 75, 79, 1),
                selected: _drawerIndex == 12,
                onTap: () {
                  setState(() {
                    _drawerIndex = 12;
                  });
                },
                leading: Icon(
                  Icons.mail_outline_sharp,
                  color: Colors.white70,
                ),
                title: Text(
                  'All mails',
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              ),
              ListTile(
                selectedTileColor: Color.fromRGBO(51, 75, 79, 1),
                selected: _drawerIndex == 13,
                onTap: () {
                  setState(() {
                    _drawerIndex = 13;
                  });
                },
                leading: Icon(
                  Icons.error_outline_outlined,
                  color: Colors.white70,
                ),
                title: Text(
                  'Spam',
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              ),
              ListTile(
                selectedTileColor: Color.fromRGBO(51, 75, 79, 1),
                selected: _drawerIndex == 14,
                onTap: () {
                  setState(() {
                    _drawerIndex = 14;
                  });
                },
                leading: Icon(
                  Icons.delete_forever_outlined,
                  color: Colors.white70,
                ),
                title: Text(
                  'Bin',
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              ),
              ListTile(
                title: Text(
                  'Google Apps',
                  style: TextStyle(fontSize: 13, color: Colors.white38),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(
                  Icons.calendar_today,
                  color: Colors.white70,
                ),
                title: Text(
                  'Calender',
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(
                  Icons.contacts_outlined,
                  color: Colors.white70,
                ),
                title: Text(
                  'Contacts',
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              ),
              Divider(
                height: 1,
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(
                  Icons.settings,
                  color: Colors.white70,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(
                  Icons.help_outline_outlined,
                  color: Colors.white70,
                ),
                title: Text(
                  'Help and feedback',
                  style: TextStyle(fontSize: 15, color: Colors.white70),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MailScreen extends StatefulWidget {
  @override
  State<MailScreen> createState() => _MailScreenState();
}

class _MailScreenState extends State<MailScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView(
        children: [
          appBar(),
          mailBody(),
        ],
      ),
    );
  }
}

mailBody() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Primary',
            style: TextStyle(color: Colors.white70),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          dragStartBehavior: DragStartBehavior.start,
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) => Column(
            children: [
              ListTile(
                onTap: () {},
                leading: CircleAvatar(
                  radius: 23,
                  backgroundColor: Colors.blueGrey,
                ),
                title: Text(
                  'Coursera',
                  style: TextStyle(color: Colors.white70),
                ),
                subtitle: Text(
                    'hsdfbd gi gdsiu gsayig asiy sagy asgfys gfasyfgsyfg '),
                trailing: Column(
                  children: [
                    Text(DateTime.now().hour.toString() +
                        ' : ' +
                        DateTime.now().minute.toString()),
                    Expanded(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.star_border,
                          size: 30,
                        ),
                        padding: EdgeInsets.all(0),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 7,
              )
            ],
          ),
        )
      ],
    ),
  );
}

appBar() {
  return Container(
    height: 65,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromRGBO(34, 44, 46, 1)),
    margin: EdgeInsets.only(top: 10, bottom: 10, left: 16, right: 16),
    child: ListTile(
      contentPadding: EdgeInsets.only(right: 16),
      leading: DrawerButton(
        style: ButtonStyle(iconColor: MaterialStatePropertyAll(Colors.white70)),
      ),
      title: TextField(
        cursorColor: Colors.white38,
        style: TextStyle(color: Colors.white, fontSize: 18),
        decoration: InputDecoration(
            hintText: 'Search in emails',
            hintStyle: TextStyle(color: Colors.white38, fontSize: 18),
            border: InputBorder.none),
      ),
      trailing: CircleAvatar(
        child: Text(
          'AM',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
    ),
  );
}

class MeetApp extends StatefulWidget {
  @override
  State<MeetApp> createState() => _MeetAppState();
}

class _MeetAppState extends State<MeetApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Row(
                  children: [
                    DrawerButton(
                      style: ButtonStyle(
                          iconColor: MaterialStatePropertyAll(Colors.white)),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          'Meet',
                          style: TextStyle(color: Colors.white70, fontSize: 25),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      child: Text(
                        'AM',
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.blue,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                        child: FilledButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(129, 211, 225, 1))),
                      onPressed: () {},
                      child: Text(
                        'New meeting',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    )),
                    SizedBox(
                      width: 7,
                    ),
                    Expanded(
                      child: OutlinedButton(
                        style: ButtonStyle(
                            overlayColor: MaterialStatePropertyAll(
                                Color.fromRGBO(129, 211, 225, 100))),
                        onPressed: () {},
                        child: Text(
                          'New meeting',
                          style: TextStyle(
                              color: Color.fromRGBO(129, 211, 225, 1)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.63,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.lightBlue,
                            foregroundImage:
                                AssetImage('assets/images/meet-app.jpg'),
                            radius: 80,
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Container(
                            width: 260,
                            child: Text(
                              textAlign: TextAlign.center,
                              'Get a link that you can share',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Container(
                            width: 260,
                            child: Text(
                              textAlign: TextAlign.center,
                              'Tap New meeting to get a link that you can send to people that you want to meet with',
                              style: TextStyle(
                                color: Colors.blueGrey.shade200,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.circle,
                    size: 10,
                    color: Color.fromRGBO(129, 211, 225, 1),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.circle,
                    size: 10,
                    color: Colors.white38,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ComposeEmail extends StatefulWidget {
  const ComposeEmail({super.key});

  @override
  State<ComposeEmail> createState() => _ComposeEmailState();
}

class _ComposeEmailState extends State<ComposeEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(11, 21, 22, 1),
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white70,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color.fromRGBO(11, 21, 22, 1),
        actions: [
          TextButton(
              onPressed: () {},
              child: Icon(
                Icons.attachment_rounded,
                color: Colors.white70,
              )),
          TextButton(
              onPressed: () {},
              child: Icon(
                Icons.send_outlined,
                color: Colors.white70,
              )),
          PopupMenuButton(
            color: Color.fromRGBO(11, 21, 22, 1),
            iconColor: Colors.white70,
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(
                  'Schedule send',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
              PopupMenuItem(
                child: Text(
                  'Add from Contacts',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
              PopupMenuItem(
                child: Text(
                  'Confidential mode',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
              PopupMenuItem(
                child: Text(
                  'Save draft',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
              PopupMenuItem(
                child: Text(
                  'Discard',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
              PopupMenuItem(
                child: Text(
                  'Settings',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
              PopupMenuItem(
                child: Text(
                  'Help and Feedback',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        height: 600,
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'From',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Expanded(
                    child: TextField(
                      enableSuggestions: true,
                      cursorColor: Colors.white70,
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                      decoration: InputDecoration(border: InputBorder.none),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.white70,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'To',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Expanded(
                    child: TextField(
                      cursorColor: Colors.white70,
                      style: TextStyle(color: Colors.white70),
                      decoration: InputDecoration(border: InputBorder.none),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.white70,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: TextField(
                      cursorColor: Colors.white70,
                      style: TextStyle(color: Colors.white70),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Subject',
                        hintStyle:
                            TextStyle(color: Colors.white54, fontSize: 16),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.white70,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: TextFormField(
                      cursorColor: Colors.white70,
                      style: TextStyle(color: Colors.white70),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Compose email',
                        hintStyle:
                            TextStyle(color: Colors.white54, fontSize: 16),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
