class ModelsMahasiswa {
  int? smester;
  String? nama,
      nim,
      passw,
      prodi,
      alamat,
      tanggallahir,
      kelas,
      fakultas,
      imageurl;

  ModelsMahasiswa(
      {this.nim,
      this.smester,
      this.nama,
      this.alamat,
      this.passw,
      this.kelas,
      this.tanggallahir,
      this.prodi,
      this.fakultas,
      this.imageurl});

  factory ModelsMahasiswa.fromJson(Map<String, dynamic> json) {
    return ModelsMahasiswa(
      nim: json['nim'],
      passw: json['passw'],
      nama: json['nama'],
      prodi: json['prodi'],
      kelas: json['kelas'],
      fakultas: json['fakultas'],
      imageurl: json['imageurl'],
      alamat: json['alamat'],
      tanggallahir: json['tanggallahir'],
      smester: json['smester'],
    );
  }
}
