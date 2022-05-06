import 'package:flutter/material.dart';

class itemConstruction extends StatefulWidget {
  final text, id;
  const itemConstruction({Key? key, this.text, this.id}) : super(key: key);

  @override
  State<itemConstruction> createState() => _itemConstructionState();
}

class _itemConstructionState extends State<itemConstruction> {
  int selected = -1;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() {
        selected = widget.id;
      }),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(
                width: 1.0,
                color: (selected == widget.id)
                    ? Color(0xffFFB19D)
                    : const Color.fromARGB(255, 241, 238, 238))),
        height: 60,
        margin: EdgeInsets.only(bottom: 16),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                widget.text,
                style: TextStyle(
                    fontSize: 16.5,
                    fontWeight: FontWeight.w500,
                    color: (selected == widget.id)
                        ? Color(0xff525464)
                        : Color(0xff838391)),
              )),
          Container(
              height: 60,
              width: 60,
              color: (selected == widget.id)
                  ? Color(0xffFFB19D)
                  : Color.fromARGB(255, 241, 238, 238),
              child: Icon(
                (selected == widget.id) ? Icons.check : Icons.add,
                color: (selected == widget.id) ? Colors.white : Colors.black,
              )),
        ]),
      ),
    );
  }
}
