class AcademyInfo {
  const AcademyInfo({
    this.name,
    this.shortName,
    this.ownerName,
    this.email,
    this.phone,
    this.primaryMartialArt,
    this.primaryOrganization,
  });

  final String? name;
  final String? shortName;
  final String? ownerName;
  final String? email;
  final String? phone;

  final String? primaryMartialArt;
  final String? primaryOrganization;

  AcademyInfo copyWith({
    String? name,
    String? shortName,
    String? ownerName,
    String? email,
    String? phone,
    String? primaryMartialArt,
    String? primaryOrganization,
  }) {
    return AcademyInfo(
      name: name ?? this.name,
      shortName: shortName ?? this.shortName,
      ownerName: ownerName ?? this.ownerName,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      primaryMartialArt:
          primaryMartialArt ?? this.primaryMartialArt,
      primaryOrganization:
          primaryOrganization ?? this.primaryOrganization,
    );
  }
}