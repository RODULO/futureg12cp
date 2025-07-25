import 'package:flutter/material.dart';
//import 'package:futuresg12/models/notable_work_model.dart';
import 'package:futuresg12/models/persona_model.dart';

class PerfilPage extends StatefulWidget {
  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  PersonaModel? pesonaPerfil;
  
  Widget _buildColumRating(String title, String value) {
    return Column(
      children: [
        Text(title, style: TextStyle(color: Colors.grey.shade600)),
        Text(
          value,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ],
    );
  }

  Future<PersonaModel> getInfoPerfil() async {
    return Future.delayed(Duration(seconds: 4), () {
      return jhonny;
    });
  }  
  
  Future<void> fetchPersonaPerfil() async {
    // pesonaPerfil = await getInfoPerfil();
    // setState(() {});
    getInfoPerfil().then((valor) {
      pesonaPerfil = valor;
      setState(() {});
      //Future<List<NotableWorkModel>> nextNotableWorks() async{
        //return Future.delayed(Duration(seconds: 4),() {
          //return notableWorks;
        //});
      //}
      //llamar a otro future despues de que se cargue la primera información del perfil
    });
  }

  @override
  void initState() {
    // getInfoPerfil();
    fetchPersonaPerfil(); 
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: pesonaPerfil == null
            ? Center(child: CircularProgressIndicator())
            : Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: screenHeight / 4,
                      decoration: BoxDecoration(
                        color: Color(0xff7A88A3),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.only(top: screenHeight / 12),
                        width: screenWidth - 60,
                        height: screenHeight / 4,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 5),
                              blurRadius: 10,
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg",
                                    width: screenWidth / 4,
                                    height: screenWidth / 3.5,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 16),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      pesonaPerfil!.nombre,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      pesonaPerfil!.profesion,
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth / 2.1,
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15),
                                        color: Colors.grey.shade200,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          _buildColumRating(
                                            "Likes",
                                            pesonaPerfil!.likes.toString(),
                                          ),
                                          _buildColumRating(
                                            "Followers",
                                            pesonaPerfil!.followers.toString(),
                                          ),
                                          _buildColumRating(
                                            "Rating",
                                            pesonaPerfil!.rating.toString(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 24),
                            Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12),
                                        border: Border.all(
                                          width: 2,
                                          color: Colors.black26,
                                        ),
                                      ),
                                      child: Text("Chat"),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: GestureDetector(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10),
                                        color: Colors.blueAccent,
                                      ),
                                      child: Text(
                                        "Follow",
                                        style:
                                            TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight / 5),
            
                /// TÍTULOS
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Notable works",
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Based on the popularity of articles",
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ),
                ),
                SizedBox(height: 16),
            
                /// TRABAJO NOTABLES
                SizedBox(
                  height: 220,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 16, right: 8),
                          width: screenWidth / 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  "https://images.pexels.com/photos/30091614/pexels-photo-30091614.jpeg",
                                  width: screenWidth / 2,
                                  height: screenWidth / 3.5,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Nature",
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                "Let us plant more trees from this year",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 16, right: 8),
                          width: screenWidth / 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  "https://images.pexels.com/photos/731217/pexels-photo-731217.jpeg",
                                  width: screenWidth / 2,
                                  height: screenWidth / 3.5,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Travel",
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                "These are the top places in world to visit",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 16, right: 8),
                          width: screenWidth / 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  "https://images.pexels.com/photos/262367/pexels-photo-262367.jpeg",
                                  width: screenWidth / 2,
                                  height: screenWidth / 3.5,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Architecture",
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                "This is modern architecture of 2025",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 16, right: 8),
                          width: screenWidth / 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  "https://images.pexels.com/photos/39396/hourglass-time-hours-sand-39396.jpeg",
                                  width: screenWidth / 2,
                                  height: screenWidth / 3.5,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Articles and photos",
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                "Natural mood regulation low or even absent in people with depression",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            
                SizedBox(height: 24),
              ],
            ),
      )
    );
  }
}