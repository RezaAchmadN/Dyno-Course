// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class Video extends StatefulWidget {
//   @override
//   _VideoState createState() => _VideoState();
// }

// class _VideoState extends State<Video> {
//   String VideoURL = "https://www.youtube.com/watch?v=oxsBSCf5-B8&list=RDoxsBSCf5-B8&start_radio=1";

//   YoutubePlayerController _controller;

//   @override
//   void initState() {

//     _controller = YoutubePlayerController(
//         initialVideoId: YoutubePlayer.convertUrlToId(VideoURL)
//     );

//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Container(
//             child:Column(
//               crossAxisAlignment:CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 YoutubePlayerBuilder(
//                   player: YoutubePlayer(
//                     controller: _controller,
//                     aspectRatio:16/9,

//                     showVideoProgressIndicator: true,
//                   ),
//                 builder:(context,player){
//                     return Column(
//                     children: <Widget>[
//                      player
//                     ],
//                     );
//                 },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),


//     );
//   }
// }