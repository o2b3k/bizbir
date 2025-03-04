import 'package:flutter/material.dart';

class JobContainer extends StatelessWidget {
  const JobContainer({
    Key key,
    @required this.jobName,
    @required this.company,
    @required this.address,
    @required this.suitability,
    @required this.endDate,
    @required this.onTap,
  }) : super(key: key);
  final String jobName, company, address, suitability, endDate;
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
                        "$jobName",
                        style: Theme.of(context)
                            .textTheme
                            .title
                            .apply(color: Colors.blue),
                      ),
                      Text(
                        "$company",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text(
                        "$address",
                        style: Theme.of(context).textTheme.subtitle.apply(
                              color: Colors.grey,
                            ),
                      ),
                      if (suitability != null)
                        Text(
                          "$suitability",
                          style: Theme.of(context).textTheme.subtitle.apply(
                                color: Colors.blueGrey,
                              ),
                        ),
                      if (endDate != null)
                        Text(
                          "Крайний срок подачи: $endDate",
                          style: Theme.of(context).textTheme.subtitle.apply(
                                color: Colors.redAccent,
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
