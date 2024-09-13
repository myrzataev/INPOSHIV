import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/custom_drawer.dart';
import 'package:inposhiv/features/main/home/presentation/widgets/search_widget.dart';
import 'package:inposhiv/resources/resources.dart';

class ChatTab extends StatefulWidget {
  const ChatTab({super.key});

  @override
  State<ChatTab> createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  ScrollController scrollController = ScrollController();
  // late ChatController chatController;
  // @override
  // void initState() {
  //   chatController = ChatController(
  //       initialMessageList: [],
  //       scrollController: scrollController,
  //       otherUsers: [],
  //       currentUser: ChatUser(id: "1", name: "Murat"));
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomSearchWidget(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: SvgPicture.asset(SVGImages.burgerMenu)),
                CustomSearchWidget(
                    onTap: () {}, child: SvgPicture.asset(SVGImages.search))
              ],
            ),
            //     body: SafeArea(
            //   child: ChatView(
            //     chatController: chatController,
            //     chatViewState: ChatViewState.hasMessages,
            //   ),
            // )
          ],
        ),
      )),
    );
    // );
  }
}
