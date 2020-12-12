import 'package:flutter/material.dart';

class ResumeContainer extends StatelessWidget {
  const ResumeContainer({
    Key key,
    @required this.name,
    @required this.address,
    @required this.skills,
    @required this.suitability,
    @required this.careerObjective,
    @required this.onTap,
  }) : super(key: key);
  final String name, address, skills, suitability, careerObjective;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(9.0),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[300], blurRadius: 5.0, offset: Offset(0, 3))
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "$name",
                        style: Theme.of(context)
                            .textTheme
                            .title
                            .apply(color: Colors.blue),
                      ),
                      if (skills != null)
                        Text(
                          "$skills",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      if (suitability != null)
                        Text(
                          "$suitability",
                          style: Theme.of(context).textTheme.subtitle.apply(
                                color: Colors.grey,
                              ),
                        ),
                      if (careerObjective != null)
                        Text(
                          "$careerObjective",
                          style: Theme.of(context).textTheme.subtitle.apply(
                                color: Colors.redAccent,
                              ),
                        ),
                      if (suitability != null)
                        Text(
                          "$address",
                          style: Theme.of(context).textTheme.subtitle.apply(
                                color: Colors.blueGrey,
                              ),
                        ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
