import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
<<<<<<< HEAD

class DiscoverProvider extends ChangeNotifier{

  bool initialLoading = true;
  List<VideoPost> videos = [];
  
  
  Future<void> loadNextPage()async{
    //-> Cargar videos. 

    notifyListeners();
  }

}
=======
import 'package:toktik/infrastucture/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_post.dart';


class DiscoverProvider extends ChangeNotifier {
  
  // TODO: Repoository, DataSource


  bool initialLoading = true;  
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {

    //await Future.delayed( const Duration(seconds: 2) );

    final List<VideoPost> newVideos = videoPosts.map(
    (video)=> LocalVideoModel.fromJson(video).toVideoPostEntity()
    ).toList();

    videos.addAll( newVideos );
    initialLoading = false;
    notifyListeners();
  }
}

>>>>>>> class
