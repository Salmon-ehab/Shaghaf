import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/widgets/custom_button.dart';

import '../../../../../../core/widgets/custom_appbar.dart';
import 'membership_model.dart';

class MembershipBody extends StatefulWidget {
  const MembershipBody({super.key});

  @override
  State<MembershipBody> createState() => _MembershipBodyState();
}

class _MembershipBodyState extends State<MembershipBody> {
  bool isOption1Selected = false;
  bool isOption2Selected = false;

  List<String> member1 = [
    '1250 LE for one person',
    'included daily drink and movie night for you and your friends',
    '4 invitations for your friends  spend a day in Shagaf included drink '
  ];
  List<String> member2 = [
    '750 LE for one person',
    'One invitation for your friends  spend a day in Shagaf included drink '
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 45.h, left: 20.w, right: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CustomAppbar(text: "Membership"),
              MembershipModel(
                shouldCheck: isOption1Selected,
                headerText: 'A month',
                texts: member1,
                onchanged: (shouldCheck1) {
                  setState(() {
                    isOption1Selected = shouldCheck1;
                    if (isOption2Selected && shouldCheck1) {
                      isOption2Selected = false;
                    }
                  });
                },
              ),
              MembershipModel(
                shouldCheck: isOption2Selected,
                headerText: '15 Separate days',
                texts: member2,
                onchanged: (shouldCheck2) {
                  setState(() {
                    isOption2Selected = shouldCheck2;
                    if (isOption1Selected && shouldCheck2) {
                      isOption1Selected = false;
                    }
                  });
                },
              ),
            ],
          ),
          Padding(
            padding:  EdgeInsets.only(bottom: 30.h),
            child: Center(
                child: CustomButton(
                    text: 'Next',  height: 40.h, width: 342.w)),
          )
        ],
      ),
    );
  }
}
