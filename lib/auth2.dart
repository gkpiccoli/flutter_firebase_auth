  import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> registerWithEmailAndPassword(
      String email, String password) async {
    final userCredential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    // Armazena os dados do usuário no Cloud Firestore
    await _firestore.collection('users').doc(userCredential.user!.uid).set({
      'email': email,
      'password': password,
    });
  }

  Future<void> signInWithEmailAndPassword(
      String email, String password) async {
    final userCredential = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    // Recupera os dados do usuário do Cloud Firestore
    final userData = await _firestore
        .collection('users')
        .doc(userCredential.user!.uid)
        .get();

    final storedEmail = userData.get('email');
    final storedPassword = userData.get('password');
    print('Usuário logado: $storedEmail');
    print('Senha: $storedPassword');
  }
}
