import 'package:flutter/material.dart';
class WeightAge extends StatefulWidget {
  const WeightAge({super.key,required this.item ,required this.count ,required this.onPlus, required this.onMiuns, required this.isSelected, required this.onTap });
  final String item;
  final Function() onPlus;
  final Function() onMiuns;
  final bool isSelected;
  final Function() onTap;

  final int count;

  @override
  State<WeightAge> createState() => _WeightAgeState();
}

class _WeightAgeState extends State<WeightAge> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: widget.onTap,
      child: Container(
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: widget.isSelected ? const Color(0xff24263B) : const Color(0xff333244),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.item,
              style:  const TextStyle(
                fontSize: 20,
                color:  Color(0xff888C9E),
                fontWeight: FontWeight.w300,
                fontFamily: "Inter",
              ),
            ),
            const SizedBox(height: 10,),
            Text(
              '${widget.count}',
              style:  const TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 40,
                fontWeight: FontWeight.w700,
                fontFamily: "Inter",
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: widget.onMiuns,
                  icon: const Icon(Icons.minimize),
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(Color(0xff8B8C9E),)
                  ),
                ),
                const SizedBox(width: 40,),
                IconButton(
                    icon: const Icon(Icons.add_rounded),
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(Color(0xff8B8C9E),)
                  ),
                  onPressed: widget.onPlus,
                )
              ],
            )
          ],
        ),

      ),
    );}}