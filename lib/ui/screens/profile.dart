import 'package:bizbir/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bizbir/models/bizbir_model.dart';
import 'package:bizbir/models/profile_link.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 20,
          right: 0,
          left: 0,
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 7.0,
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 51,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "Поиск",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide.none),
                            fillColor: Color(0xffe6e6ec),
                            filled: true,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffe6e6ec),
                          borderRadius: BorderRadius.circular(9.0),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.tune),
                          onPressed: () {
                            Provider.of<BizbirModel>(context, listen: false)
                                .changeState();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: profileLink.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                            leading: profileLink[index].icon,
                            title: Text(profileLink[index].title),
                            trailing: Icon(Icons.arrow_right),
                            onTap: () => {}),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
              ],
            ),
          ),
        ),
        Provider.of<BizbirModel>(context).visible
            ? Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                // height: MediaQuery.of(context).size.height / 1.3,
                child: MyBottomSheet(),
              )
            : Container(),
      ],
    );
  }
}
