import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/features/main/chat/data/chat_model_mocked.dart';
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

  @override
  Widget build(BuildContext context) {
    List<ChatModelMockedModel> data = ChatModelMockedData.data;
    return Scaffold(
      drawer: const CustomDrawer(),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Builder(
              builder: (context) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomSearchWidget(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: SvgPicture.asset(SvgImages.burgerMenu)),
                  CustomSearchWidget(
                      onTap: () {
                        GoRouter.of(context).pushNamed("searchScreen");
                        // GoRouter.of(context).pushNamed("searchScreen");
                      },
                      child: SvgPicture.asset(SvgImages.search))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: const Divider(
                color: AppColors.borderColor,
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    final currentItem = data[index];
                    return InkWell(
                      onTap: () {
                        GoRouter.of(context).pushNamed("chatScreen");
                      },
                      child: SizedBox(
                        height: 72.h,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 10.w),
                              child: CircleAvatar(
                                radius: 25.r,
                                backgroundImage:
                                    AssetImage(currentItem.profilePhoto),
                              ),
                            ),
                            SizedBox(
                              width: 210.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    currentItem.userName,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: true,
                                    style: AppFonts.w700s20.copyWith(
                                        color: AppColors.accentTextColor),
                                  ),
                                  Text(
                                    currentItem.lastMessage,
                                    style: AppFonts.w400s16,
                                    maxLines: 1,
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      currentItem.date,
                                      style: AppFonts.w400s16,
                                    ),
                                    SvgPicture.asset(
                                      SvgImages.send,
                                      height: 20.h,
                                      width: 20.w,
                                    )
                                  ],
                                ),
                                currentItem.unreadMessages != 0
                                    ? CircleAvatar(
                                        radius: 12.r,
                      
                                        backgroundColor:
                                            AppColors.accentTextColor,
                                        child: Text(
                                          "${currentItem.unreadMessages}",
                                          style: const TextStyle(color: Colors.white),
                                        ),
                                      )
                                    : const SizedBox()
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: AppColors.borderColor,
                    );
                  },
                  itemCount: data.length),
            )
          ],
        ),
      )),
    );
    // );
  }
}
