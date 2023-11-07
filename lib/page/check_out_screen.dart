
import 'dart:async';
import 'dart:html' as html;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';



class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});


  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 32),
                    Center(
                      child: Text(
                        'You can buy any of our memberships as a gift for you or someone else',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                    const SizedBox(height: 32),
                    // displaying products which is active

                  ],
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.orangeAccent,
                  height: MediaQuery.of(context).size.height,
                  child: Image.network(
                    'https://cdn-icons-png.flaticon.com/512/5230/5230935.png',
                  ),
                )),
          ],
        ),
      ),
    );
  }
}


typedef _CheckoutSessionSnapshot = DocumentSnapshot<Map<String, dynamic>>;

class Subscription extends StatefulWidget {
  const Subscription({
    super.key,
    required this.checkoutSessionId,
  });

  final String checkoutSessionId;

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  late Stream<_CheckoutSessionSnapshot> _sessionStream;

  @override
  void initState() {
    super.initState();
    _sessionStream = FirebaseFirestore.instance
        .collection('stripe-customers')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("checkout_sessions")
        .doc(widget.checkoutSessionId)
        .snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<_CheckoutSessionSnapshot>(
      stream: _sessionStream,
      builder: (BuildContext context,
          AsyncSnapshot<_CheckoutSessionSnapshot> snapshot) {
        if (snapshot.connectionState != ConnectionState.active) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError || snapshot.hasData == false) {
          return const Text('Something went wrong');
        }
        final Map<String, dynamic> data = snapshot.requireData.data()!;
        if (data.containsKey('sessionId') && data.containsKey('url')) {
          html.window.location.href = data['url'] as String; // open the new window with Stripe Checkout Page URL
          return const SizedBox();
        } else if (data.containsKey('error')) {
          return Text(
            data['error']['message'] as String? ?? 'Error processing payment.',
            style: TextStyle(
              color: Theme.of(context).colorScheme.error,
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

