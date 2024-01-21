import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;
  final FirebaseAuth _auth  = FirebaseAuth.instance;

  User? getCurrentUser(){
    return _auth.currentUser;
  }

  Future<void> signOut()async{
    return await FirebaseAuth.instance.signOut();
  }

  Future<UserCredential> signIn(String email , password)async{
    try{
      UserCredential userCredential  = await _auth.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      _fireStore.collection("Users").doc(userCredential.user!.uid).set(
          {
            'uid' : userCredential.user!.uid,
            'email' : email,
          }
      );
      return userCredential;
    }on FirebaseAuthException catch (e){
      throw Exception(e.code);
    }
  }

  Future<UserCredential> signUp(String email , password)async{
    try{
      UserCredential userCredential  = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password
      );

      _fireStore.collection("Users").doc(userCredential.user!.uid).set(
          {
            'uid' : userCredential.user!.uid,
            'email' : email,
          }
      );
      return userCredential;
    }on FirebaseAuthException catch (e){
      throw Exception(e.code);
    }
  }
}

