import 'package:flutter/material.dart';
import 'package:gastro_app/Screens/home/faq_tab/reusable_text.dart';

class FaqTabScreen extends StatefulWidget {
  const FaqTabScreen({Key? key}) : super(key: key);

  @override
  State<FaqTabScreen> createState() => _FaqTabScreenState();
}

class _FaqTabScreenState extends State<FaqTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics:const  NeverScrollableScrollPhysics(),
        children: [
          ReusableText(
            color: Colors.grey.shade700,
            text: 'What are your average meal macros?',
            weight: FontWeight.w600,
            size: 18,
          ),
          const SizedBox(
            height: 10,
          ),
          ReusableText(
            color: Colors.grey.shade700,
            text: 'All our meals macros in each meals?',
            weight: FontWeight.w400,
            size: 16,
          ),
          const SizedBox(
            height: 30,
          ),
          ReusableText(
            color: Colors.grey.shade700,
            text: 'What are your average weight for each \nmeal?',
            weight: FontWeight.w600,
            size: 18,
          ),
          const SizedBox(
            height: 10,
          ),
          ReusableText(
            color: Colors.grey.shade700,
            text:
                'On average our meal are 125g to of\nprotein source and 150g of carb source',
            weight: FontWeight.w400,
            size: 16,
          ),
          const SizedBox(
            height: 30,
          ),
          ReusableText(
            color: Colors.grey.shade700,
            text: 'Where you deliver to?',
            weight: FontWeight.w600,
            size: 18,
          ),
          const SizedBox(
            height: 10,
          ),
          ReusableText(
            color: Colors.grey.shade700,
            text:
                'UK - England Scotland And Wales\n\nKuwait - All Governorates',
            weight: FontWeight.w400,
            size: 16,
          ),
          const SizedBox(
            height: 30,
          ),
          ReusableText(
            color: Colors.grey.shade700,
            text: 'Where are the delivery days?',
            weight: FontWeight.w600,
            size: 18,
          ),
          const SizedBox(
            height: 10,
          ),
          ReusableText(
            color: Colors.grey.shade700,
            text:
                'UK delivery days are Tuesday and Friday.\n\n\nPlease see your email for delivery information\nfor Dx Express, Parcel Force or FedEx. We aim to have all deliveries made before 1:00 pm.\n\nOn some rare occasion, due to shipping delays, Your box may be delayed by 24 hours. However\nall boxes are safe 48 hours as they are packed\nin specially insulated boxes.\n\nKuwait - Daily except Friday\n\nAll delivery u Kuwait are hand delivered \nbefore 12 with the exception of Umm Al Hayman,Kbab,Wafara,etc..they will be delivered between 1 amd 3 pm',
            weight: FontWeight.w400,
            size: 16,
          ),
          const SizedBox(
            height: 30,
          ),
          ReusableText(
            color: Colors.grey.shade700,
            text: 'Is your food Halal?',
            weight: FontWeight.w600,
            size: 18,
          ),
          const SizedBox(
            height: 10,
          ),
          ReusableText(
            color: Colors.grey.shade700,
            text: 'We sell only Halal',
            weight: FontWeight.w400,
            size: 16,
          ),
          const SizedBox(
            height: 30,
          ),
          ReusableText(
            color: Colors.grey.shade700,
            text: 'How do i order?',
            weight: FontWeight.w600,
            size: 18,
          ), const SizedBox(
            height: 10,
          ),
          ReusableText(
            color: Colors.grey.shade700,
            text: 'Go to choose a pacakage on the home page\nand follow the step by step instruction to check\nout',
            weight: FontWeight.w400,
            size: 16,
          ),
          const SizedBox(
            height: 40,
          ),

          ReusableText(
            color: Colors.grey.shade700,
            text: 'What is the shelf life?',
            weight: FontWeight.w600,
            size: 18,
          ),
          const SizedBox(
            height: 10,
          ),
          ReusableText(
            color: Colors.grey.shade700,
            text: 'All our meals have production and expiry dates\nlabels',
            weight: FontWeight.w400,
            size: 16,
          ),
          const SizedBox(
            height: 40,
          ),
          ReusableText(
            color: Colors.grey.shade700,
            text: 'Allergy advise',
            weight: FontWeight.w600,
            size: 18,
          ),
          const SizedBox(
            height: 10,
          ),
          ReusableText(
            color: Colors.grey.shade700,
            text: 'We cannot cater for specific allergies as we batch cook our food. Please refer to our allergens section for more information',
            weight: FontWeight.w400,
            size: 16,
          ),
          const SizedBox(
            height: 40,
          ),
          ReusableText(
            color: Colors.grey.shade700,
            text: 'Can i freeze my meals',
            weight: FontWeight.w600,
            size: 18,
          ),
          const SizedBox(
            height: 10,
          ),
          ReusableText(
            color: Colors.grey.shade700,
            text: 'Yes all of our meals can be frozen for up to 1 month.',
            weight: FontWeight.w400,
            size: 16,
          ),
          const SizedBox(
            height: 40,
          ),
          ReusableText(
            color: Colors.grey.shade700,
            text: 'Can i change my address?',
            weight: FontWeight.w600,
            size: 18,
          ),
          const SizedBox(
            height: 10,
          ),
          ReusableText(
            color: Colors.grey.shade700,
            text: 'yes you can change your address from the "My Plans" section of the app 3 days before box is dispatched ',
            weight: FontWeight.w400,
            size: 16,
          ),
          const SizedBox(
            height: 40,
          ),
          ReusableText(
            color: Colors.grey.shade700,
            text: 'Can I Pause My Subscription If I Am \nTraveling?',
            weight: FontWeight.w600,
            size: 18,
          ),
          const SizedBox(
            height: 10,
          ),
          ReusableText(
            color: Colors.grey.shade700,
            text: 'Yes, from "My Plans" Section please pause your plan 3 days before the box is dispatched ',
            weight: FontWeight.w400,
            size: 16,
          ),
        ],
      ),
    );
  }
}
