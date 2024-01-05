import 'package:flutter/material.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';

class NewsDetailScreen extends StatelessWidget {
  const NewsDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/scabies_test.png',
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: 16,
                    top: 40,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.brandColor.withOpacity(0.5),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.chevron_left,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 16,
                    top: 40,
                    child: Container(
                      width: 40, // Sesuaikan dengan kebutuhan ukuran lingkaran
                      height: 40, // Sesuaikan dengan kebutuhan ukuran lingkaran
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.brandColor.withOpacity(0.5),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.zoom_in,
                          color: Colors
                              .white, // Ganti dengan warna ikon yang diinginkan
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sunday, 7 January 2024',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.graySecondColor,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Tips merawat kulit sensitif dari jangkauan sinar matahari.',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Kulit sensitif membutuhkan perawatan ekstra untuk melindunginya dari dampak negatif sinar matahari. Salah satu langkah yang penting adalah menggunakan tabir surya dengan SPF tinggi setiap kali terpapar sinar matahari. Tabir surya membantu melindungi kulit dari paparan sinar UV yang dapat menyebabkan iritasi, kemerahan, dan bahkan kerusakan kulit jangka panjang. Pilihlah tabir surya yang dirancang khusus untuk kulit sensitif dan hindari penggunaan produk yang mengandung bahan kimia keras yang dapat memicu reaksi alergi. \n\nSelain menggunakan tabir surya, penting juga untuk mengatur waktu berjemur. Kulit sensitif cenderung lebih rentan terhadap efek negatif sinar matahari, karenanya sebaiknya hindari berjemur terlalu lama, terutama pada pukul 10 pagi hingga 4 sore ketika matahari berada pada posisi paling tinggi. Pilihlah waktu berjemur di pagi hari atau sore hari yang lebih aman untuk kulit sensitif Anda.\n\nPemilihan produk perawatan kulit juga memegang peranan penting dalam menjaga kesehatan kulit sensitif. Pilihlah produk yang bebas pewangi dan hypoallergenic untuk menghindari potensi iritasi. Selalu baca kandungan produk sebelum membeli dan pastikan tidak mengandung bahan-bahan yang dapat memicu reaksi alergi pada kulit sensitif Anda.\n\nRutin membersihkan wajah juga merupakan langkah penting dalam merawat kulit sensitif. Gunakan pembersih wajah yang lembut dan dirancang khusus untuk kulit sensitif. Hindari penggunaan sabun atau pembersih yang mengandung bahan kimia keras yang dapat mengiritasi kulit. Membersihkan wajah dengan lembut membantu menjaga kelembapan kulit dan menghindari timbulnya kemerahan atau iritasi.\n\nTerakhir, perhatikan kondisi kulit sensitif Anda secara keseluruhan. Jika Anda mengalami iritasi, kemerahan, atau masalah kulit lainnya, segera konsultasikan dengan dokter kulit. Mereka dapat memberikan saran dan perawatan yang lebih spesifik sesuai dengan kebutuhan kulit sensitif Anda. Dengan perhatian ekstra dan langkah-langkah pencegahan yang tepat, Anda dapat menjaga kulit sensitif Anda tetap sehat dan terlindungi dari sinar matahari yang berbahaya.',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackColor,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
