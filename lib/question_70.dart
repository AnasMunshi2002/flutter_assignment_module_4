import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class NavWidgetValue {
  Widget widget;
  String appbar;

  NavWidgetValue({required this.widget, required this.appbar});
}

class _BottomNavState extends State<BottomNav> {
  List<AssetImage> _galleryList = [];
  List<NavWidgetValue> _navList = [
    NavWidgetValue(widget: Gallery(), appbar: 'Gallery'),
    NavWidgetValue(widget: Audio(), appbar: 'Audio'),
    NavWidgetValue(widget: Videos(), appbar: 'Videos'),
  ];
  var _navIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_navList[_navIndex].appbar),
      ),
      body: _navList[_navIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black54,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
        currentIndex: _navIndex,
        onTap: (value) {
          setState(() {
            _navIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.photo_size_select_actual_outlined),
              label: 'Gallery'),
          BottomNavigationBarItem(
            icon: Icon(Icons.audiotrack_outlined),
            label: 'Audio',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_camera_back_outlined), label: 'Videos'),
        ],
      ),
    );
  }
}

class Gallery extends StatefulWidget {
  @override
  State<Gallery> createState() => _GalleryState();
}

List<AssetImage> _galleyList = [
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

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: _galleyList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: _galleyList[index],
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

class Videos extends StatefulWidget {
  const Videos({super.key});

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Videos'),
    );
  }
}
