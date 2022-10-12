import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/carbooking/checkout_page.dart';

class CartViewPage extends StatelessWidget {
  CartViewPage({Key? key}) : super(key: key);
  final int index = 0;
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

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(color: Color(0xff1e3161)),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
              width: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                const Text('Your Cart',
                    style: TextStyle(color: Colors.white, fontSize: 20))
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height - 80,
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  AnotherStepper(
                    inverted: true,
                    activeIndex: index,
                    dotWidget: Container(
                      height: 27,
                      width: 27,
                      decoration: BoxDecoration(
                        color: const Color(0xff1e3161),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.indigo, width: 2),
                      ),
                      child: Center(
                        child: index == 0
                            ? Text(
                                '${index + 1}',
                                style: const TextStyle(color: Colors.white),
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
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff1e3161),
                    ),
                    child: Row(
                      children: [
                        const Image(
                          height: 110,
                          width: 110,
                          fit: BoxFit.fill,
                          image: AssetImage('assets/emgrand2.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Mounting PW920545',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Rs 3,000',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              iconSize: 30,
                              onPressed: (() {}),
                              icon: const Icon(
                                Icons.remove_circle,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              '1',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            IconButton(
                              iconSize: 30,
                              onPressed: (() {}),
                              icon: const Icon(
                                Icons.add_circle,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        receiptRowdata(text: 'Subtotal', value: 'Rs.3500'),
                        const SizedBox(
                          height: 10,
                        ),
                        receiptRowdata(text: 'Delivery Fee', value: 'Rs.100'),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Icon(Icons.receipt_long),
                            TextButton(
                                onPressed: () {},
                                child: const Text('Apply a Voucher'))
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        receiptRowdata(text: 'Total Amount', value: 'RS.3600'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: (() {
                      Get.to(() => CheckOutPage());
                    }),
                    child: Container(
                      decoration: const BoxDecoration(color: Color(0xff1e3161)),
                      height: 40,
                      child: const Center(
                        child: Text('Review Payment and Address',
                            style:
                                TextStyle(color: Colors.white, fontSize: 17)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget receiptRowdata({String? text, String? value}) {
  return Row(
    children: [Text('$text'), const Spacer(), Text('$value')],
  );
}
