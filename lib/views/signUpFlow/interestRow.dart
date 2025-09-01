import 'package:flutter/material.dart';
import 'package:muster_up/views/signUpFlow/interest.dart';

class MultipleInterest extends StatelessWidget {
  final List<String> groupedInterests; 
  final ValueNotifier <List<String>> selectedInterestsNotifier;
  const MultipleInterest({
    super.key,
    required this.groupedInterests,
    required this.selectedInterestsNotifier
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 20,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          spacing: 10,
          children: groupedInterests.map(
            (String interest){
              return InterestWidget(
                interestName: interest, 
                selectedInterestsNotifier: selectedInterestsNotifier,
              );
            }
          ).toList(),
        ),
      ),
    );
  }
}