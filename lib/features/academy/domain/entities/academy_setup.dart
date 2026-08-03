class AcademySetup {
  const AcademySetup({
    this.primaryMartialArt,
    this.primaryOrganization,
    this.academyName,
    this.shortName,
    this.ownerName,
    this.email,
    this.phone,
    this.branchName,
    this.address,
    this.city,
    this.province,
    this.zipCode,
    this.billingMethod,
  });

  final String? primaryMartialArt;
  final String? primaryOrganization;

  final String? academyName;
  final String? shortName;
  final String? ownerName;
  final String? email;
  final String? phone;

  final String? branchName;
  final String? address;
  final String? city;
  final String? province;
  final String? zipCode;

  final String? billingMethod;

  AcademySetup copyWith({
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
    return AcademySetup(
      primaryMartialArt:
          primaryMartialArt ?? this.primaryMartialArt,
      primaryOrganization:
          primaryOrganization ??
              this.primaryOrganization,
      academyName:
          academyName ?? this.academyName,
      shortName:
          shortName ?? this.shortName,
      ownerName:
          ownerName ?? this.ownerName,
      email:
          email ?? this.email,
      phone:
          phone ?? this.phone,
      branchName:
          branchName ?? this.branchName,
      address:
          address ?? this.address,
      city:
          city ?? this.city,
      province:
          province ?? this.province,
      zipCode:
          zipCode ?? this.zipCode,
      billingMethod:
          billingMethod ??
              this.billingMethod,
    );
  }
}