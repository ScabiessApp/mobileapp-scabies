import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';
import 'package:mobileapp_scabies/core/constants/font_size.dart';
import 'package:mobileapp_scabies/core/widgets/custom_text_form_field.dart';
import 'package:mobileapp_scabies/core/widgets/warning_widget.dart';
import 'package:mobileapp_scabies/features/scanning/provider/scanner_provider.dart';
import 'package:mobileapp_scabies/features/scanning/widgets/camera_modal.dart';
import 'package:provider/provider.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Tes Scabies',
          style: TextStyle(
            color: AppColors.white,
            fontSize: AppFontSize.bodyLarge,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Provider.of<ScannerProvider>(context, listen: false)
                .clearDataTesScabies();
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            color: AppColors.white,
          ),
        ),
        backgroundColor: AppColors.brandColor,
        shadowColor: AppColors.black.withOpacity(0.2),
      ),
      body: Consumer<ScannerProvider>(
        builder: (context, scannerProvider, _) {
          return Form(
            key: scannerProvider.tesScabiesFormKey,
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                warningWidget(
                    'Lengkapi data dibawah ini dengan data yang valid dan benar.'),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Data Diri',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.bodyMedium,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Divider(
                  color: AppColors.neutral100,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Nama Lengkap',
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  textInputAction: TextInputAction.next,
                  validator: (value) =>
                      scannerProvider.validatePertanyaan(value, context),
                  controller: scannerProvider.namaLengkapController,
                  enable: true,
                  maxLines: 1,
                  hint: "Tambahkan nama lengkap anda",
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Jenis Kelamin',
                ),
                const SizedBox(
                  height: 8,
                ),
                DropdownButtonFormField<String>(
                  value: scannerProvider.jenisKelamin,
                  style: const TextStyle(
                    fontSize: AppFontSize.bodySmall,
                    color: AppColors.black,
                  ),
                  onChanged: (String? newValue) => setState(
                      () => scannerProvider.jenisKelamin = newValue ?? ''),
                  items: scannerProvider.listJenisKelamin
                      .map<DropdownMenuItem<String>>(
                          (String value) => DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              ))
                      .toList(),
                  icon: const Icon(Icons.arrow_drop_down),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: AppColors.neutral300),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: AppColors.error500),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    errorStyle: const TextStyle(
                      color: AppColors.error500,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: AppColors.neutral300),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    contentPadding: const EdgeInsets.all(16),
                    fillColor: AppColors.white,
                    filled: true,
                  ),
                  validator: (value) =>
                      value == null ? 'Field tidak boleh kosong.' : null,
                  iconSize: 20,
                  isExpanded: true,
                  hint: const Text(
                    'Pilih Jenis Kelamin',
                    style: TextStyle(
                      fontSize: AppFontSize.bodySmall,
                      color: AppColors.neutral600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'No HP',
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  textInputAction: TextInputAction.next,
                  validator: (value) =>
                      scannerProvider.validatePertanyaan(value, context),
                  controller: scannerProvider.noHpController,
                  keyboardType: TextInputType.number,
                  enable: true,
                  maxLines: 1,
                  hint: "Tambahkan No Hp anda",
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Alamat',
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  textInputAction: TextInputAction.next,
                  validator: (value) =>
                      scannerProvider.validatePertanyaan(value, context),
                  controller: scannerProvider.alamatController,
                  enable: true,
                  maxLines: 4,
                  hint: "Tambahkan alamat lengkap anda",
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  'Tes Scabies',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.bodyMedium,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Divider(
                  color: AppColors.neutral100,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Pertanyaan 1',
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  textInputAction: TextInputAction.next,
                  validator: (value) =>
                      scannerProvider.validatePertanyaan(value, context),
                  controller: scannerProvider.pertanyaanSatuController,
                  enable: true,
                  maxLines: 1,
                  hint: "Hint Pertanyaan",
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Pertanyaan 2',
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  textInputAction: TextInputAction.next,
                  validator: (value) =>
                      scannerProvider.validatePertanyaan(value, context),
                  controller: scannerProvider.pertanyaanDuaController,
                  enable: true,
                  maxLines: 1,
                  hint: "Hint Pertanyaan",
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Pertanyaan 3',
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  textInputAction: TextInputAction.next,
                  validator: (value) =>
                      scannerProvider.validatePertanyaan(value, context),
                  controller: scannerProvider.pertanyaanTigaController,
                  enable: true,
                  maxLines: 1,
                  hint: "Hint Pertanyaan",
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Pertanyaan 4',
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  textInputAction: TextInputAction.done,
                  validator: (value) =>
                      scannerProvider.validatePertanyaan(value, context),
                  controller: scannerProvider.pertanyaanEmpatController,
                  enable: true,
                  maxLines: 1,
                  hint: "Hint Pertanyaan",
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () async {
                    if (scannerProvider.tesScabiesFormKey.currentState!
                        .validate()) {
                      showCameraModal(context);
                    }
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                    ),
                    backgroundColor: const MaterialStatePropertyAll(
                      AppColors.brandColor,
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        IconlyLight.camera,
                        size: 24,
                        color: AppColors.white,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Flexible(
                        child: Text(
                          'Mulai Scan Kulit',
                          style: TextStyle(
                            fontSize: AppFontSize.bodyMedium,
                            fontWeight: FontWeight.normal,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
