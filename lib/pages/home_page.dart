import 'package:flutter/material.dart';
import 'package:pregnancy_workout/pages/exercise_page.dart';
import 'package:pregnancy_workout/utils/color_utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    "Momfit®",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: ColorUtils.grey,
                ),
                child: Image.asset(
                  'assets/images/home_image.png',
                ),
              ),
              const SizedBox(height: 20.0),
              const Spacer(),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: ColorUtils.black,
                  shape: const StadiumBorder(),
                  side: const BorderSide(width: 1.0),
                ),
                onPressed: () {},
                child: const Text(
                  "Pregnancy Workouts",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                "Prenatal &\nPostpartum\nStrength Training",
                style: TextStyle(
                  height: 0.9,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20.0),
              const Text(
                "Trusted by thousands of expectant and new moms to feel confident, strong and safe",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ExercisePage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorUtils.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(5, 17, 5, 17),
                  child: Row(
                    children: [
                      Text(
                        "Get started",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_outward,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
