import 'package:flutter/material.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';
import 'package:mobileapp_scabies/core/constants/font_size.dart';

class SurveyItem extends StatefulWidget {
  final String pertanyaanSatu;
  final String pertanyaanDua;
  final String pertanyaanTiga;
  final String pertanyaanEmpat;
  const SurveyItem({
    super.key,
    required this.pertanyaanSatu,
    required this.pertanyaanDua,
    required this.pertanyaanTiga,
    required this.pertanyaanEmpat,
  });

  @override
  State<SurveyItem> createState() => _SurveyItemState();
}

class _SurveyItemState extends State<SurveyItem> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.07),
              spreadRadius: 0,
              blurRadius: 20,
              offset: const Offset(4, 4),
            ),
          ],
        ),
        child: ExpansionTile(
          title: Text(
            'Survey Test Scabies Pasien',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: AppFontSize.bodySmall,
              overflow: isOpen ? null : TextOverflow.ellipsis,
            ),
            maxLines: isOpen ? null : 1,
          ),
          onExpansionChanged: (value) {
            setState(() {
              isOpen = !isOpen;
            });
          },
          expandedAlignment: Alignment.topLeft,
          childrenPadding: const EdgeInsets.symmetric(horizontal: 16),
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Pertanyaan 1',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.pertanyaanSatu,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Pertanyaan 2',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.pertanyaanDua,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Pertanyaan 3',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.pertanyaanTiga,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Pertanyaan 4',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.pertanyaanEmpat,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: AppFontSize.caption,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
