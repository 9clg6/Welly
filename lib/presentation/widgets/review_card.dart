import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:welly/core/localization/generated/locale_keys.g.dart';
import 'package:welly/domain/entities/happen_action.entity.dart';
import 'package:welly/presentation/widgets/text_variant.dart';

/// Review card
class ReviewCard extends StatelessWidget {
  /// Constructor
  const ReviewCard({required this.entry, super.key});

  /// Entry
  final HappenActionEntity entry;

  /// Build
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black.withValues(alpha: 0.1)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.15),
            blurRadius: 16,
            spreadRadius: 1,
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextVariant(
            LocaleKeys.reviewCardTitle.tr(),
            variantType: TextVariantType.bodySmall,
            color: Colors.black.withValues(alpha: 0.8),
            fontWeight: FontWeight.w300,
          ),
          const SizedBox(height: 6),
          TextVariant(
            entry.happen,
            variantType: TextVariantType.bodyLarge,
            color: Colors.black,
          ),
          const SizedBox(height: 42),
          TextVariant(
            LocaleKeys.reviewCardSubtitle.tr(),
            variantType: TextVariantType.bodySmall,
            color: Colors.black.withValues(alpha: 0.8),
            fontWeight: FontWeight.w300,
          ),
          const SizedBox(height: 6),
          TextVariant(
            entry.action,
            variantType: TextVariantType.bodyLarge,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
