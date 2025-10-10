import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// =========================
// APP UTAMA
// =========================
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List & Grid with Navigator',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const ListGridExample(),
        '/detail': (context) => const DetailPage(),
      },
    );
  }
}

// =========================
// HALAMAN UTAMA
// =========================
class ListGridExample extends StatefulWidget {
  const ListGridExample({super.key});

  @override
  State<ListGridExample> createState() => _ListGridExampleState();
}

class _ListGridExampleState extends State<ListGridExample>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<String> items = [
    'Flutter',
    'Dart',
    'Firebase',
    'UI/UX',
    'API',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  void _tambahItem() {
    setState(() {
      items.add('Item ${items.length + 1}');
    });
  }

  void _hapusItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  void _bukaDetail(String namaItem) {
    Navigator.pushNamed(
      context,
      '/detail',
      arguments: namaItem,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView & GridView Example'),
        backgroundColor: Colors.purple,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(icon: Icon(Icons.list), text: "List View"),
            Tab(icon: Icon(Icons.grid_view), text: "Grid View"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // --- TAB 1: LIST VIEW ---
          ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.code, color: Colors.purple),
                title: Text(items[index]),
                trailing: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.redAccent),
                  onPressed: () => _hapusItem(index),
                ),
                onTap: () => _bukaDetail(items[index]),
              );
            },
          ),

          // --- TAB 2: GRID VIEW ---
          GridView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: items.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // jumlah kolom
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 2, // lebar vs tinggi item
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => _bukaDetail(items[index]),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.purple.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      items[index],
                      style: const TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: _tambahItem,
        child: const Icon(Icons.add),
      ),
    );
  }
}

// =========================
// HALAMAN DETAIL
// =========================
class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Ambil data yang dikirim dari halaman sebelumnya
    final String namaItem =
        ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail: $namaItem'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Card(
          elevation: 5,
          margin: const EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.widgets, size: 80, color: Colors.purple.shade400),
                const SizedBox(height: 20),
                Text(
                  namaItem,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Ini adalah halaman detail untuk item yang kamu pilih.',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                  ),
                  icon: const Icon(Icons.arrow_back),
                  label: const Text("Kembali"),
                  onPressed: () => Navigator.pop(context),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
