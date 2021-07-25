import 'package:flutter/material.dart';

import 'package:flutter_chat_ui/flutter_chat_ui.dart';

import 'package:nutrizy_app_ui/ProviderModels/chat_page_provider.dart';
import 'package:nutrizy_app_ui/pages/head_pages/other_pages/video_call_page.dart';
import 'package:nutrizy_app_ui/widgets/app_bar_widgets/chat_app_bar.dart';

import 'package:provider/provider.dart';

class ChatPageN extends StatefulWidget {
  const ChatPageN({Key? key, required this.image, required this.title})
      : super(key: key);
  final String image;
  final String title;
  @override
  _ChatPageNState createState() => _ChatPageNState();
}

class _ChatPageNState extends State<ChatPageN> {
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
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: Colors.white10,
        centerTitle: true,
        title: ChatAppBar(
            image: widget.image,
            text: widget.title,
            iconOf: IconButton(
                onPressed: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      opaque: false,
                      pageBuilder: (BuildContext context, _, __) {
                        return Material(
                            type: MaterialType.transparency,
                            child: VideoCallPage());
                      }));
                },
                icon: Icon(
                  Icons.videocam,
                  size: 27,
                  color: Colors.grey[800],
                ))),
      ),
      body: Container(
        child: Chat(
          messages: _modelProvider.getMessage,
          onAttachmentPressed: () =>
              _modelProvider.handleAtachmentPressed(context),
          onMessageTap: _modelProvider.handleMessageTap,
          onPreviewDataFetched: _modelProvider.handlePreviewDataFetched,
          onSendPressed: _modelProvider.handleSendPressed,
          user: _modelProvider.getUser,
        ),
      ),
    );
  }
}
