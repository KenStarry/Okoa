abstract class PartnerRepository {
  //  Check permission
  void checkContactPermission({required bool isGranted});

  //  Request contact permission
  void requestContactPermission({required bool isGranted});
}
