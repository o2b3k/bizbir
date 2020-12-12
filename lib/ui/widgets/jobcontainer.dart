import 'package:flutter/material.dart';

class JobContainer extends StatelessWidget {
  const JobContainer({
    Key key,
    @required this.iconUrl,
    @required this.title,
    @required this.location,
    @required this.description,
    @required this.salary,
    @required this.companyName,
    @required this.data,
    @required this.onTap,
  }) : super(key: key);
  final String iconUrl, title, location, description, salary, companyName, data;
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
                        "$title",
                        style: Theme.of(context)
                            .textTheme
                            .title
                            .apply(color: Colors.blue),
                      ),
                      Text(
                        "$companyName",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text(
                        "$location",
                        style: Theme.of(context).textTheme.subtitle.apply(
                              color: Colors.grey,
                            ),
                      ),
                      Text(
                        "$description",
                        style: Theme.of(context).textTheme.subtitle.apply(
                              color: Colors.blueGrey,
                            ),
                      ),
                      Text(
                        "$data",
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
