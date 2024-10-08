// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:band_names/services/socket_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StatusPage extends StatelessWidget {
  String nombre = '';
  String mensaje = '';

  StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    final socketService = Provider.of<SocketService>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Server Status: ${socketService.serverStatus}"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.message),
          onPressed: () {
            socketService.socket.emit('emitir-mensaje',
                {'nombre': 'Flutter', 'mensaje': 'Hola desde Flutter'});
          }),
    );
  }
}
