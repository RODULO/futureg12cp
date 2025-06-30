class NotableWorkModel {
  String categoria;
  String titulo;
  String imageUrl;

  NotableWorkModel({
    required this.categoria,
    required this.titulo,
    required this.imageUrl,
  });
}
//CREANDO LISTA
List<NotableWorkModel> notableWorks = [
  NotableWorkModel(
    categoria: "Nature", 
    titulo: "Let us plant more trees from this year", 
    imageUrl: "https://images.pexels.com/photos/30091614/pexels-photo-30091614.jpeg",
  ),
  NotableWorkModel(
    categoria: "Travel", 
    titulo: "These are the top places in world to visit", 
    imageUrl: "https://images.pexels.com/photos/731217/pexels-photo-731217.jpeg",
  ),NotableWorkModel(
    categoria: "Architecture", 
    titulo: "This is modern architecture of 2025", 
    imageUrl: "https://images.pexels.com/photos/262367/pexels-photo-262367.jpeg",
  ),NotableWorkModel(
    categoria: "Articles and photos", 
    titulo: "Natural mood regulation low or even absent in people with depression", 
    imageUrl: "https://images.pexels.com/photos/39396/hourglass-time-hours-sand-39396.jpeg",
  ),
];
