import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthServices {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> signUpUser({
    required String email,
    required String password,
    required String name,
  }) async {
    String res = "An error occurred";
    try {
      if (email.isNotEmpty || password.isNotEmpty || name.isNotEmpty) {
        UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        await _firestore.collection("users").doc(credential.user!.uid).set({
          'name': name,
          'email': email,
          'uid': credential.user!.uid,
        });
        res = "success";
      }
    } catch (e) {
      // print(e.toString());
      return e.toString();
    }
    return res;
  }
    Future<String>loginUser({
      required String email,
      required String password,

    })async{
      String res = "Some error Occured";
      try{
      if(email.isNotEmpty||password.isNotEmpty){
await _auth.signInWithEmailAndPassword(email: email, password: password);
res="success";
      }else{
        res = "Please enter all the field";
      }
      }catch(e){
        return e.toString();
      }
      return res;

    }
    Future<void> signOut()async{
    await _auth.signOut();
    }

}
