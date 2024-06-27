import 'package:flutter/material.dart';

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

class NavWidgetValue {
  Widget widget;
  String appbar;

  NavWidgetValue({required this.widget, required this.appbar});
}

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

class Gallery extends StatefulWidget {
  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: _galleryList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: _galleryList[index],
            ),
          ),
        ),
      ),
      height: double.maxFinite,
    );
  }
}

class AudioClass {
  String artist;
  String song;
  String album;

  AudioClass({required this.artist, required this.song, required this.album});
}

class Audio extends StatefulWidget {
  @override
  State<Audio> createState() => _AudioState();
}

class _AudioState extends State<Audio> {
  List<AudioClass> _audioList = [
    AudioClass(artist: 'Atif Aslam', song: 'Aadat', album: 'Aadat'),
    AudioClass(artist: 'Arjit Singh', song: 'Kesariya', album: 'Brahmastra'),
    AudioClass(
        artist: 'Adnan Sami', song: 'Bhar Do jholi Meri', album: 'album'),
    AudioClass(artist: 'Alan Walker', song: 'Alone', album: 'Alone'),
    AudioClass(artist: 'AR Rahman', song: 'Kun faya Kun', album: 'Rockstar'),
    AudioClass(artist: 'AP Dhillon', song: 'Excused', album: 'Excuses'),
    AudioClass(artist: 'AP Dhillon', song: 'Brown Munde', album: 'Brown Munde'),
    AudioClass(artist: 'Rafi', song: 'Gulabi Aankhen', album: 'album'),
    AudioClass(artist: 'Rosa Linn', song: 'Snap', album: 'Snap'),
    AudioClass(artist: 'Shubh', song: 'King Shit', album: 'king shit'),
    AudioClass(artist: 'Shub', song: 'Cheques', album: 'cheques'),
    AudioClass(artist: 'Ghost', song: 'Mary On a Cross', album: 'album'),
    AudioClass(artist: 'Justin Beiber', song: 'Yummy', album: 'album'),
    AudioClass(artist: 'The Weekend', song: 'Blinding Lights', album: 'album'),
    AudioClass(artist: 'Avicii', song: 'The Nights', album: 'album'),
    AudioClass(artist: 'Jaynes Young', song: 'Infinity', album: 'album'),
    AudioClass(artist: 'Ed Sheeran', song: 'Perfect', album: 'album'),
    AudioClass(artist: 'Sia', song: 'Unstoppable', album: 'album'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5,
      ),
      height: double.maxFinite,
      child: ListView.builder(
        itemCount: _audioList.length,
        itemBuilder: (context, index) => ListTile(
          onTap: () {},
          title: Text(
            _audioList[index].song,
            style: TextStyle(fontSize: 25),
          ),
          subtitle: Row(
            children: [
              Row(children: [
                Icon(Icons.album),
                Text(_audioList[index].album),
              ]),
              Row(children: [
                Icon(Icons.mic),
                Text(_audioList[index].artist),
              ])
            ],
          ),
          trailing: PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.play_circle_fill_outlined),
                  title: Text('Play'),
                ),
              ),
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.delete_forever_outlined),
                  title: Text('Delete'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class VideoItem {
  AssetImage thumbnail;
  String name;
  String length;

  VideoItem(
      {required this.thumbnail, required this.name, required this.length});
}

class Videos extends StatefulWidget {
  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  List<VideoItem> _videoList = [
    VideoItem(
        thumbnail: AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
        name: 'Video 1',
        length: '2:00'),
    VideoItem(
        thumbnail: AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
        name: 'Video 2',
        length: '1:00'),
    VideoItem(
        thumbnail: AssetImage('assets/gallery/IMG_20220609_165753.png'),
        name: 'Video 3',
        length: '3:00'),
    VideoItem(
        thumbnail: AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
        name: 'Video 4',
        length: '1:20'),
    VideoItem(
        thumbnail: AssetImage('assets/gallery/IMG_20221224_215139_661.jpg'),
        name: 'Video 5',
        length: '2:10'),
    VideoItem(
        thumbnail: AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
        name: 'Video 6',
        length: '2:02'),
    VideoItem(
        thumbnail: AssetImage('assets/gallery/IMG_20220609_165753.png'),
        name: 'Video 7',
        length: '0:20'),
    VideoItem(
        thumbnail: AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
        name: 'Video 8',
        length: '3:00'),
    VideoItem(
        thumbnail: AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
        name: 'Video 9',
        length: '4:00'),
    VideoItem(
        thumbnail: AssetImage('assets/gallery/IMG_20220609_165753.png'),
        name: 'Video 10',
        length: '2:01'),
    VideoItem(
        thumbnail: AssetImage('assets/gallery/IMG_20220607_101022_824.jpg'),
        name: 'Video 11',
        length: '1:10'),
    VideoItem(
        thumbnail: AssetImage('assets/gallery/IMG_20220618_185736_285.jpg'),
        name: 'Video 12',
        length: '0:20'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: _videoList.length,
        itemExtent: 100,
        itemBuilder: (context, index) => MaterialButton(
          onPressed: () {},
          padding: EdgeInsets.all(0),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.black26,
                          image: DecorationImage(
                              image: _videoList[index].thumbnail,
                              fit: BoxFit.fitWidth)),
                    ),
                    Center(
                      widthFactor: 3.3,
                      child: Icon(
                        Icons.play_arrow,
                        size: 40,
                        color: Colors.white70,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _videoList[index].name,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(_videoList[index].length),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
