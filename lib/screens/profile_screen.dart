import 'package:flutter/material.dart';
import 'package:wisata_candi/widgets/profile_item_info.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreen();
  
}


class _ProfileScreen extends State<ProfileScreen> {
  bool isSigned = false;
  String userName = 'Genta 7740';
  String fullName = 'Genta Wibawa';
  int favoriteCandiCount = 0;

  // TODO: 5 func sign in.
  void signIn() {
    setState(() {
      this.isSigned = !this.isSigned;
    });
  }
  // TODO: 6 func sign out.
  void signOut() {
    setState(() {
      this.isSigned = !this.isSigned;
    });

  }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Stack(
         children: [
           Container(
             height: 200, width: double.infinity, color: Colors.deepPurple,
           ),
           Padding(
               padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 200 - 50),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.deepPurple,
                                      width: 2,
                                    ),
                                    shape: BoxShape.circle
                                ),
                                child: const CircleAvatar(
                                  radius: 50,
                                  backgroundImage: AssetImage("images/avatar_default.png"),
                                ),
                              ),
                              if(isSigned)
                                IconButton(
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.camera_alt,
                                    color: Colors.deepPurple,
                                  ),
                                )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Divider(color: Colors.deepPurple[200],),
                  const SizedBox(height: 4,),
                  Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width / 3,
                      child: const Row(
                        children: [
                          Icon(Icons.lock, color: Colors.amber,),
                          SizedBox(width: 8,),
                          Text("Pengguna", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),)
                        ],
                      ),
                      ),
                      Expanded(child: Text(": $userName", style: const TextStyle(fontSize: 18),))
                    ],
                  ),
                  SizedBox(height: 4,),
                  Divider(color: Colors.deepPurple[100],),
                  SizedBox(height: 4,),
                  // Row(
                  //   children: [
                  //     SizedBox(width: MediaQuery.of(context).size.width / 3,
                  //       child: Row(
                  //         children: [
                  //           Icon(Icons.person, color: Colors.blue
                  //             ,),
                  //           SizedBox(width: 8,),
                  //           Text('Nama', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  //         ],
                  //       ),
                  //     ),
                  //     Expanded(child: Text(': $fullName', style: TextStyle(fontSize: 18),)),
                  //     if(isSigned) const Icon(Icons.edit),
                  //   ],
                  // ),
                  ProfileItemInfo(icon: Icons.person, label: 'Name', value: this.fullName, iconColor: Colors.blue),
                  Divider(color: Colors.deepPurple[100],),
                  SizedBox(height: 4,),
                  ProfileItemInfo(icon: Icons.favorite, label: 'Favorit', value: this.favoriteCandiCount > 0 ? "$favoriteCandiCount" : "0", iconColor: Colors.red),
                  SizedBox(height: 4,),
                  Divider(color: Colors.deepPurple[100],),
                  SizedBox(
                    height: 20,
                  ),
                  isSigned
                      ? TextButton(onPressed: signOut, child: Text("Sign Out"))
                      : TextButton(onPressed: signIn, child: Text("Sign In"))
                ],
              ),
           )
         ],
       ),

     );
  }

}