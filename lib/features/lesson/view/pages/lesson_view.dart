import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:signeducation/core/local_data/shared_preferenc.dart';
import 'package:signeducation/core/resources/constants.dart';
import 'package:signeducation/core/resources/enums.dart';
import 'package:signeducation/core/responsive_and_adaptive/responsive.dart';
import 'package:signeducation/features/lesson/view/components/lesson_cover.dart';

import '../../models/lesson_model.dart';
import '../components/lesson_item.dart';

class LessonView extends StatefulWidget {
  const LessonView({
    super.key,
    required this.lessons,
    required this.categories,
  });
  final List<LessonModel> lessons;
  final Categories categories;
  @override
  State<LessonView> createState() => _LessonViewState();
}

class _LessonViewState extends State<LessonView> {
  int? globalIndex;

  @override
  Widget build(BuildContext context) {
    double width = getWidth(context);
    double containerWidth = width * 0.8;
    double containerHeight = getHeight(context) * 0.2;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: containerWidth,
                height: containerHeight,
                padding: EdgeInsets.all(width * 0.05),
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    // check if user show all lesson or not ,so change its Color
                    color: widget.lessons.length == checkClicks.length
                        ? Colors.green
                        : Colors.orange,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          offset: const Offset(4, 4),
                          blurRadius: 5),
                    ]),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)),
                  child: globalIndex != null
                      ? (widget.lessons[globalIndex!].description.isNotEmpty
                          ? Column(
                              textDirection: TextDirection.rtl,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: LessonCover(
                                    name:
                                        '${widget.lessons[globalIndex!].cover}$globalIndex.jpg',
                                    width: containerWidth,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 8.0, left: 8.0, bottom: 8.0),
                                  child: Text(
                                    widget.lessons[globalIndex!].description,
                                    textDirection: TextDirection.rtl,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(color: Colors.white),
                                  ),
                                ),
                              ],
                            )
                          : LessonCover(
                              name:
                                  '${widget.lessons[globalIndex!].cover}$globalIndex.jpg',
                              width: containerWidth,
                              height: containerHeight * 0.8))
                      : null,
                ),
              ),
              Expanded(
                  child: GridView.builder(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.05 / 3, vertical: 10),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: width * 0.4,
                  crossAxisSpacing: width * 0.05 * 0.4,
                  mainAxisExtent: getHeight(context) * 0.025,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (context, index) => LessonItem(
                  buttonColor: checkClicks.contains(widget.lessons[index].name)
                      ? Colors.green
                      : Colors.orange,
                  label: widget.lessons[index].name,
                  tap: () {
                    log('globalIndex $globalIndex');
                    setState(() {
                      SharedPreference.addValue(
                              widget.categories.name.toString(),
                              widget.lessons[index].name)
                          .then((value) {
                        SharedPreference.getStringList(
                                widget.categories.name.toString())
                            .then((value) {
                          checkClicks = value;
                          globalIndex = index;
                        });
                      });
                    });
                  },
                ),
                itemCount: widget.lessons.length,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
