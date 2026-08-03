import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/entities/academy_setup.dart';

final academySetupProvider =
    NotifierProvider<AcademySetupNotifier, AcademySetup>(
  AcademySetupNotifier.new,
);

class AcademySetupNotifier extends Notifier<AcademySetup> {
  @override
  AcademySetup build() {
    return const AcademySetup();
  }

  void reset() {
    state = const AcademySetup();
  }

  void update({
    String? primaryMartialArt,
    String? primaryOrganization,
    String? academyName,
    String? shortName,
    String? ownerName,
    String? email,
    String? phone,
    String? branchName,
    String? address,
    String? city,
    String? province,
    String? zipCode,
    String? billingMethod,
  }) {
    state = state.copyWith(
      primaryMartialArt: primaryMartialArt,
      primaryOrganization: primaryOrganization,
      academyName: academyName,
      shortName: shortName,
      ownerName: ownerName,
      email: email,
      phone: phone,
      branchName: branchName,
      address: address,
      city: city,
      province: province,
      zipCode: zipCode,
      billingMethod: billingMethod,
    );
  }

  void setPrimaryMartialArt(String value) {
    state = state.copyWith(
      primaryMartialArt: value,
    );
  }

  void setPrimaryOrganization(String value) {
    state = state.copyWith(
      primaryOrganization: value,
    );
  }

  void setAcademyInformation({
    required String academyName,
    required String shortName,
    required String ownerName,
    required String email,
    required String phone,
  }) {
    state = state.copyWith(
      academyName: academyName,
      shortName: shortName,
      ownerName: ownerName,
      email: email,
      phone: phone,
    );
  }

  void setPrimaryBranch({
    required String branchName,
    required String address,
    required String city,
    required String province,
    required String zipCode,
  }) {
    state = state.copyWith(
      branchName: branchName,
      address: address,
      city: city,
      province: province,
      zipCode: zipCode,
    );
  }

  void setBillingMethod(String value) {
    state = state.copyWith(
      billingMethod: value,
    );
  }
}