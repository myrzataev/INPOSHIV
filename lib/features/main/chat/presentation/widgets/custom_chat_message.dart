import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inposhiv/config/routes/app_routes.dart';
import 'package:inposhiv/core/utils/app_colors.dart';
import 'package:inposhiv/core/utils/app_fonts.dart';
import 'package:inposhiv/core/widgets/loading_card.dart';

class CustomChatMessage extends StatelessWidget {
  final String content;
  final bool isImage;
  final bool isFile;
  final String fileUrl;
  final bool isSender; // флаг, который будет показывать, кто отправил сообщение

  const CustomChatMessage({
    super.key,
    required this.content,
    this.isImage = false,
    this.isFile = false,
    this.fileUrl = '',
    this.isSender =
        false, // true если это ваше сообщение, false если собеседника
  });

  @override
  Widget build(BuildContext context) {
    // Если сообщение отправлено вами, то выравниваем вправо, если собеседником - влево
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        child: isImage
            ? Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: InkWell(
                  onTap: () => router.pushNamed("seeDoc",
                      extra: true, queryParameters: {"docUrl": content}),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: CachedNetworkImage(
                      height: 250.h,
                      width: 200.w,
                      imageUrl: content,
                      fit: BoxFit.cover,
                      
                      progressIndicatorBuilder: (context, url, progress) {
                        return LoadingCard(height: 250.h, radius: 0);
                      },
                      errorWidget: (context, url, error) {
                        return const Center(
                          child: Icon(Icons.error, color: Colors.red),
                        );
                      },
                    ),
                  ),
                ),
              )
            : isFile
                ? Padding(
                  padding:  EdgeInsets.symmetric(vertical: 5.h),
                  child: InkWell(
                      onTap: () {
                        debugPrint("Open file: $fileUrl");
                        if (fileUrl.startsWith('http')) {
                          router.pushNamed("seeDoc",
                              extra: true, queryParameters: {"docUrl": fileUrl});
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(8.h),
                        width: 150.w,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Icon(Icons.insert_drive_file,
                                  color: Colors.blue),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  fileUrl.split('/').last,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                )
                : Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    child: Container(
                      decoration: BoxDecoration(
                        color:
                            isSender ? AppColors.chatsGreen : Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(8.h),
                      child: Text(content,
                          style:
                              AppFonts.w400s16.copyWith(color: Colors.black)),
                    ),
                  ),
      ),
    );
  }
}
