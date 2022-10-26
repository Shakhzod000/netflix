import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/pages/page_one/page_one_provider.dart';
import 'package:provider/provider.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PageOneProvider>(
      builder: (context, pageValue, _) => Scaffold(
        backgroundColor: Colors.grey[900]!.withOpacity(0.5),
        appBar: AppBar(
          backgroundColor: Colors.grey[900]!.withOpacity(0.5),
          elevation: .0,
          bottomOpacity: .0,
          actions: [
            IconButton(
                onPressed: () {},
                splashRadius: 20.sp,
                icon: const Icon(Icons.video_collection)),
            IconButton(
                onPressed: () {},
                splashRadius: 20.sp,
                icon: const Icon(CupertinoIcons.search)),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 210.h,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'House of the Dragon',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 13.h,
                ),

                ///row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Sci-Fi,Fantasy,Dramma...',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                        ),
                        Row(
                          children: [
                            const Text(
                              '2022',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            const Icon(
                              Icons.star_border,
                              color: Colors.grey,
                              size: 15,
                            ),
                            const Text(
                              '8.653',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      height: 35.h,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.play_arrow,
                              color: Colors.black,
                            ),
                            Text(
                              'Watch now',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),

                SizedBox(
                  height: 25.h,
                ),

                /// row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    rowWidget(text: 'Trailer', icon: Icons.ondemand_video),
                    rowWidget(
                        text: 'Watchlist', icon: Icons.collections_bookmark),
                    rowWidget(text: 'Collection', icon: Icons.add_box_rounded),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                descriptionText(
                    text:
                        "Ish qilish bilan yol ochiladi. Oldin yol ochilsin keyin olga qadam tashlayman, deb kutib turmang. Buning misoli ikki chetiga daraxtlar ekilgan kattayolga oxshaydi. Yol boshida turib qarasangiz, ozgina masofadan keyin daraxtlar bir-biriga yopishib, yol berkilib qolgandek korinadi. Lekin yurgan saringiz sizga yol ochilib ketaveradi."),
                SizedBox(
                  height: 10.h,
                ),

                Text(
                  'Episodes',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp),
                ),

                SizedBox(
                  height: 10.h,
                ),

                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 35.h,
                    width: 110.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[600],
                    ),
                    child: PopupMenuButton(
                        position: PopupMenuPosition.under,
                        elevation: .0,
                        padding: EdgeInsets.zero,
                        color: Colors.grey[400],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Season 1',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            )
                          ],
                        ),
                        itemBuilder: (context) => [
                              const PopupMenuItem(child: Text('Season 1')),
                              const PopupMenuItem(child: Text('Season 2')),
                              const PopupMenuItem(child: Text('Season 3')),
                              const PopupMenuItem(child: Text('Season 4'))
                            ]),
                  ),
                ),

                SizedBox(
                  height: 15.h,
                ),

                seasonWidget(
                    name: '1.The Heirs of the Dragons', dateTime: '2022-08-28'),
                descriptionText(
                    text:
                        "Viserys hosts a dives deep into celebrate thr birth of thissecond child. Rhaenyra welcomes her uncle Daemon back to the Red Keep"),
                seasonWidget(
                    name: '2.The Rogue Prince', dateTime: '2022-09-04'),
                descriptionText(
                    text:
                        "Viserys hosts a dives deep into celebrate thr birth of thissecond child. Rhaenyra welcomes her uncle Daemon back to the Red Keep"),
                seasonWidget(
                    name: '3.Second of His Name', dateTime: '2022-09-11'),
                descriptionText(
                    text:
                        "Viserys hosts a dives deep into celebrate thr birth of thissecond child. Rhaenyra welcomes her uncle Daemon back to the Red Keep"),
                seasonWidget(
                    name: '3.King of the Narrow Sea', dateTime: '2022-10-22')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget seasonWidget({required String? name, required String? dateTime}) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 100.w,
        color: Colors.black,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name!,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              Text(
                dateTime!,
                style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              )
            ],
          ),
          IconButton(
              onPressed: () {},
              splashRadius: 15.sp,
              icon: Icon(
                Icons.remove_red_eye,
                size: 23.sp,
                color: Colors.grey[600],
              ))
        ],
      ),
    ),
  );
}

Widget descriptionText({required String? text}) {
  return RichText(
      text: TextSpan(children: [
    TextSpan(text: text!, style: TextStyle(fontSize: 14.sp, color: Colors.grey))
  ]));
}

Widget rowWidget({required String? text, required IconData? icon}) {
  return Container(
    color: Colors.transparent,
    child: Row(
      children: [
        InkWell(
            onTap: () {},
            child: Icon(
              icon,
              color: Colors.grey[600],
            )),
        SizedBox(
          width: 5.w,
        ),
        Text(
          text!,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    ),
  );
}
