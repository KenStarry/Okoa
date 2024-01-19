import 'package:okoa/di/di.dart';
import 'package:okoa/features/feature_add_partner/domain/repository/partner_repository.dart';

class CheckContactPermission {
  final repo = locator.get<PartnerRepository>();

  void call({required Function(bool isGranted) onCheckPermission}) =>
      repo.checkContactPermission(onCheckPermission: onCheckPermission);
}
