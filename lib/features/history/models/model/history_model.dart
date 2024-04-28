import 'dart:io';

class HistoryModel {
  final String id;
  final File imageFile;
  final String description;
  final DateTime dateTime;
  final String nama;
  final String jenisKelamin;
  final String noHp;
  final String alamat;
  final String pertanyaanSatu;
  final String pertanyaanDua;
  final String pertanyaanTiga;
  final String pertanyaanEmpat;

  HistoryModel({
    required this.id,
    required this.imageFile,
    required this.description,
    required this.dateTime,
    required this.nama,
    required this.jenisKelamin,
    required this.noHp,
    required this.alamat,
    required this.pertanyaanSatu,
    required this.pertanyaanDua,
    required this.pertanyaanTiga,
    required this.pertanyaanEmpat,
  });
}
