import 'package:finefound/constants/colors.dart';
import 'package:finefound/provider/dark_theme_provider.dart';
import 'package:finefound/utils/booking_confirmed.dart';
import 'package:finefound/widgets/custom_field.dart';
import 'package:finefound/widgets/payment_options.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckOutScreen extends StatelessWidget {
  final VoidCallback function;
  CheckOutScreen(this.function, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Theme.of(context).colorScheme.background),
        // color: Colors.red,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CheckOut",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Billing Details",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomField(
                      title: "First Name",
                      placeholder: "John Doe",
                      type: TextInputType.text,
                      controller: TextEditingController(),
                    ),
                    CustomField(
                      title: "Last Name",
                      placeholder: "00",
                      type: TextInputType.text,
                      controller: TextEditingController(),
                    ),
                    CustomField(
                      title: "Company Name",
                      placeholder: "John Doe",
                      type: TextInputType.text,
                      controller: TextEditingController(),
                    ),
                    CustomField(
                      title: "Country / Region",
                      placeholder:
                          "For home delivery services select the following box",
                      type: TextInputType.text,
                      controller: TextEditingController(),
                    ),
                    CustomField(
                      title: "Street Address (optional)",
                      placeholder: "abc@gmail.com",
                      type: TextInputType.text,
                      controller: TextEditingController(),
                    ),
                    CustomField(
                      title: "Postcode / ZIP",
                      placeholder: "-",
                      type: TextInputType.number,
                      controller: TextEditingController(),
                    ),
                    CustomField(
                      title: "Town / City",
                      placeholder: "-",
                      type: TextInputType.text,
                      controller: TextEditingController(),
                    ),
                    CustomField(
                      title: "Province",
                      placeholder: "-",
                      type: TextInputType.text,
                      controller: TextEditingController(),
                    ),
                    CustomField(
                      title: "Phone",
                      placeholder: "-",
                      type: TextInputType.number,
                      controller: TextEditingController(),
                    ),
                    CustomField(
                      title: "Email Address",
                      placeholder: "hello@example.com",
                      type: TextInputType.emailAddress,
                      controller: TextEditingController(),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 7,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 22, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your Order",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '\$97.00',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shopping & Handling',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '\$19.99',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tax',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '\$4.00',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '\$120.00',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 7,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 22.0, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Payment Method",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    PaymentOptions(
                        function: () {},
                        image: 'assets/icons/PayPal.png',
                        title: 'Tarjeta de credito (Stripe)',
                        subtitle: "**** 1234"),
                    PaymentOptions(
                        function: () {},
                        image: 'assets/icons/Visa.png',
                        title: 'Pay with Credit Card',
                        subtitle: "**** 1234"),
                    PaymentOptions(
                        function: () {},
                        image: 'assets/icons/GPay.png',
                        title: 'Google Pay',
                        subtitle: "**** 1234"),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/icons/lock.png'),
                        Text(
                          'We protect your payment information using encryption to provide bank level \nsecurity.',
                          style: TextStyle(
                              fontSize: 8, color: Colors.grey.shade500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PlaceOrder(() {
                                      function();
                                    })));
                          },
                          child: Container(
                            width: 130,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.circular(35)),
                            child: Center(
                                child: Text(
                              "Place Order",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Provider.of<DarkThemeProvider>(context)
                                          .themeMode ==
                                      ThemeMode.dark
                                  ? Colors.grey.shade600
                                  : Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(35)),
                          child: Center(
                              child: Text(
                            "Cancel",
                          )),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
