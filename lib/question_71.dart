import 'package:flutter/material.dart';
import 'package:flutter_assignment_module_4/question_70.dart';

class GalleryNavDrawer extends StatefulWidget {
  @override
  State<GalleryNavDrawer> createState() => _GalleryNavDrawerState();
}

List<AssetImage> _galleryList = [
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
];
List<AssetImage> _audioList = [
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
];
List<AssetImage> _videoList = [
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
  AssetImage('assets/gallery/IMG_20220609_165753.png'),
  AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
  AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
  AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
];

class _GalleryNavDrawerState extends State<GalleryNavDrawer> {
  var _navIndex = 0;

  List<NavWidgetValue> _navList = [
    NavWidgetValue(widget: Gallery(), appbar: 'Gallery'),
    NavWidgetValue(widget: Audio(), appbar: 'Audio'),
    NavWidgetValue(widget: Videos(), appbar: 'Videos'),
  ];

  _changeScreen(int index) {
    setState(() {
      _navIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_navList[_navIndex].appbar),
      ),
      body: _navList[_navIndex].widget,
      drawer: SafeArea(
        child: Drawer(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Card(
                  elevation: 20,
                  child: ListTile(
                    titleTextStyle:
                        TextStyle(fontSize: 20, color: Colors.black),
                    onTap: () {
                      _changeScreen(0);
                      Navigator.pop(context);
                    },
                    title: Text('Gallery'),
                    leading: Icon(
                      Icons.photo_size_select_actual_outlined,
                      size: 40,
                    ),
                    trailing: Text(_galleryList.length.toString()),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Card(
                  elevation: 20,
                  child: ListTile(
                    titleTextStyle:
                        TextStyle(fontSize: 20, color: Colors.black),
                    onTap: () {
                      _changeScreen(1);
                      Navigator.pop(context);
                    },
                    title: Text('Audio'),
                    leading: Icon(
                      Icons.audiotrack_sharp,
                      size: 40,
                    ),
                    trailing: Text(_audioList.length.toString()),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Card(
                  elevation: 20,
                  child: ListTile(
                    titleTextStyle:
                        TextStyle(fontSize: 20, color: Colors.black),
                    onTap: () {
                      _changeScreen(2);
                      Navigator.pop(context);
                    },
                    title: Text('Videos'),
                    leading: Icon(
                      Icons.video_call_outlined,
                      size: 40,
                    ),
                    trailing: Text(_videoList.length.toString()),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
