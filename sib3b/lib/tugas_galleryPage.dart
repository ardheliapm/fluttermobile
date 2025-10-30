import 'package:flutter/material.dart';

class TugasGalleryPage extends StatelessWidget {
  const TugasGalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Galeri Produk')),
      body: GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2, //setting brp kolom          
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: .72,       
        children: const [
          _CardItem(img: 'b1.jpg',name:'Blouse Navy',price: 'Rp 129.000'),
          _CardItem(img: 'b2.jpg',name:'Blazer Beige',price: 'Rp 189.000'),
          _CardItem(img: 'b3.jpg',name:'Denim Pants',price: 'Rp 159.000'),
          _CardItem(img: 'b4.jpg',name:'Cardigan Cream',price: 'Rp 149.000'),
          _CardItem(img: 'b5.jpg',name:'Cardigan Navy Stripe',price: 'Rp 149.000'),
          _CardItem(img: 'b6.jpg',name:'Cape Knit Grey',price: 'Rp 179.000'),
          _CardItem(img: 'b7.jpg',name:'Cardigan Dark Grey',price: 'Rp 149.000'),
          _CardItem(img: 'b8.jpg',name:'Cardigan Stripe',price: 'Rp 139.000'),
          _CardItem(img: 'b9.jpg',name:'Cardigan Pink Check',price: 'Rp 149.000'),
          _CardItem(img: 'b10.jpg',name:'Knit Stripe Short', price: 'Rp 129.000'),
          _CardItem(img: 'b11.jpg',name:'Kemeja Garis',price: 'Rp 119.000'),
          _CardItem(img: 'b12.jpg',name:'Blouse Floral',price: 'Rp 139.000'),
          _CardItem(img: 'b13.jpg',name:'Cardigan Lilac',price: 'Rp 149.000'),
          
        ],
      ),
    );
  }
}

class _CardItem extends StatelessWidget {
  final String img;
  final String name;
  final String price;
  const _CardItem({required this.img, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromARGB(255, 135, 72, 122),
      elevation: 1,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {}, // opsional: aksi saat ditekan
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // gambar
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.asset(
                  'assets/images/$img',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 10, 12, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.w600,color: Colors.white)),
                  const SizedBox(height: 4),
                  Text(price,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontWeight: FontWeight.w700,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
