import 'package:flutter/material.dart';



import 'package:flutter_chat_ui/flutter_chat_ui.dart';

import 'package:nutrizy_app_ui/ProviderModels/chat_page_provider.dart';
import 'package:nutrizy_app_ui/pages/head_pages/other_pages/video_call_page.dart';
import 'package:nutrizy_app_ui/widgets/app_bar_widgets/chat_app_bar.dart';

import 'package:provider/provider.dart';

class Navigation2Page extends StatefulWidget {
  const Navigation2Page({Key? key}) : super(key: key);

  @override
  _Navigation2PageState createState() => _Navigation2PageState();
}

class _Navigation2PageState extends State<Navigation2Page> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      final _modelProvider =
          Provider.of<ChatPageProvider>(context, listen: false);

      _modelProvider.loadMessages();
    });
  }

  @override
  Widget build(BuildContext context) {
    final _modelProvider = Provider.of<ChatPageProvider>(context);
    return Container(
      
      child: Chat(
        messages: _modelProvider.getMessage,
        onAttachmentPressed: () =>
            _modelProvider.handleAtachmentPressed(context),
        onMessageTap: _modelProvider.handleMessageTap,
        onPreviewDataFetched: _modelProvider.handlePreviewDataFetched,
        onSendPressed: _modelProvider.handleSendPressed,
        user: _modelProvider.getUser,
      ),
    );
  }
}

class Navigation2AppBar extends StatelessWidget {
  const Navigation2AppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: Colors.white10,
        centerTitle: true,
        title: ChatAppBar(
            
            text: "John Terry",
            iconOf: IconButton(
                onPressed: () {
                   Navigator.of(context).push(PageRouteBuilder(
                  opaque: false,
                  pageBuilder: (BuildContext context, _, __) {
                    return Material(
                        type: MaterialType.transparency, child: VideoCallPage());
                  }));
                },
                icon: Icon(
                  Icons.videocam,
              size: 27  ,
                  
                  color: Colors.grey[800],
                ))),
      );
  }
}
