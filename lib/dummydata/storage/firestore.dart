import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreDestinations {
  final CollectionReference destinations =
      FirebaseFirestore.instance.collection('destination');
//C
  Future<void> addDestination(
      String nameofPlace, String category, String location, String imagePath) {
    return destinations.add({
      'nameofPlace': nameofPlace,
      'category': category,
      'location': location,
      'imagePath': imagePath,
      'DateTime': DateTime.now()
    });
  }

//R
  Stream<QuerySnapshot> getDestinationsStream() {
    final destinationsStream =
        destinations.orderBy('DateTime', descending: false).snapshots();
    return destinationsStream;
  }

//U
  Future<void> updateDestination(String docID, String newnameofPlace,
      String newcategory, String newlocation, String newimagePath) {
    return destinations.doc(docID).update({
      'nameofPlace': newnameofPlace,
      'category': newcategory,
      'location': newlocation,
      'imagePath': newimagePath,
      'DateTime': DateTime.now()
    });
  }

//D
  Future<void> deleteDestination(String docID) {
    return destinations.doc(docID).delete();
  }
}
