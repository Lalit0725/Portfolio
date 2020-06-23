import 'package:flutter/material.dart';
import 'package:portfolio/Portfolio/Projects/ProjectCardData.dart';

class ProjectPage extends StatefulWidget {
  final ProjectCardData projectCardData;
  const ProjectPage(this.projectCardData);
  @override
  _ProjectPage createState() => _ProjectPage(projectCardData);
}

class _ProjectPage extends State<ProjectPage> {
  ProjectCardData projectCardData;
  _ProjectPage(ProjectCardData _projectCardData) {
    projectCardData = _projectCardData;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Hero(
      tag: projectCardData.projectTitle,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            projectCardData.projectTitle,
            style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
        body: Container(
          padding: EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              Text(
                projectCardData.projectDescription,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 19.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Container(
                height: height / 1.30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    for (int i = 0;
                        i < projectCardData.projectImages.length;
                        i++)
                      projectImages(width, projectCardData.projectImages[i]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container projectImages(double width, String imageName) {
    return Container(
      width: width,
      padding: EdgeInsets.all(5.0),
      child: Image(image: AssetImage(imageName), fit: BoxFit.contain),
    );
  }
}
