import 'package:dating_app/injection.dart';
import 'package:dating_app/widgets/custom_button.dart';
import 'package:dating_app/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';

class HobbiesScreen extends StatefulWidget {
  const HobbiesScreen({super.key});

  @override
  State<HobbiesScreen> createState() => _HobbiesScreenState();
}

class _HobbiesScreenState extends State<HobbiesScreen> {
  late final CustomButton _customButton;
  late final TextEditingController _textEditingController;
  late final CustomDropDown _customDropDown;

  final List<String> _selectedHobbies = [];

  @override
  void initState() {
    _customButton = locator.get<CustomButton>();
    _textEditingController = locator.get<TextEditingController>();
    _customDropDown = CustomDropDown();


    super.initState();
  }

  List<String> hobbies = [
    'Reading',
    'Writing',
    'Drawing',
    'Painting',
    'Playing a musical instrument',
    'Singing',
    'Dancing',
    'Photography',
    'Cooking',
    'Baking',
    'Hiking',
    'Camping',
    'Fishing',
    'Running',
    'Swimming',
    'Cycling',
    'Yoga',
    'Meditation',
    'Traveling',
    'Watching movies',
    'Watching TV shows',
    'Playing video games',
    'Playing sports',
    'Playing board games',
    'Gardening',
    'Birdwatching',
    'Volunteering',
    'Learning languages',
    'DIY projects',
    'Home decoration',
    'Fashion designing',
    'Makeup artistry',
    'Car/motorcycle customization',
    'Astronomy/stargazing',
    'Scuba diving/snorkeling',
    'Surfing',
    'Skiing/snowboarding',
    'Beer brewing',
    'Programming',
    'Coding',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 238, 118, 118),
                Colors.pink,
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                const Spacer(),
                const Spacer(),
                const Text(
                  "Select your hobbies",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 10),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: _customDropDown.buildDropdown(
                    context,
                    "Hobbies",
                    hobbies,
                    null,
                    (String? value) {
                      if (value != null && !_selectedHobbies.contains(value)) {
                        setState(() {
                          _selectedHobbies.add(value);
                          hobbies.remove(value);
                        });
                      }
                    },
                    _textEditingController,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                _selectedHobbies.isEmpty
                    ? SizedBox(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                      
                      )
                    : Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.3),
                        
                        ),
                        padding: const EdgeInsets.all(8),
                          height: 150,
                          width: MediaQuery.of(context).size.width,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                            child: Wrap(
                              spacing: 3.0,
                              runSpacing: 2.0,
                              children: _selectedHobbies.map((String hobby) {
                                return Chip(
                                  label: Text(hobby,),
                                  onDeleted: () {
                                    setState(() {
                                      _selectedHobbies.remove(hobby);
                                      hobbies.add(hobby);
                                    });
                                  },
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                    ),
                const Spacer(),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: _customButton.customButton("Next", () {}),
                ),
                TextButton(
                  onPressed: () {
                    // Handle skip action
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
