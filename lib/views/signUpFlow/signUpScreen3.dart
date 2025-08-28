import 'package:flutter/material.dart';
import 'package:muster_up/views/onboarding/SignupPageViewController.dart';
import 'package:muster_up/views/signUpFlow/interestRow.dart';
import 'package:muster_up/views/signUpFlow/signUpScreen1.dart';

class SignUp3 extends StatefulWidget {
  const SignUp3({super.key});

  @override
  State<SignUp3> createState() => _SignUp3State();
}

class _SignUp3State extends State<SignUp3> {
  final ValueNotifier<List<String>> selectedInterestsNotifier = ValueNotifier([]);
  final Map<String, List<List<String>>> interests = {
    "💻Tech": [
      [
        "AI/ML",
        "Web3 & Blockchain",
        "Software Dev",
        "DevOps",
        "Data Science",
      ],
      [
        "UI/UX Design",
        "Internet Of Things (IoT)",
        "Cybersecurity",
        "Product Management"
      ]
    ],
    "🍀Lifestyle": [
      [
        "Mindfulness & Meditation",
        "Fitness & Biohacking",
        "Wellness & Mental Health",
        "Minimalism & Simplicity",
        "Travel Experience",
      ],
      [
        "Digital Nomad Life",
        "Sustainable Living",
        "Nutrition & Food Tech",
        "Outdoor Activities"
      ]
    ],
    "🎓Learning": [
      [
        "Career & Development",
        "Public Speaking",
        "Coaching & Mentorship",
        "Time Management",
        "Goal Setting",
      ],
      [
        "Skill Building",
        "Learning Design",
        "Study Hacks",
        "Personal Branding"
      ]
    ],
    "📈Business": [
      [
        "Startups & Entrepreneurship",
        "Venture Capital & Fundraising",
        "Growth Marketing",
      ],
      [
        "Sales Strategy",
        "Freelancing & Consulting",
        "Leadership & Management",
      ]
    ],
    "🎭Entertainment": [
      [
        "Music & Live Shows",
        "Movie Production",
        "Art & Illustration",
        "Podcasts & Audio",
        "Influencer Marketing",
      ],
      [
        "Gaming & E-Sports",
        "Photography",
        "Performing Arts",
        "Swimming Culture"
      ],
    ],
    "🤝Networking": [
      [
        "Coffee Chats",
        "Group Discussions",
        "Mentorship Pairing",
        "Speed Networking",
        "Panel Q&A",
      ],
      [
        "Project Demos",
        "Speed Mentoring",
        "Icebreaker Games",
        "Virtual Mixers"
      ]
    ]
  };

  @override
  void dispose() {
    selectedInterestsNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F5F5),
        title: Row(
          children: [
            Expanded(
              child: Text(
                "Step 3 of 3",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Expanded(
              flex: -10,
              child: SignUpIndicator(currentIndex2: 2),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 12.0),
                  child: Text(
                    'Select Personal Interests',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
          
                ...interests.entries.map((entry) {
                  String categoryName = entry.key;
                  List<List<String>> categoryItems = entry.value;
          
                  return Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              categoryName,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.chevron_right,
                              size: 18,
                              color: Color(0xff8A8A8A),
                             ),
                             Transform.translate(offset: const Offset(-12, 0) ,
                             child: Icon(Icons.chevron_right,
                             size: 18,
                             color: Color(0xff8A8A8A) ,),)
                          
                          ],
                        ),
                      ),
                      ...categoryItems.map(
                        (List<String> items) {
                          return MultipleInterest(
                            groupedInterests: items,
                            selectedInterestsNotifier: selectedInterestsNotifier,
                          );
                        },
                      ),
                      const SizedBox(height: 4),
                    ],
                  );
                }).toList(),
                const SizedBox(height: 150),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(50),
              decoration:
              BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only
                (topLeft:Radius.circular(0),
                topRight: Radius.circular(0)
                )
                ) ,
              child: ValueListenableBuilder<List<String>>(
              valueListenable: selectedInterestsNotifier,
              builder: (context, selectedInterests, _) {
                bool hasSelection = selectedInterests.isNotEmpty;
                final totalInterests = interests.values
                .expand((x) => x.expand((y) => y)).length;
            return SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                    hasSelection ? const Color(0xFFFF9800) : Color(0xffEBC581),
                    disabledBackgroundColor: Color(0xffEBC581),
                    minimumSize: Size(double.infinity, 40),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    ),
                ),
                onPressed: hasSelection
                  ? () {
                  }
                : null,
              

            child: Text(
              selectedInterests.isEmpty
                  ? "Continue"
                  : "Continue",
              style:  TextStyle(
                color: hasSelection? Colors.black : Color(0xff8A8A8A),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        );
              },
            ),
          ),
        ),
      ],
    ),
            );
        
  }
}
