import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey.shade400)),
          child: const Icon(Icons.menu),
        ),
        const Text(
          "Creative Jobs",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://img.freepik.com/free-photo/portrait-optimistic-businessman-formalwear_1262-3600.jpg?w=1060&t=st=1709403802~exp=1709404402~hmac=d846a99e570981281222b68ab5df4230431fa57446e3d6e1ad0dcb07c1c7cb17")),
              color: Colors.grey,
              borderRadius: BorderRadius.circular(15)),
        )
      ],
    );
  }
}
