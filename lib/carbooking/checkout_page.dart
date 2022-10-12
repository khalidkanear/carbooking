import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class CheckOutPage extends StatelessWidget {
  CheckOutPage({Key? key}) : super(key: key);
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
                const Text('Checkout',
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
                    child: const Image(
                      height: 110,
                      width: 110,
                      fit: BoxFit.fill,
                      image: AssetImage('assets/googlemap.jpg'),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.account_balance_wallet_outlined),
                            const Text('Payment Method'),
                            const Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.edit,
                                  size: 15,
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Icon(Icons.currency_rupee),
                            Text('Cash'),
                            Spacer(),
                            Text('Rs.3600')
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        Row(
                          children: [
                            const Icon(Icons.calendar_month),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Order Summary',
                                  style: TextStyle(color: Colors.black),
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        receiptRowdata(text: 'Total Amount', value: 'RS.3600'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              backgroundColor: Colors.black.withOpacity(0.6),
                              content: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                height: 130,
                                width: 80,
                                child: Column(
                                  children: [
                                    Image(
                                        height: 80,
                                        width: 80,
                                        image: AssetImage('assets/check.png')),
                                    Text(
                                      'Order Successfully placed',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                      // Alert(
                      //   buttons: [],
                      //   closeIcon: Container(),
                      //   context: context,
                      //   content: Text('Your Order Placed Successfully'),
                      //   type: AlertType.success,
                      // ).show();
                    },
                    child: Container(
                      decoration: const BoxDecoration(color: Color(0xff1e3161)),
                      height: 40,
                      child: const Center(
                        child: Text('Place Order',
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
