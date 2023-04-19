import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:repair/widget/text.dart';

class ClientPage extends StatefulWidget {
  const ClientPage({super.key});

  @override
  State<ClientPage> createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  final TextEditingController _fioClient = TextEditingController();
  final TextEditingController _passportId = TextEditingController();
  final TextEditingController _addressClient = TextEditingController();
  final TextEditingController _numberClient = TextEditingController();

  List<Map<String, dynamic>> _items = [];

  final _applianceRepair = Hive.box('appliance_repair');
  @override
  void initState() {
    super.initState();
    _refreshItems();
  }

  void _refreshItems() {
    final data = _applianceRepair.keys.map((key) {
      final item = _applianceRepair.get(key);

      return {
        "key": key,
        "FIO": item["FIO"],
        "PassportId": item["PassportId"],
        "Address": item["Address"],
        "PhoneNumber": item["PhoneNumber"]
      };
    }).toList();
    setState(() {
      _items = data.reversed.toList();
      print(_items.length);
    });
  }

  Future<void> _createItem(Map<String, dynamic> newItem) async {
    await _applianceRepair.add(newItem);
    _refreshItems();
  }

  void _showForm(BuildContext ctx, int? itemKey) {
    showModalBottomSheet(
        context: ctx,
        elevation: 5,
        isScrollControlled: true,
        builder: (_) {
          return Container(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(ctx).viewInsets.bottom,
                top: 15,
                left: 15,
                right: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                TextField(
                  controller: _fioClient,
                  decoration: const InputDecoration(hintText: 'ФИО'),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _passportId,
                  decoration: const InputDecoration(hintText: 'Номер паспорта'),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _addressClient,
                  decoration: const InputDecoration(hintText: 'Адрес'),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _numberClient,
                  decoration: const InputDecoration(hintText: 'Номер Телефона'),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () async {
                      _addressClient.text;
                      _fioClient.text;
                      _numberClient.text;
                      _passportId.text;
                      Navigator.of(context).pop();
                      _createItem({
                        "FIO": _fioClient.text,
                        "PassportId": _passportId.text,
                        "Address": _addressClient.text,
                        "PhoneNumber": _numberClient.text,
                      });
                    },
                    child: const Text('Подать заявку'))
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: mainText('Заказы клиента', Colors.white),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (_, index) {
          final currentItem = _items[index];
          return Card(
            color: Colors.orange.shade100,
            margin: EdgeInsets.all(10),
            elevation: 3,
            child: ListTile(
              title: Text(
                currentItem["FIO"],
              ),
              subtitle: Column(
                children: <Widget>[
                  Text(
                    currentItem["PassportId"],
                  ),
                  Text(
                    currentItem["Address"],
                  ),
                  Text(
                    currentItem["PhoneNumber"],
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 150),
        child: FloatingActionButton(
          onPressed: () {
            return _showForm(context, null);
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
