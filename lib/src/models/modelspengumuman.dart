import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import 'package:myumsida/src/models/pengumuman.dart';

// ignore: must_be_immutable
class PengumumanModels extends StatelessWidget {
  PengumumanModels({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.now();
    // String dateFormat = DateFormat('dd-MM-yyyy hh:mm').format(date);

    return Column(
      children: data.map((e) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TemplatePengumuman(
                          judul: e['judul'],
                          isi: e['isi'],
                        )));
          },
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10))),
            child: Row(
              children: [
                Image.asset('assets/icons/iconss/announce.png', scale: 14),
                const VerticalDivider(
                  width: 20,
                  thickness: 2,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.grey,
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e['judul'],
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 15),
                      ),
                      Text(
                        '${DateFormat('EEEE').format(date).toString()}, ${DateFormat.yMMMd().format(DateTime.now())}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  List<Map<String, dynamic>> data = [
    {
      'judul': 'Alur Pendaftaran Wisuda Universitas Muhammadiyah Sidoarjo',
      'isi': '''
Universitas Muhammadiyah Sidoarjo (Umsida) menjadi host kegiatan Monitoring dan Evaluasi (Monev) Penugasan Kontrak Penelitian dan Pengabdian kepada Masyarakat yang diselenggarakan oleh Lembaga Layanan Pendidikan Tinggi  wilayah 7 Jawa Timur (LLDIKTI 7), Senin (14/3/2023).

Kegiatan monev dan verifikasi laporan keuangan ini dilakukan oleh LLDIKTI mewakili Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi (Kemendikbud-Ristek) RI kepada para penerima dana hibah Kemendikbud-Ristek.

“Kami kepanjangan tangan dari kementerian mendapat mandat untuk melaksanakan monev dan verifikasi,” ungkap dr. Ivan Rovian MKp kepala Bagian Umum LLDIKTI 7 pada acara pembukaan kegiatan Monev tersebut.

“Sehingga kita dapat melaporkan progress pertanggung jawaban keuangan negara 1 rupiah pun kepada negara,” tuturnya menambahkan.

Penugasan penelitian riset dan teknologi dan pengabdian masyarakat kali ini merupakan program dari kementerian dan ini kelanjutan dari program sebelumnya.
''',
      'url': '',
      'tanggal': DateFormat('EEEE').format(DateTime.now()).toString()
    },
    {
      'judul': 'Alur KRS Online Semester Ganjil TA 2022/2023',
      'isi': '''
Umsida ac.id– Kuliah Kerja Nyata Pencerahan (KKN-P) tahun 2023 Universitas Muhammadiyah Sidoarjo (Umsida) yang bertemakan “Penguatan Potensi Lokal Menuju Desa Sapta Pesona” resmi ditutup pada kamis (16/02/2023). Kegiatan ini dilaksanakan selama sebulan penuh secara rutin dalam kalender akademik ini merupakan wujud pengabdian mahasiswa Umsida kepada masyarakat.

Acara penutupan KKN-P tahun ini yang dipusatkan di Desa Jatiarjo, Dusun Tonggowah, Kecamatan Prigen, Kabupaten Pasuruan dihadiri oleh jajaran pimpinan Umsida, Dosen Pembimbing Lapana (DPL), dan pimpinan Desa Jatiarjo serta perwakilan dari lima puluh kelompok mahasiswa yang tersebar di beberapa kawasan.

Serangkaian acara mengiringi acara penutupan. Diawali dengan kegiatan jalan sehat pada pukul 07.25, sebanyak kurang lebih 100 mahasiswa perwakilan dari lima puluh kelompok KKN-P melakukan jalan sehat dengan membagikan bingkisan bagi warga setempat di Desa Jatiarjo. Mahasiswa langsung mendatangi rumah-rumah membagikan bingkisan sembako berisi mie instan, minyak goreng dan gula.''',
      'url': '',
      'tanggal': DateFormat('EEEE').format(DateTime.now()).toString()
    },
    {
      'judul': 'Semester Antara Genap 2023/2024',
      'isi': '''
Umsida.ac.id – Dalam konteks pembangunan desa, pendaftaran BUMDesa menjadi Badan Hukum adalah hal yang penting. Ini untuk memberikan kejelasan hukum terhadap status dan operasional BUMDesa. Universitas Muhamadiyah Sidoarjo (Umsida) memiliki komitmen untuk membantu proses legalisasi BUMDesa.

Adalah BUMDesa Desa Lemujut, Kecamatan Krembung-Kabupaten Sidoarjo, berhasil memiliki legalitas tersebut melalui program Pengabdian kepada Masyarakat (Abdimas) yang dilaksanakan oleh dosen Umsida. Pada Selasa (14/02/2023) dilakukan serah terima sertifikat Badan Hukum kepada pihak Desa Lemujut.
BUMDesa Desa Lemujut Kembangkan Desa Wisata

Proses untuk menjadikan BUMDesa Desa Lemujut memiliki badan hukum tersebut dilakukan oleh dua dosen dari Program Studi (Prodi) Hukum Umsida, yakni Rifqi Ridlo Pahlevy SH MH dan Sri Budi Purwaningsih SH MKn. Kegiatan Abdimas tersebut telah diselanggarakan sejak Desember 2021 hingga 14 Pebruari 2023.

“Pihak Umsida membantu proses BUMDesa Lemujut untuk mendaftarkan statusnya sebagai Badan Usaha, dan telah mendaftarkan BUMDesa Lemujut kepada Kementerian Hukum dan Hak Asasi Manusia (Kemenkumham),” ujar Sri Budi Purwaningsih.

Dengan menyandang status berbadan hukum maka potensi untuk meraih pendapatan bagi desa akan berkembang semakin besar.

“Raihan tersebut memberikan angin segar bagi BUMDesa Desa Lemujut. Pasalnya, BUMDesa yang berbadan hukum akan dapat meningkatkan kepercayaan investor dan masyarakat dalam menjalin kerjasama bisnis dengan BUMDesa,” uajar Rifqi Ridlo Pahlevy pada acara serah terima di Kantor Kepala Desa Lemujut.

Rifqi menambahkan bahwa dengan legalitas BUMDesa maka potensi untuk mendapatkan sumber pendapatan baru dan menciptakan lapangan kerja di desa akan semakin terbuka.

Kepala Desa Lemujut Zulaimin Nur Rofiq menyambut dan memberi apresiasi atas diterimanya sertifikat Badan Hukum tersebut. “Pihak Desa sangat berterimakasih atas kerjasama ini, dan berharap atas legalisasi yang diberikan, Desa Lemujut dapat menjadi Desa unggul,” tutur Zulaimin Nur Rofiq

Legalitas BUMDesa ini menjadi pemompa semangat Desa Lemujut untuk membuka kerjasama BUMDesa dengan entitas legal mana saja.  “Sesuai dengan progres kami membuat dan membentuk Desa wisata Lemujut,” pungkas Zulaimin Nur Rofiq.

Dengan memiliki status berbadan hukum, BUMDesa Desa Lemujut memiliki legalitas sebagai sebuah badan usaha dalam menjalankan kegiatan usaha karena telah tercatat dalam pangkalan data Direktorat Jenderal Aministrasi Hukum Umum dan pada Kementerian Hukum dan Hak Asasi Manusia (Kemenkumham).

Kegiatan abdimas yang dilakukan oleh Umsida ini merupakan contoh nyata bagaimana perguruan tinggi dapat memberikan kontribusi dalam pengembangan masyarakat. Melalui kegiatan pengabdian masyarakat, Umsida memberikan dukungan dan bantuan yang diperlukan untuk meningkatkan kesejahteraan masyarakat dan memperkuat struktur pemerintahan desa.

Banyaknya BUMDesa yang masih belum memiliki legalitas tersebut menjadi perhatian dari Program Studi (Prodi) Hukum Umsida. Membantu proses legalisasi tersebut merupakan salah satu bentuk Pengabdian kepada Masyarakat (Abdimas) dosen Prodi Hukum Umsida.

Salah satu faktor penting dalam proses legalisasi BUMDEsa adalah bagaimana koordinasi yang baik antara Kepala Desa dengan Badan Permusyarawaratan Desa (BPD).

“Yang terpenting antara pihak Kepala Desa dengan Badan Permusyawaratan Desa (BPD) harus kompak agar dapat optimal,” ujar Rifqi Ridlo Pahlevy menambahkan.

Universitas Muhammadiyah Sidoarjo (Umsida) dengan dengan visi mewujudkan kesejahteraan masyarakat, turut memberikan pengabdian kepada masyarakat dengan membantu mewujudkan legalitas bagi BUMDesa yang masih belum memilikinya.

Dengan adanya kegiatan abdimas seperti ini, diharapkan akan meningkatkan kualitas hidup masyarakat di Desa Lemujut dan sekitarnya. Selain itu, kegiatan abdimas juga dapat membuka peluang untuk melakukan penelitian dan pengembangan di desa untuk memecahkan berbagai masalah dan memperkuat kapasitas masyarakat setempat.

 

Ditulis: Muhammad Asrul Maulana/Rani Syahda Hanifa

Editor: Kumara Adji

''',
      'url': '',
      'tanggal': DateFormat('EEEE').format(DateTime.now()).toString()
    },
    {
      'judul': 'Alur Herregistrasi dan KRS Online ',
      'isi': '''
Umsida.ac.id – Dalam konteks pembangunan desa, pendaftaran BUMDesa menjadi Badan Hukum adalah hal yang penting. Ini untuk memberikan kejelasan hukum terhadap status dan operasional BUMDesa. Universitas Muhamadiyah Sidoarjo (Umsida) memiliki komitmen untuk membantu proses legalisasi BUMDesa.

Adalah BUMDesa Desa Lemujut, Kecamatan Krembung-Kabupaten Sidoarjo, berhasil memiliki legalitas tersebut melalui program Pengabdian kepada Masyarakat (Abdimas) yang dilaksanakan oleh dosen Umsida. Pada Selasa (14/02/2023) dilakukan serah terima sertifikat Badan Hukum kepada pihak Desa Lemujut.
BUMDesa Desa Lemujut Kembangkan Desa Wisata

Proses untuk menjadikan BUMDesa Desa Lemujut memiliki badan hukum tersebut dilakukan oleh dua dosen dari Program Studi (Prodi) Hukum Umsida, yakni Rifqi Ridlo Pahlevy SH MH dan Sri Budi Purwaningsih SH MKn. Kegiatan Abdimas tersebut telah diselanggarakan sejak Desember 2021 hingga 14 Pebruari 2023.

“Pihak Umsida membantu proses BUMDesa Lemujut untuk mendaftarkan statusnya sebagai Badan Usaha, dan telah mendaftarkan BUMDesa Lemujut kepada Kementerian Hukum dan Hak Asasi Manusia (Kemenkumham),” ujar Sri Budi Purwaningsih.

Dengan menyandang status berbadan hukum maka potensi untuk meraih pendapatan bagi desa akan berkembang semakin besar.

“Raihan tersebut memberikan angin segar bagi BUMDesa Desa Lemujut. Pasalnya, BUMDesa yang berbadan hukum akan dapat meningkatkan kepercayaan investor dan masyarakat dalam menjalin kerjasama bisnis dengan BUMDesa,” uajar Rifqi Ridlo Pahlevy pada acara serah terima di Kantor Kepala Desa Lemujut.

Rifqi menambahkan bahwa dengan legalitas BUMDesa maka potensi untuk mendapatkan sumber pendapatan baru dan menciptakan lapangan kerja di desa akan semakin terbuka.

Kepala Desa Lemujut Zulaimin Nur Rofiq menyambut dan memberi apresiasi atas diterimanya sertifikat Badan Hukum tersebut. “Pihak Desa sangat berterimakasih atas kerjasama ini, dan berharap atas legalisasi yang diberikan, Desa Lemujut dapat menjadi Desa unggul,” tutur Zulaimin Nur Rofiq

Legalitas BUMDesa ini menjadi pemompa semangat Desa Lemujut untuk membuka kerjasama BUMDesa dengan entitas legal mana saja.  “Sesuai dengan progres kami membuat dan membentuk Desa wisata Lemujut,” pungkas Zulaimin Nur Rofiq.

Dengan memiliki status berbadan hukum, BUMDesa Desa Lemujut memiliki legalitas sebagai sebuah badan usaha dalam menjalankan kegiatan usaha karena telah tercatat dalam pangkalan data Direktorat Jenderal Aministrasi Hukum Umum dan pada Kementerian Hukum dan Hak Asasi Manusia (Kemenkumham).

Kegiatan abdimas yang dilakukan oleh Umsida ini merupakan contoh nyata bagaimana perguruan tinggi dapat memberikan kontribusi dalam pengembangan masyarakat. Melalui kegiatan pengabdian masyarakat, Umsida memberikan dukungan dan bantuan yang diperlukan untuk meningkatkan kesejahteraan masyarakat dan memperkuat struktur pemerintahan desa.

Banyaknya BUMDesa yang masih belum memiliki legalitas tersebut menjadi perhatian dari Program Studi (Prodi) Hukum Umsida. Membantu proses legalisasi tersebut merupakan salah satu bentuk Pengabdian kepada Masyarakat (Abdimas) dosen Prodi Hukum Umsida.

Salah satu faktor penting dalam proses legalisasi BUMDEsa adalah bagaimana koordinasi yang baik antara Kepala Desa dengan Badan Permusyarawaratan Desa (BPD).

“Yang terpenting antara pihak Kepala Desa dengan Badan Permusyawaratan Desa (BPD) harus kompak agar dapat optimal,” ujar Rifqi Ridlo Pahlevy menambahkan.

Universitas Muhammadiyah Sidoarjo (Umsida) dengan dengan visi mewujudkan kesejahteraan masyarakat, turut memberikan pengabdian kepada masyarakat dengan membantu mewujudkan legalitas bagi BUMDesa yang masih belum memilikinya.

Dengan adanya kegiatan abdimas seperti ini, diharapkan akan meningkatkan kualitas hidup masyarakat di Desa Lemujut dan sekitarnya. Selain itu, kegiatan abdimas juga dapat membuka peluang untuk melakukan penelitian dan pengembangan di desa untuk memecahkan berbagai masalah dan memperkuat kapasitas masyarakat setempat.

 

Ditulis: Muhammad Asrul Maulana/Rani Syahda Hanifa

Editor: Kumara Adji

''',
      'url': '',
      'tanggal': DateFormat('EEEE').format(DateTime.now()).toString()
    },
    {
      'judul': 'Sosialisasi dan Sharing session kampus mengajar 3',
      'isi': '''
Umsida.ac.id – Dalam konteks pembangunan desa, pendaftaran BUMDesa menjadi Badan Hukum adalah hal yang penting. Ini untuk memberikan kejelasan hukum terhadap status dan operasional BUMDesa. Universitas Muhamadiyah Sidoarjo (Umsida) memiliki komitmen untuk membantu proses legalisasi BUMDesa.

Adalah BUMDesa Desa Lemujut, Kecamatan Krembung-Kabupaten Sidoarjo, berhasil memiliki legalitas tersebut melalui program Pengabdian kepada Masyarakat (Abdimas) yang dilaksanakan oleh dosen Umsida. Pada Selasa (14/02/2023) dilakukan serah terima sertifikat Badan Hukum kepada pihak Desa Lemujut.
BUMDesa Desa Lemujut Kembangkan Desa Wisata

Proses untuk menjadikan BUMDesa Desa Lemujut memiliki badan hukum tersebut dilakukan oleh dua dosen dari Program Studi (Prodi) Hukum Umsida, yakni Rifqi Ridlo Pahlevy SH MH dan Sri Budi Purwaningsih SH MKn. Kegiatan Abdimas tersebut telah diselanggarakan sejak Desember 2021 hingga 14 Pebruari 2023.

“Pihak Umsida membantu proses BUMDesa Lemujut untuk mendaftarkan statusnya sebagai Badan Usaha, dan telah mendaftarkan BUMDesa Lemujut kepada Kementerian Hukum dan Hak Asasi Manusia (Kemenkumham),” ujar Sri Budi Purwaningsih.

Dengan menyandang status berbadan hukum maka potensi untuk meraih pendapatan bagi desa akan berkembang semakin besar.

“Raihan tersebut memberikan angin segar bagi BUMDesa Desa Lemujut. Pasalnya, BUMDesa yang berbadan hukum akan dapat meningkatkan kepercayaan investor dan masyarakat dalam menjalin kerjasama bisnis dengan BUMDesa,” uajar Rifqi Ridlo Pahlevy pada acara serah terima di Kantor Kepala Desa Lemujut.

Rifqi menambahkan bahwa dengan legalitas BUMDesa maka potensi untuk mendapatkan sumber pendapatan baru dan menciptakan lapangan kerja di desa akan semakin terbuka.

Kepala Desa Lemujut Zulaimin Nur Rofiq menyambut dan memberi apresiasi atas diterimanya sertifikat Badan Hukum tersebut. “Pihak Desa sangat berterimakasih atas kerjasama ini, dan berharap atas legalisasi yang diberikan, Desa Lemujut dapat menjadi Desa unggul,” tutur Zulaimin Nur Rofiq

Legalitas BUMDesa ini menjadi pemompa semangat Desa Lemujut untuk membuka kerjasama BUMDesa dengan entitas legal mana saja.  “Sesuai dengan progres kami membuat dan membentuk Desa wisata Lemujut,” pungkas Zulaimin Nur Rofiq.

Dengan memiliki status berbadan hukum, BUMDesa Desa Lemujut memiliki legalitas sebagai sebuah badan usaha dalam menjalankan kegiatan usaha karena telah tercatat dalam pangkalan data Direktorat Jenderal Aministrasi Hukum Umum dan pada Kementerian Hukum dan Hak Asasi Manusia (Kemenkumham).

Kegiatan abdimas yang dilakukan oleh Umsida ini merupakan contoh nyata bagaimana perguruan tinggi dapat memberikan kontribusi dalam pengembangan masyarakat. Melalui kegiatan pengabdian masyarakat, Umsida memberikan dukungan dan bantuan yang diperlukan untuk meningkatkan kesejahteraan masyarakat dan memperkuat struktur pemerintahan desa.

Banyaknya BUMDesa yang masih belum memiliki legalitas tersebut menjadi perhatian dari Program Studi (Prodi) Hukum Umsida. Membantu proses legalisasi tersebut merupakan salah satu bentuk Pengabdian kepada Masyarakat (Abdimas) dosen Prodi Hukum Umsida.

Salah satu faktor penting dalam proses legalisasi BUMDEsa adalah bagaimana koordinasi yang baik antara Kepala Desa dengan Badan Permusyarawaratan Desa (BPD).

“Yang terpenting antara pihak Kepala Desa dengan Badan Permusyawaratan Desa (BPD) harus kompak agar dapat optimal,” ujar Rifqi Ridlo Pahlevy menambahkan.

Universitas Muhammadiyah Sidoarjo (Umsida) dengan dengan visi mewujudkan kesejahteraan masyarakat, turut memberikan pengabdian kepada masyarakat dengan membantu mewujudkan legalitas bagi BUMDesa yang masih belum memilikinya.

Dengan adanya kegiatan abdimas seperti ini, diharapkan akan meningkatkan kualitas hidup masyarakat di Desa Lemujut dan sekitarnya. Selain itu, kegiatan abdimas juga dapat membuka peluang untuk melakukan penelitian dan pengembangan di desa untuk memecahkan berbagai masalah dan memperkuat kapasitas masyarakat setempat.

 

Ditulis: Muhammad Asrul Maulana/Rani Syahda Hanifa

Editor: Kumara Adji

''',
      'url': '',
      'tanggal': DateFormat('EEEE').format(DateTime.now()).toString()
    },
    {
      'judul': 'Alur Herregistrasi',
      'isi': '''
Umsida.ac.id – Dalam konteks pembangunan desa, pendaftaran BUMDesa menjadi Badan Hukum adalah hal yang penting. Ini untuk memberikan kejelasan hukum terhadap status dan operasional BUMDesa. Universitas Muhamadiyah Sidoarjo (Umsida) memiliki komitmen untuk membantu proses legalisasi BUMDesa.

Adalah BUMDesa Desa Lemujut, Kecamatan Krembung-Kabupaten Sidoarjo, berhasil memiliki legalitas tersebut melalui program Pengabdian kepada Masyarakat (Abdimas) yang dilaksanakan oleh dosen Umsida. Pada Selasa (14/02/2023) dilakukan serah terima sertifikat Badan Hukum kepada pihak Desa Lemujut.
BUMDesa Desa Lemujut Kembangkan Desa Wisata

Proses untuk menjadikan BUMDesa Desa Lemujut memiliki badan hukum tersebut dilakukan oleh dua dosen dari Program Studi (Prodi) Hukum Umsida, yakni Rifqi Ridlo Pahlevy SH MH dan Sri Budi Purwaningsih SH MKn. Kegiatan Abdimas tersebut telah diselanggarakan sejak Desember 2021 hingga 14 Pebruari 2023.

“Pihak Umsida membantu proses BUMDesa Lemujut untuk mendaftarkan statusnya sebagai Badan Usaha, dan telah mendaftarkan BUMDesa Lemujut kepada Kementerian Hukum dan Hak Asasi Manusia (Kemenkumham),” ujar Sri Budi Purwaningsih.

Dengan menyandang status berbadan hukum maka potensi untuk meraih pendapatan bagi desa akan berkembang semakin besar.

“Raihan tersebut memberikan angin segar bagi BUMDesa Desa Lemujut. Pasalnya, BUMDesa yang berbadan hukum akan dapat meningkatkan kepercayaan investor dan masyarakat dalam menjalin kerjasama bisnis dengan BUMDesa,” uajar Rifqi Ridlo Pahlevy pada acara serah terima di Kantor Kepala Desa Lemujut.

Rifqi menambahkan bahwa dengan legalitas BUMDesa maka potensi untuk mendapatkan sumber pendapatan baru dan menciptakan lapangan kerja di desa akan semakin terbuka.

Kepala Desa Lemujut Zulaimin Nur Rofiq menyambut dan memberi apresiasi atas diterimanya sertifikat Badan Hukum tersebut. “Pihak Desa sangat berterimakasih atas kerjasama ini, dan berharap atas legalisasi yang diberikan, Desa Lemujut dapat menjadi Desa unggul,” tutur Zulaimin Nur Rofiq

Legalitas BUMDesa ini menjadi pemompa semangat Desa Lemujut untuk membuka kerjasama BUMDesa dengan entitas legal mana saja.  “Sesuai dengan progres kami membuat dan membentuk Desa wisata Lemujut,” pungkas Zulaimin Nur Rofiq.

Dengan memiliki status berbadan hukum, BUMDesa Desa Lemujut memiliki legalitas sebagai sebuah badan usaha dalam menjalankan kegiatan usaha karena telah tercatat dalam pangkalan data Direktorat Jenderal Aministrasi Hukum Umum dan pada Kementerian Hukum dan Hak Asasi Manusia (Kemenkumham).

Kegiatan abdimas yang dilakukan oleh Umsida ini merupakan contoh nyata bagaimana perguruan tinggi dapat memberikan kontribusi dalam pengembangan masyarakat. Melalui kegiatan pengabdian masyarakat, Umsida memberikan dukungan dan bantuan yang diperlukan untuk meningkatkan kesejahteraan masyarakat dan memperkuat struktur pemerintahan desa.

Banyaknya BUMDesa yang masih belum memiliki legalitas tersebut menjadi perhatian dari Program Studi (Prodi) Hukum Umsida. Membantu proses legalisasi tersebut merupakan salah satu bentuk Pengabdian kepada Masyarakat (Abdimas) dosen Prodi Hukum Umsida.

Salah satu faktor penting dalam proses legalisasi BUMDEsa adalah bagaimana koordinasi yang baik antara Kepala Desa dengan Badan Permusyarawaratan Desa (BPD).

“Yang terpenting antara pihak Kepala Desa dengan Badan Permusyawaratan Desa (BPD) harus kompak agar dapat optimal,” ujar Rifqi Ridlo Pahlevy menambahkan.

Universitas Muhammadiyah Sidoarjo (Umsida) dengan dengan visi mewujudkan kesejahteraan masyarakat, turut memberikan pengabdian kepada masyarakat dengan membantu mewujudkan legalitas bagi BUMDesa yang masih belum memilikinya.

Dengan adanya kegiatan abdimas seperti ini, diharapkan akan meningkatkan kualitas hidup masyarakat di Desa Lemujut dan sekitarnya. Selain itu, kegiatan abdimas juga dapat membuka peluang untuk melakukan penelitian dan pengembangan di desa untuk memecahkan berbagai masalah dan memperkuat kapasitas masyarakat setempat.

 

Ditulis: Muhammad Asrul Maulana/Rani Syahda Hanifa

Editor: Kumara Adji

''',
      'url': '',
      'tanggal': DateFormat('EEEE').format(DateTime.now()).toString()
    },
    {
      'judul': 'Informasi Ujian Akhir Semester Genap',
      'isi': '''
Umsida.ac.id – Dalam konteks pembangunan desa, pendaftaran BUMDesa menjadi Badan Hukum adalah hal yang penting. Ini untuk memberikan kejelasan hukum terhadap status dan operasional BUMDesa. Universitas Muhamadiyah Sidoarjo (Umsida) memiliki komitmen untuk membantu proses legalisasi BUMDesa.

Adalah BUMDesa Desa Lemujut, Kecamatan Krembung-Kabupaten Sidoarjo, berhasil memiliki legalitas tersebut melalui program Pengabdian kepada Masyarakat (Abdimas) yang dilaksanakan oleh dosen Umsida. Pada Selasa (14/02/2023) dilakukan serah terima sertifikat Badan Hukum kepada pihak Desa Lemujut.
BUMDesa Desa Lemujut Kembangkan Desa Wisata

Proses untuk menjadikan BUMDesa Desa Lemujut memiliki badan hukum tersebut dilakukan oleh dua dosen dari Program Studi (Prodi) Hukum Umsida, yakni Rifqi Ridlo Pahlevy SH MH dan Sri Budi Purwaningsih SH MKn. Kegiatan Abdimas tersebut telah diselanggarakan sejak Desember 2021 hingga 14 Pebruari 2023.

“Pihak Umsida membantu proses BUMDesa Lemujut untuk mendaftarkan statusnya sebagai Badan Usaha, dan telah mendaftarkan BUMDesa Lemujut kepada Kementerian Hukum dan Hak Asasi Manusia (Kemenkumham),” ujar Sri Budi Purwaningsih.

Dengan menyandang status berbadan hukum maka potensi untuk meraih pendapatan bagi desa akan berkembang semakin besar.

“Raihan tersebut memberikan angin segar bagi BUMDesa Desa Lemujut. Pasalnya, BUMDesa yang berbadan hukum akan dapat meningkatkan kepercayaan investor dan masyarakat dalam menjalin kerjasama bisnis dengan BUMDesa,” uajar Rifqi Ridlo Pahlevy pada acara serah terima di Kantor Kepala Desa Lemujut.

Rifqi menambahkan bahwa dengan legalitas BUMDesa maka potensi untuk mendapatkan sumber pendapatan baru dan menciptakan lapangan kerja di desa akan semakin terbuka.

Kepala Desa Lemujut Zulaimin Nur Rofiq menyambut dan memberi apresiasi atas diterimanya sertifikat Badan Hukum tersebut. “Pihak Desa sangat berterimakasih atas kerjasama ini, dan berharap atas legalisasi yang diberikan, Desa Lemujut dapat menjadi Desa unggul,” tutur Zulaimin Nur Rofiq

Legalitas BUMDesa ini menjadi pemompa semangat Desa Lemujut untuk membuka kerjasama BUMDesa dengan entitas legal mana saja.  “Sesuai dengan progres kami membuat dan membentuk Desa wisata Lemujut,” pungkas Zulaimin Nur Rofiq.

Dengan memiliki status berbadan hukum, BUMDesa Desa Lemujut memiliki legalitas sebagai sebuah badan usaha dalam menjalankan kegiatan usaha karena telah tercatat dalam pangkalan data Direktorat Jenderal Aministrasi Hukum Umum dan pada Kementerian Hukum dan Hak Asasi Manusia (Kemenkumham).

Kegiatan abdimas yang dilakukan oleh Umsida ini merupakan contoh nyata bagaimana perguruan tinggi dapat memberikan kontribusi dalam pengembangan masyarakat. Melalui kegiatan pengabdian masyarakat, Umsida memberikan dukungan dan bantuan yang diperlukan untuk meningkatkan kesejahteraan masyarakat dan memperkuat struktur pemerintahan desa.

Banyaknya BUMDesa yang masih belum memiliki legalitas tersebut menjadi perhatian dari Program Studi (Prodi) Hukum Umsida. Membantu proses legalisasi tersebut merupakan salah satu bentuk Pengabdian kepada Masyarakat (Abdimas) dosen Prodi Hukum Umsida.

Salah satu faktor penting dalam proses legalisasi BUMDEsa adalah bagaimana koordinasi yang baik antara Kepala Desa dengan Badan Permusyarawaratan Desa (BPD).

“Yang terpenting antara pihak Kepala Desa dengan Badan Permusyawaratan Desa (BPD) harus kompak agar dapat optimal,” ujar Rifqi Ridlo Pahlevy menambahkan.

Universitas Muhammadiyah Sidoarjo (Umsida) dengan dengan visi mewujudkan kesejahteraan masyarakat, turut memberikan pengabdian kepada masyarakat dengan membantu mewujudkan legalitas bagi BUMDesa yang masih belum memilikinya.

Dengan adanya kegiatan abdimas seperti ini, diharapkan akan meningkatkan kualitas hidup masyarakat di Desa Lemujut dan sekitarnya. Selain itu, kegiatan abdimas juga dapat membuka peluang untuk melakukan penelitian dan pengembangan di desa untuk memecahkan berbagai masalah dan memperkuat kapasitas masyarakat setempat.

 

Ditulis: Muhammad Asrul Maulana/Rani Syahda Hanifa

Editor: Kumara Adji

''',
      'url': '',
      'tanggal': DateFormat('EEEE').format(DateTime.now()).toString()
    },
    {
      'judul': 'Alur Pendaftaran Wisuda XXXVII',
      'isi': '''
Umsida.ac.id – Dalam konteks pembangunan desa, pendaftaran BUMDesa menjadi Badan Hukum adalah hal yang penting. Ini untuk memberikan kejelasan hukum terhadap status dan operasional BUMDesa. Universitas Muhamadiyah Sidoarjo (Umsida) memiliki komitmen untuk membantu proses legalisasi BUMDesa.

Adalah BUMDesa Desa Lemujut, Kecamatan Krembung-Kabupaten Sidoarjo, berhasil memiliki legalitas tersebut melalui program Pengabdian kepada Masyarakat (Abdimas) yang dilaksanakan oleh dosen Umsida. Pada Selasa (14/02/2023) dilakukan serah terima sertifikat Badan Hukum kepada pihak Desa Lemujut.
BUMDesa Desa Lemujut Kembangkan Desa Wisata

Proses untuk menjadikan BUMDesa Desa Lemujut memiliki badan hukum tersebut dilakukan oleh dua dosen dari Program Studi (Prodi) Hukum Umsida, yakni Rifqi Ridlo Pahlevy SH MH dan Sri Budi Purwaningsih SH MKn. Kegiatan Abdimas tersebut telah diselanggarakan sejak Desember 2021 hingga 14 Pebruari 2023.

“Pihak Umsida membantu proses BUMDesa Lemujut untuk mendaftarkan statusnya sebagai Badan Usaha, dan telah mendaftarkan BUMDesa Lemujut kepada Kementerian Hukum dan Hak Asasi Manusia (Kemenkumham),” ujar Sri Budi Purwaningsih.

Dengan menyandang status berbadan hukum maka potensi untuk meraih pendapatan bagi desa akan berkembang semakin besar.

“Raihan tersebut memberikan angin segar bagi BUMDesa Desa Lemujut. Pasalnya, BUMDesa yang berbadan hukum akan dapat meningkatkan kepercayaan investor dan masyarakat dalam menjalin kerjasama bisnis dengan BUMDesa,” uajar Rifqi Ridlo Pahlevy pada acara serah terima di Kantor Kepala Desa Lemujut.

Rifqi menambahkan bahwa dengan legalitas BUMDesa maka potensi untuk mendapatkan sumber pendapatan baru dan menciptakan lapangan kerja di desa akan semakin terbuka.

Kepala Desa Lemujut Zulaimin Nur Rofiq menyambut dan memberi apresiasi atas diterimanya sertifikat Badan Hukum tersebut. “Pihak Desa sangat berterimakasih atas kerjasama ini, dan berharap atas legalisasi yang diberikan, Desa Lemujut dapat menjadi Desa unggul,” tutur Zulaimin Nur Rofiq

Legalitas BUMDesa ini menjadi pemompa semangat Desa Lemujut untuk membuka kerjasama BUMDesa dengan entitas legal mana saja.  “Sesuai dengan progres kami membuat dan membentuk Desa wisata Lemujut,” pungkas Zulaimin Nur Rofiq.

Dengan memiliki status berbadan hukum, BUMDesa Desa Lemujut memiliki legalitas sebagai sebuah badan usaha dalam menjalankan kegiatan usaha karena telah tercatat dalam pangkalan data Direktorat Jenderal Aministrasi Hukum Umum dan pada Kementerian Hukum dan Hak Asasi Manusia (Kemenkumham).

Kegiatan abdimas yang dilakukan oleh Umsida ini merupakan contoh nyata bagaimana perguruan tinggi dapat memberikan kontribusi dalam pengembangan masyarakat. Melalui kegiatan pengabdian masyarakat, Umsida memberikan dukungan dan bantuan yang diperlukan untuk meningkatkan kesejahteraan masyarakat dan memperkuat struktur pemerintahan desa.

Banyaknya BUMDesa yang masih belum memiliki legalitas tersebut menjadi perhatian dari Program Studi (Prodi) Hukum Umsida. Membantu proses legalisasi tersebut merupakan salah satu bentuk Pengabdian kepada Masyarakat (Abdimas) dosen Prodi Hukum Umsida.

Salah satu faktor penting dalam proses legalisasi BUMDEsa adalah bagaimana koordinasi yang baik antara Kepala Desa dengan Badan Permusyarawaratan Desa (BPD).

“Yang terpenting antara pihak Kepala Desa dengan Badan Permusyawaratan Desa (BPD) harus kompak agar dapat optimal,” ujar Rifqi Ridlo Pahlevy menambahkan.

Universitas Muhammadiyah Sidoarjo (Umsida) dengan dengan visi mewujudkan kesejahteraan masyarakat, turut memberikan pengabdian kepada masyarakat dengan membantu mewujudkan legalitas bagi BUMDesa yang masih belum memilikinya.

Dengan adanya kegiatan abdimas seperti ini, diharapkan akan meningkatkan kualitas hidup masyarakat di Desa Lemujut dan sekitarnya. Selain itu, kegiatan abdimas juga dapat membuka peluang untuk melakukan penelitian dan pengembangan di desa untuk memecahkan berbagai masalah dan memperkuat kapasitas masyarakat setempat.

 

Ditulis: Muhammad Asrul Maulana/Rani Syahda Hanifa

Editor: Kumara Adji

''',
      'url': '',
      'tanggal': DateFormat('EEEE').format(DateTime.now()).toString()
    },
    {
      'judul': 'Alur Herregistrasi',
      'isi': '''
Umsida.ac.id – Dalam konteks pembangunan desa, pendaftaran BUMDesa menjadi Badan Hukum adalah hal yang penting. Ini untuk memberikan kejelasan hukum terhadap status dan operasional BUMDesa. Universitas Muhamadiyah Sidoarjo (Umsida) memiliki komitmen untuk membantu proses legalisasi BUMDesa.

Adalah BUMDesa Desa Lemujut, Kecamatan Krembung-Kabupaten Sidoarjo, berhasil memiliki legalitas tersebut melalui program Pengabdian kepada Masyarakat (Abdimas) yang dilaksanakan oleh dosen Umsida. Pada Selasa (14/02/2023) dilakukan serah terima sertifikat Badan Hukum kepada pihak Desa Lemujut.
BUMDesa Desa Lemujut Kembangkan Desa Wisata

Proses untuk menjadikan BUMDesa Desa Lemujut memiliki badan hukum tersebut dilakukan oleh dua dosen dari Program Studi (Prodi) Hukum Umsida, yakni Rifqi Ridlo Pahlevy SH MH dan Sri Budi Purwaningsih SH MKn. Kegiatan Abdimas tersebut telah diselanggarakan sejak Desember 2021 hingga 14 Pebruari 2023.

“Pihak Umsida membantu proses BUMDesa Lemujut untuk mendaftarkan statusnya sebagai Badan Usaha, dan telah mendaftarkan BUMDesa Lemujut kepada Kementerian Hukum dan Hak Asasi Manusia (Kemenkumham),” ujar Sri Budi Purwaningsih.

Dengan menyandang status berbadan hukum maka potensi untuk meraih pendapatan bagi desa akan berkembang semakin besar.

“Raihan tersebut memberikan angin segar bagi BUMDesa Desa Lemujut. Pasalnya, BUMDesa yang berbadan hukum akan dapat meningkatkan kepercayaan investor dan masyarakat dalam menjalin kerjasama bisnis dengan BUMDesa,” uajar Rifqi Ridlo Pahlevy pada acara serah terima di Kantor Kepala Desa Lemujut.

Rifqi menambahkan bahwa dengan legalitas BUMDesa maka potensi untuk mendapatkan sumber pendapatan baru dan menciptakan lapangan kerja di desa akan semakin terbuka.

Kepala Desa Lemujut Zulaimin Nur Rofiq menyambut dan memberi apresiasi atas diterimanya sertifikat Badan Hukum tersebut. “Pihak Desa sangat berterimakasih atas kerjasama ini, dan berharap atas legalisasi yang diberikan, Desa Lemujut dapat menjadi Desa unggul,” tutur Zulaimin Nur Rofiq

Legalitas BUMDesa ini menjadi pemompa semangat Desa Lemujut untuk membuka kerjasama BUMDesa dengan entitas legal mana saja.  “Sesuai dengan progres kami membuat dan membentuk Desa wisata Lemujut,” pungkas Zulaimin Nur Rofiq.

Dengan memiliki status berbadan hukum, BUMDesa Desa Lemujut memiliki legalitas sebagai sebuah badan usaha dalam menjalankan kegiatan usaha karena telah tercatat dalam pangkalan data Direktorat Jenderal Aministrasi Hukum Umum dan pada Kementerian Hukum dan Hak Asasi Manusia (Kemenkumham).

Kegiatan abdimas yang dilakukan oleh Umsida ini merupakan contoh nyata bagaimana perguruan tinggi dapat memberikan kontribusi dalam pengembangan masyarakat. Melalui kegiatan pengabdian masyarakat, Umsida memberikan dukungan dan bantuan yang diperlukan untuk meningkatkan kesejahteraan masyarakat dan memperkuat struktur pemerintahan desa.

Banyaknya BUMDesa yang masih belum memiliki legalitas tersebut menjadi perhatian dari Program Studi (Prodi) Hukum Umsida. Membantu proses legalisasi tersebut merupakan salah satu bentuk Pengabdian kepada Masyarakat (Abdimas) dosen Prodi Hukum Umsida.

Salah satu faktor penting dalam proses legalisasi BUMDEsa adalah bagaimana koordinasi yang baik antara Kepala Desa dengan Badan Permusyarawaratan Desa (BPD).

“Yang terpenting antara pihak Kepala Desa dengan Badan Permusyawaratan Desa (BPD) harus kompak agar dapat optimal,” ujar Rifqi Ridlo Pahlevy menambahkan.

Universitas Muhammadiyah Sidoarjo (Umsida) dengan dengan visi mewujudkan kesejahteraan masyarakat, turut memberikan pengabdian kepada masyarakat dengan membantu mewujudkan legalitas bagi BUMDesa yang masih belum memilikinya.

Dengan adanya kegiatan abdimas seperti ini, diharapkan akan meningkatkan kualitas hidup masyarakat di Desa Lemujut dan sekitarnya. Selain itu, kegiatan abdimas juga dapat membuka peluang untuk melakukan penelitian dan pengembangan di desa untuk memecahkan berbagai masalah dan memperkuat kapasitas masyarakat setempat.

 

Ditulis: Muhammad Asrul Maulana/Rani Syahda Hanifa

Editor: Kumara Adji

''',
      'url': '',
      'tanggal': DateFormat('EEEE').format(DateTime.now()).toString()
    },
    {
      'judul': 'Informasi Ujian Akhir Semester Genap',
      'isi': '''
Umsida.ac.id – Dalam konteks pembangunan desa, pendaftaran BUMDesa menjadi Badan Hukum adalah hal yang penting. Ini untuk memberikan kejelasan hukum terhadap status dan operasional BUMDesa. Universitas Muhamadiyah Sidoarjo (Umsida) memiliki komitmen untuk membantu proses legalisasi BUMDesa.

Adalah BUMDesa Desa Lemujut, Kecamatan Krembung-Kabupaten Sidoarjo, berhasil memiliki legalitas tersebut melalui program Pengabdian kepada Masyarakat (Abdimas) yang dilaksanakan oleh dosen Umsida. Pada Selasa (14/02/2023) dilakukan serah terima sertifikat Badan Hukum kepada pihak Desa Lemujut.
BUMDesa Desa Lemujut Kembangkan Desa Wisata

Proses untuk menjadikan BUMDesa Desa Lemujut memiliki badan hukum tersebut dilakukan oleh dua dosen dari Program Studi (Prodi) Hukum Umsida, yakni Rifqi Ridlo Pahlevy SH MH dan Sri Budi Purwaningsih SH MKn. Kegiatan Abdimas tersebut telah diselanggarakan sejak Desember 2021 hingga 14 Pebruari 2023.

“Pihak Umsida membantu proses BUMDesa Lemujut untuk mendaftarkan statusnya sebagai Badan Usaha, dan telah mendaftarkan BUMDesa Lemujut kepada Kementerian Hukum dan Hak Asasi Manusia (Kemenkumham),” ujar Sri Budi Purwaningsih.

Dengan menyandang status berbadan hukum maka potensi untuk meraih pendapatan bagi desa akan berkembang semakin besar.

“Raihan tersebut memberikan angin segar bagi BUMDesa Desa Lemujut. Pasalnya, BUMDesa yang berbadan hukum akan dapat meningkatkan kepercayaan investor dan masyarakat dalam menjalin kerjasama bisnis dengan BUMDesa,” uajar Rifqi Ridlo Pahlevy pada acara serah terima di Kantor Kepala Desa Lemujut.

Rifqi menambahkan bahwa dengan legalitas BUMDesa maka potensi untuk mendapatkan sumber pendapatan baru dan menciptakan lapangan kerja di desa akan semakin terbuka.

Kepala Desa Lemujut Zulaimin Nur Rofiq menyambut dan memberi apresiasi atas diterimanya sertifikat Badan Hukum tersebut. “Pihak Desa sangat berterimakasih atas kerjasama ini, dan berharap atas legalisasi yang diberikan, Desa Lemujut dapat menjadi Desa unggul,” tutur Zulaimin Nur Rofiq

Legalitas BUMDesa ini menjadi pemompa semangat Desa Lemujut untuk membuka kerjasama BUMDesa dengan entitas legal mana saja.  “Sesuai dengan progres kami membuat dan membentuk Desa wisata Lemujut,” pungkas Zulaimin Nur Rofiq.

Dengan memiliki status berbadan hukum, BUMDesa Desa Lemujut memiliki legalitas sebagai sebuah badan usaha dalam menjalankan kegiatan usaha karena telah tercatat dalam pangkalan data Direktorat Jenderal Aministrasi Hukum Umum dan pada Kementerian Hukum dan Hak Asasi Manusia (Kemenkumham).

Kegiatan abdimas yang dilakukan oleh Umsida ini merupakan contoh nyata bagaimana perguruan tinggi dapat memberikan kontribusi dalam pengembangan masyarakat. Melalui kegiatan pengabdian masyarakat, Umsida memberikan dukungan dan bantuan yang diperlukan untuk meningkatkan kesejahteraan masyarakat dan memperkuat struktur pemerintahan desa.

Banyaknya BUMDesa yang masih belum memiliki legalitas tersebut menjadi perhatian dari Program Studi (Prodi) Hukum Umsida. Membantu proses legalisasi tersebut merupakan salah satu bentuk Pengabdian kepada Masyarakat (Abdimas) dosen Prodi Hukum Umsida.

Salah satu faktor penting dalam proses legalisasi BUMDEsa adalah bagaimana koordinasi yang baik antara Kepala Desa dengan Badan Permusyarawaratan Desa (BPD).

“Yang terpenting antara pihak Kepala Desa dengan Badan Permusyawaratan Desa (BPD) harus kompak agar dapat optimal,” ujar Rifqi Ridlo Pahlevy menambahkan.

Universitas Muhammadiyah Sidoarjo (Umsida) dengan dengan visi mewujudkan kesejahteraan masyarakat, turut memberikan pengabdian kepada masyarakat dengan membantu mewujudkan legalitas bagi BUMDesa yang masih belum memilikinya.

Dengan adanya kegiatan abdimas seperti ini, diharapkan akan meningkatkan kualitas hidup masyarakat di Desa Lemujut dan sekitarnya. Selain itu, kegiatan abdimas juga dapat membuka peluang untuk melakukan penelitian dan pengembangan di desa untuk memecahkan berbagai masalah dan memperkuat kapasitas masyarakat setempat.

 

Ditulis: Muhammad Asrul Maulana/Rani Syahda Hanifa

Editor: Kumara Adji

''',
      'url': '',
      'tanggal': DateFormat('EEEE').format(DateTime.now()).toString()
    },
    {
      'judul': 'Alur Pendaftaran Wisuda XXXVII',
      'isi': '''
Umsida.ac.id – Dalam konteks pembangunan desa, pendaftaran BUMDesa menjadi Badan Hukum adalah hal yang penting. Ini untuk memberikan kejelasan hukum terhadap status dan operasional BUMDesa. Universitas Muhamadiyah Sidoarjo (Umsida) memiliki komitmen untuk membantu proses legalisasi BUMDesa.

Adalah BUMDesa Desa Lemujut, Kecamatan Krembung-Kabupaten Sidoarjo, berhasil memiliki legalitas tersebut melalui program Pengabdian kepada Masyarakat (Abdimas) yang dilaksanakan oleh dosen Umsida. Pada Selasa (14/02/2023) dilakukan serah terima sertifikat Badan Hukum kepada pihak Desa Lemujut.
BUMDesa Desa Lemujut Kembangkan Desa Wisata

Proses untuk menjadikan BUMDesa Desa Lemujut memiliki badan hukum tersebut dilakukan oleh dua dosen dari Program Studi (Prodi) Hukum Umsida, yakni Rifqi Ridlo Pahlevy SH MH dan Sri Budi Purwaningsih SH MKn. Kegiatan Abdimas tersebut telah diselanggarakan sejak Desember 2021 hingga 14 Pebruari 2023.

“Pihak Umsida membantu proses BUMDesa Lemujut untuk mendaftarkan statusnya sebagai Badan Usaha, dan telah mendaftarkan BUMDesa Lemujut kepada Kementerian Hukum dan Hak Asasi Manusia (Kemenkumham),” ujar Sri Budi Purwaningsih.

Dengan menyandang status berbadan hukum maka potensi untuk meraih pendapatan bagi desa akan berkembang semakin besar.

“Raihan tersebut memberikan angin segar bagi BUMDesa Desa Lemujut. Pasalnya, BUMDesa yang berbadan hukum akan dapat meningkatkan kepercayaan investor dan masyarakat dalam menjalin kerjasama bisnis dengan BUMDesa,” uajar Rifqi Ridlo Pahlevy pada acara serah terima di Kantor Kepala Desa Lemujut.

Rifqi menambahkan bahwa dengan legalitas BUMDesa maka potensi untuk mendapatkan sumber pendapatan baru dan menciptakan lapangan kerja di desa akan semakin terbuka.

Kepala Desa Lemujut Zulaimin Nur Rofiq menyambut dan memberi apresiasi atas diterimanya sertifikat Badan Hukum tersebut. “Pihak Desa sangat berterimakasih atas kerjasama ini, dan berharap atas legalisasi yang diberikan, Desa Lemujut dapat menjadi Desa unggul,” tutur Zulaimin Nur Rofiq

Legalitas BUMDesa ini menjadi pemompa semangat Desa Lemujut untuk membuka kerjasama BUMDesa dengan entitas legal mana saja.  “Sesuai dengan progres kami membuat dan membentuk Desa wisata Lemujut,” pungkas Zulaimin Nur Rofiq.

Dengan memiliki status berbadan hukum, BUMDesa Desa Lemujut memiliki legalitas sebagai sebuah badan usaha dalam menjalankan kegiatan usaha karena telah tercatat dalam pangkalan data Direktorat Jenderal Aministrasi Hukum Umum dan pada Kementerian Hukum dan Hak Asasi Manusia (Kemenkumham).

Kegiatan abdimas yang dilakukan oleh Umsida ini merupakan contoh nyata bagaimana perguruan tinggi dapat memberikan kontribusi dalam pengembangan masyarakat. Melalui kegiatan pengabdian masyarakat, Umsida memberikan dukungan dan bantuan yang diperlukan untuk meningkatkan kesejahteraan masyarakat dan memperkuat struktur pemerintahan desa.

Banyaknya BUMDesa yang masih belum memiliki legalitas tersebut menjadi perhatian dari Program Studi (Prodi) Hukum Umsida. Membantu proses legalisasi tersebut merupakan salah satu bentuk Pengabdian kepada Masyarakat (Abdimas) dosen Prodi Hukum Umsida.

Salah satu faktor penting dalam proses legalisasi BUMDEsa adalah bagaimana koordinasi yang baik antara Kepala Desa dengan Badan Permusyarawaratan Desa (BPD).

“Yang terpenting antara pihak Kepala Desa dengan Badan Permusyawaratan Desa (BPD) harus kompak agar dapat optimal,” ujar Rifqi Ridlo Pahlevy menambahkan.

Universitas Muhammadiyah Sidoarjo (Umsida) dengan dengan visi mewujudkan kesejahteraan masyarakat, turut memberikan pengabdian kepada masyarakat dengan membantu mewujudkan legalitas bagi BUMDesa yang masih belum memilikinya.

Dengan adanya kegiatan abdimas seperti ini, diharapkan akan meningkatkan kualitas hidup masyarakat di Desa Lemujut dan sekitarnya. Selain itu, kegiatan abdimas juga dapat membuka peluang untuk melakukan penelitian dan pengembangan di desa untuk memecahkan berbagai masalah dan memperkuat kapasitas masyarakat setempat.

 

Ditulis: Muhammad Asrul Maulana/Rani Syahda Hanifa

Editor: Kumara Adji

''',
      'url': '',
      'tanggal': DateFormat('EEEE').format(DateTime.now()).toString()
    },
  ];
}
