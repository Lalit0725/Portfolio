import 'package:flutter/material.dart';
import 'package:portfolio/Portfolio/Projects/ProjectCardData.dart';
import 'package:portfolio/Portfolio/Projects/ProjectPage.dart';


class ProjectCard extends StatelessWidget {
  final ProjectCardData projectCardData;
  
  const ProjectCard({Key key, this.projectCardData});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => goToProjectPage(context),
      child: Hero(
        tag: projectCardData.projectTitle,
        child: Card(
          shadowColor: Colors.grey[900],
          elevation: 15.0,
          margin: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  projectCardData.projectTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 3.0),
                Text(
                  projectCardData.projectDescription,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[700],
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      for (int i = 0; i < projectCardData.projectImages.length; i++)
                        projectImages(projectCardData.projectImages[i]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void goToProjectPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => ProjectPage(projectCardData),
    ));
  }

  Container projectImages(String imageName) {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Image(image: AssetImage(imageName), fit: BoxFit.contain),
    );
  }
}