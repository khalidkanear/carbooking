import 'package:another_stepper/widgets/horizontal_stepper.dart';
import 'package:another_stepper/widgets/vertical_stepper.dart';
import 'package:flutter/material.dart';

import 'package:another_stepper/dto/stepper_data.dart';
import 'package:get/get.dart';
import 'package:untitled/carbooking/cartview.dart';

class SparePartsDetailspage extends StatelessWidget {
  SparePartsDetailspage({Key? key}) : super(key: key);

  final List<StepperData> stepperData = [
    StepperData(
      title: "Cart",
      subtitle: "",
    ),
    StepperData(
      title: "Check Out",
      subtitle: "",
    ),
    StepperData(
      title: "Payment",
      subtitle: "",
    ),
  ];
  final int index = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          decoration: const BoxDecoration(color: Color(0xff1e3161)),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: const Icon(
                        Icons.arrow_back_ios_new_sharp,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Body Parts',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Get.to(() => CartViewPage()),
                      child: const Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 30),
                        //height: MediaQuery.of(context).size.height * 0.87,
                        // margin: EdgeInsets.only(top: 100),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            //stepper
                            AnotherStepper(
                              inverted: true,
                              activeIndex: index,
                              dotWidget: Container(
                                height: 27,
                                width: 27,
                                decoration: BoxDecoration(
                                  color: const Color(0xff1e3161),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.indigo, width: 2),
                                ),
                                child: Center(
                                  child: index == 0
                                      ? Text(
                                          '${index + 1}',
                                          style: const TextStyle(
                                              color: Colors.white),
                                        )
                                      : Text('${index + 1}}'),
                                ),
                              ),
                              barThickness: 5,
                              activeBarColor: const Color(0xff1e3161),
                              stepperList: stepperData,
                              stepperDirection: Axis.horizontal,
                              horizontalStepperHeight: 70,
                            ),
                            GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        childAspectRatio: 9 / 7,
                                        crossAxisSpacing: 8,
                                        mainAxisSpacing: 4),
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                itemCount: 4,
                                itemBuilder: ((context, index) {
                                  return Container(
                                    margin: const EdgeInsets.all(10),
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/emgrand2.png')),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                      ),
                                      color: Color(0xff1e3161),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            'Car Steering',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                debugPrint(
                                                    'Going to/detail Page');
                                              },
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 67),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    const Padding(
                                                      padding:
                                                          EdgeInsets.all(4.0),
                                                      child: Text(
                                                        'Rs:2500',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                    Container(
                                                      // margin: EdgeInsets.only(top: 30),
                                                      decoration:
                                                          const BoxDecoration(
                                                        color: Colors.white60,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        20),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        20)),
                                                      ),
                                                      width: 100,
                                                      height: 30,
                                                      child: const Center(
                                                          child: Text(
                                                        'Add to Cart',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                })),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class AnotherStepper extends StatelessWidget {
  /// Another stepper is a package, which helps build
  /// customizable and easy to manage steppers.
  ///
  /// The package and be used to build horizontal as well
  /// as vertical steppers just by providing [Axis] in the [gap] parameter.
  const AnotherStepper({
    Key? key,
    required this.stepperList,
    this.gap = 40,
    this.activeIndex = 0,
    required this.horizontalStepperHeight,
    required this.stepperDirection,
    this.inverted = false,
    this.activeBarColor = Colors.blue,
    this.inActiveBarColor = Colors.grey,
    this.barThickness = 2,
    this.dotWidget,
    this.titleTextStyle = const TextStyle(
      fontSize: 14,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    this.subtitleTextStyle = const TextStyle(
      fontSize: 12,
      color: Colors.grey,
      fontWeight: FontWeight.w500,
    ),
    this.scrollPhysics,
  }) : super(key: key);

  /// Stepper [List] of type [StepperData] to inflate stepper with data
  final List<StepperData> stepperList;

  /// Gap between the items in the stepper, Default = 40
  /// (Recommended to keep it greater than 20 in [Axis.vertical])
  /// (Recommended to keep it greater than 40 in [Axis.horizontal])
  final double gap;

  /// Active index, till which [index] the stepper will be highlighted
  final int activeIndex;

  /// Use Horizontal Stepper Height when using Horizontal stepper
  /// To provide the total height of the stepper
  final double horizontalStepperHeight;

  /// Stepper direction takes [Axis]
  /// Use [Axis.horizontal] to get horizontal stepper
  /// /// Use [Axis.vertical] to get vertical stepper
  final Axis stepperDirection;

  /// Inverts the stepper with text that is being used
  final bool inverted;

  /// Bar color for active step
  final Color activeBarColor;

  /// Bar color for inactive step
  final Color inActiveBarColor;

  /// Bar width/thickness/height
  final double barThickness;

  /// [Widget] for dot/point
  final Widget? dotWidget;

  /// [TextStyle] for title
  final TextStyle titleTextStyle;

  /// [TextStyle] for subtitle
  final TextStyle subtitleTextStyle;

  /// Scroll physics for listview
  final ScrollPhysics? scrollPhysics;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          stepperDirection == Axis.horizontal ? horizontalStepperHeight : null,
      child: ListView.builder(
        shrinkWrap: true,
        physics: scrollPhysics ?? const AlwaysScrollableScrollPhysics(),
        itemCount: stepperList.length,
        padding: EdgeInsets.zero,
        scrollDirection: stepperDirection,
        itemBuilder: (ctx, index) => getPreferredStepper(index: index),
      ),
    );
  }

  Widget getPreferredStepper({required int index}) {
    if (stepperDirection == Axis.horizontal) {
      return HorizontalStepperItem(
        index: index,
        item: stepperList[index],
        totalLength: stepperList.length,
        gap: gap,
        activeIndex: activeIndex,
        isInverted: inverted,
        inActiveBarColor: inActiveBarColor,
        activeBarColor: activeBarColor,
        barHeight: barThickness,
        dotWidget: dotWidget,
        titleTextStyle: titleTextStyle,
        subtitleTextStyle: subtitleTextStyle,
      );
    } else {
      return VerticalStepperItem(
        index: index,
        item: stepperList[index],
        totalLength: stepperList.length,
        gap: gap,
        activeIndex: activeIndex,
        isInverted: inverted,
        inActiveBarColor: inActiveBarColor,
        activeBarColor: activeBarColor,
        barWidth: barThickness,
        dotWidget: dotWidget,
        titleTextStyle: titleTextStyle,
        subtitleTextStyle: subtitleTextStyle,
      );
    }
  }
}
