import 'package:get_it/get_it.dart';
import 'package:location/location.dart';
import 'package:okoa/features/feature_add_partner/data/repository/partner_repository_impl.dart';
import 'package:okoa/features/feature_add_partner/domain/repository/partner_repository.dart';
import 'package:okoa/features/feature_add_partner/domain/use_cases/check_contact_permission.dart';
import 'package:okoa/features/feature_add_partner/domain/use_cases/get_contacts.dart';
import 'package:okoa/features/feature_add_partner/domain/use_cases/partner_use_cases.dart';
import 'package:okoa/features/feature_add_partner/domain/use_cases/request_contact_permission.dart';
import 'package:okoa/features/feature_add_partner/domain/use_cases/send_partner_request.dart';
import 'package:okoa/features/feature_add_partner/domain/use_cases/update_partners_on_db.dart';
import 'package:okoa/features/feature_track/data/repository/track_repository_impl.dart';
import 'package:okoa/features/feature_track/domain/repository/track_repository.dart';
import 'package:okoa/features/feature_track/domain/use_case/listen_to_current_location.dart';
import 'package:okoa/features/feature_track/domain/use_case/request_location_service.dart';
import 'package:okoa/features/feature_track/domain/use_case/track_use_case.dart';

void partnerDI({required GetIt locator}) {
  /// Partner Repo
  locator
      .registerLazySingleton<PartnerRepository>(() => PartnerRepositoryImpl());

  /// Partner Use Cases
  locator.registerLazySingleton<PartnerUseCases>(() => PartnerUseCases(
      checkContactPermission: CheckContactPermission(),
      requestContactPermission: RequestContactPermission(),
      getContactsUseCase: GetContactsUseCase(),
      sendPartnerRequest: SendPartnerRequest(),
      updatePartnersOnDB: UpdatePartnersOnDB()));
}
