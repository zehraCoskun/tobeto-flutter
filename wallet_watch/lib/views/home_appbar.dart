import 'package:flutter/material.dart';
import 'package:wallet_watch/assets/mycolors.dart';
import 'package:wallet_watch/views/add_button.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: MyColors.secodaryColor,
        title: const AppbarTitle(),
        leading: const ProfilButton(),
        actions: const [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: AddButton())
        ]);
  }
}

class ProfilButton extends StatelessWidget {
  const ProfilButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: MyColors.otherColor,
      icon: Icon(Icons.person_2, color: MyColors.secondaryTextColor),
      onPressed: () {},
    );
  }
}

class AppbarTitle extends StatelessWidget {
  const AppbarTitle({
    super.key,
  });
  final String title = "Wallet Watch";
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: MyColors.secondaryTextColor,
          fontWeight: FontWeight.w400,
          fontSize: 24),
    );
  }
}



// class AddButton extends StatelessWidget {
//   const AddButton({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       icon: Icon(
//         Icons.add_circle,
//         color: MyColors.otherColor,
//       ), //
//       onPressed: () {},
//     );
//   }
// }



  // void _showBottomSheet(BuildContext context) { 
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return const Padding(
  //         padding: EdgeInsets.all(16.0),
  //         child: Column(
  //           children: <Widget>[
  //             Text('Alt Sayfa İçeriği'),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }