import 'package:flutter/material.dart';
import 'package:portfolio/Portfolio/Projects/ProjectCard.dart';
import 'package:portfolio/Portfolio/Projects/ProjectCardData.dart';


class Project extends StatefulWidget {
  const Project();

  @override
  _ProjectState createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  final List<ProjectCardData> projectCards = [
    ProjectCardData(
        projectTitle: 'Idle Pantry Tycoon',
        projectDescription:
            'Its a clicker game where the player have to manage different types of ingredients to make the perfect dish to complete an order.',
        projectImages: [
          'assets/IdlePantryTycoon/1.jpeg',
          'assets/IdlePantryTycoon/2.jpeg',
          'assets/IdlePantryTycoon/3.jpeg',
          'assets/IdlePantryTycoon/4.jpeg',
          'assets/IdlePantryTycoon/5.jpeg',
          'assets/IdlePantryTycoon/6.jpeg',
          'assets/IdlePantryTycoon/7.jpeg',
          'assets/IdlePantryTycoon/8.jpeg',
          'assets/IdlePantryTycoon/9.jpeg',
          'assets/IdlePantryTycoon/10.jpeg',
        ]),
    ProjectCardData(
        projectTitle: 'VR Simulation',
        projectDescription:
            'Virtual Reality forklift simulation. With this technology one can easily experience the mechanics and dynamics of a forklift, which is used to lift and transport objects.',
        projectImages: [
          'assets/IndustrySimulation/1.jpg',
          'assets/IndustrySimulation/2.jpg',
          'assets/IndustrySimulation/3.jpg',
          'assets/IndustrySimulation/4.jpg',
          'assets/IndustrySimulation/5.jpg',
          'assets/IndustrySimulation/6.jpg',
        ]),
    ProjectCardData(
        projectTitle: 'HOME: Away From home',
        projectDescription:
            'This is a game made for Global Game Jam, Madurai 2019. This game was made on the theme "What Does Home Means To You". Player goes from his broken home to his grandparent\'s Home, which is the gameplay of this game.',
        projectImages: [
          'assets/HomeAwayFromHome/1.png',
          'assets/HomeAwayFromHome/Menu.png',
          'assets/HomeAwayFromHome/StartScene.png',
          'assets/HomeAwayFromHome/StartScene.png',
        ]),
    ProjectCardData(
        projectTitle: 'Alien\'s Aim',
        projectDescription:
            'A 2D-platformer game with simple mechanics. Alien escaping from Earth to its home planet is the gameplay.',
        projectImages: [
          'assets/AliensAim/Level1.jpg',
          'assets/AliensAim/Level2.jpg',
          'assets/AliensAim/Level3.jpg',
          'assets/AliensAim/MenuScreen.jpg',
          'assets/AliensAim/GameEndScreen.jpg'
        ]),
    ProjectCardData(
        projectTitle: 'Clean River',
        projectDescription:
            'It is an educational game. Its all about maintaining cleanliness by dumping the waste into the dustbin.',
        projectImages: [
          'assets/CleanRiver/GameScreen.jpg',
          'assets/CleanRiver/GameScreen1.jpg',
          'assets/CleanRiver/MenuScreen.jpg',
          'assets/CleanRiver/EndScreen.jpg',
        ]),
    ProjectCardData(
        projectTitle: 'Blobby\'s Plight Rziver',
        projectDescription: 'Game Jam Game. A fun little platformer game.',
        projectImages: [
          'assets/BlobbysPlight/1.png',
          'assets/BlobbysPlight/2.png',
          'assets/BlobbysPlight/3.png',
          'assets/BlobbysPlight/4.png',
          'assets/BlobbysPlight/5.png',
          'assets/BlobbysPlight/6.png',
          'assets/BlobbysPlight/Boss.png',
          'assets/BlobbysPlight/Menu.png',
          'assets/BlobbysPlight/Story.png',
        ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Scrollbar(
        child: ListView(
          children: projectCards
              .map((project) => ProjectCard(
                    projectCardData: project,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
