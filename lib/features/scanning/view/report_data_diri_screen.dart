import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';
import 'package:mobileapp_scabies/core/constants/font_size.dart';
import 'package:mobileapp_scabies/core/widgets/custom_text_form_field.dart';
import 'package:mobileapp_scabies/core/widgets/warning_widget.dart';
import 'package:mobileapp_scabies/features/scanning/provider/scanner_provider.dart';
import 'package:mobileapp_scabies/features/scanning/view/report_section_one_screen.dart';
import 'package:provider/provider.dart';

class ReportDataDiriScreen extends StatefulWidget {
  const ReportDataDiriScreen({super.key});

  @override
  State<ReportDataDiriScreen> createState() => _ReportDataDiriScreenState();
}

class _ReportDataDiriScreenState extends State<ReportDataDiriScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ScannerProvider>().clearDataTesScabies();
    });
    super.initState();
  }

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
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            color: AppColors.white,
          ),
        ),
        actions: const [
          Text(
            '1/5',
            style: TextStyle(
              color: AppColors.white,
              fontSize: AppFontSize.bodyLarge,
            ),
          ),
          SizedBox(
            width: 16,
          ),
        ],
        backgroundColor: AppColors.brandColor,
        shadowColor: AppColors.black.withOpacity(0.2),
      ),
      body: Consumer<ScannerProvider>(
        builder: (context, scannerProvider, _) {
          return Form(
            key: scannerProvider.dataDiriFormKey,
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
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () async {
                    if (scannerProvider.dataDiriFormKey.currentState!
                        .validate()) {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) => const ReportSectionOneScreen(),
                        ),
                      );
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
                  child: const Text(
                    'Lanjut',
                    style: TextStyle(
                      fontSize: AppFontSize.bodyMedium,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white,
                    ),
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
