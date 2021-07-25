import 'package:flutter/material.dart';
import 'package:nutrizy_app_ui/models/chat_model_n.dart';
import 'package:nutrizy_app_ui/nutritionist_pages/head_pages/other_pages/chat_page_n.dart';
import 'package:nutrizy_app_ui/widgets/global_widgets/to_my_profile_avatar.dart';

import 'package:nutrizy_app_ui/widgets/nutritionist_widgets/navigation2_n/search_box.dart';

import '../../route.generator.dart';

class Navigation2PageN extends StatelessWidget {
  const Navigation2PageN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Column(
        children: [
          SearchBox(),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Direct Message',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              CircleAvatar(
                radius: 17,
                child: Icon(
                  Icons.add_outlined,
                  size: 28,
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
            height: 35,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: listChatModel.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChatPageN(
                                  image: listChatModel[index].leading,
                                  title: listChatModel[index].title)),
                        );
                      },
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage(listChatModel[index].leading),
                      ),
                      title: Text(listChatModel[index].title),
                      subtitle: Text(listChatModel[index].subtitle),
                      trailing: Text(listChatModel[index].trailing));
                }),
          )
        ],
      ),
    );
  }
}

class Navigation2AppBarN extends StatelessWidget {
  const Navigation2AppBarN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: Colors.white10,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Chat',
                style: TextStyle(fontSize: 22, color: Colors.black),
              ),
              ToMyProfileAvatar(
                image: "assets/Djon.png",
                navigateTo: RouteGenerator.my_profile_page_n,
              )
            ],
          ),
        ));
  }
}
