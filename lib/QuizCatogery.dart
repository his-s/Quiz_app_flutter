import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/Constant.dart';

Widget quizInfo(
  int quizNumber,
  String catName,
  double value,
  Function onTap,
) {
  return Container(
    width: 400,
    height: 350,
    padding: EdgeInsets.only(
      top: 14,
      right: 50,
      left: 50,
      bottom: 14,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Quiz\#$quizNumber',
                    style: TextStyle(
                      color: kTopContainer,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: LinearProgressIndicator(
                    value: value,
                    backgroundColor: Colors.grey,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                  ),
                ),
                Expanded(
                  child: Text(
                    ' $value\%',
                    style: TextStyle(
                      color: kTopContainer,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Text(
            catName,
            style: TextStyle(
              color: kSMainTextColor,
              fontSize: 15,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Images(
                imgLink:
                    'https://images.unsplash.com/photo-1532969476555-7a4eb819a357?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
              ),
              Images(
                  imgLink:
                      'https://images.unsplash.com/photo-1502250493741-939d1c76eaad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
              Images(
                  imgLink:
                      'https://images.unsplash.com/photo-1505205296326-2178af1b47bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'),
              Images(
                  imgLink:
                      'https://images.unsplash.com/photo-1592780679874-ccff24f5ff7b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              height: 70,
              width: 380,
              child: RaisedButton(
                onPressed: onTap,
                child: Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                // splashColor: Colors.orange,
                textColor: Colors.white,
                color: kIconsColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
        ),
        Divider(
          thickness: 1,
        ),
      ],
    ),
  );
}

class Images extends StatelessWidget {
  const Images({
    @required this.imgLink,
  });
  final String imgLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(imgLink),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
