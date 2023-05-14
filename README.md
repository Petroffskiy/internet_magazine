# internet_magazine

Tests for job

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



enum TestCreation {
  creation,
  created,
  error,
}

extension TestCreationX on TestCreation {
  bool get isCreation => this == TestCreation.creation;

  bool get isCreated => this == TestCreation.created;

  bool get isError => this == TestCreation.error;
}

class TestCreationState extends Equatable {
  final TestCreation status;
  final String? name;
  final List<HiveChild>? children;

  const TestCreationState(
      {
        this.status = TestCreation.creation,
        this.name,
        this.children,
        });

  TestCreationState copyWith({
    TestCreation? status,
    String? name,
    List<HiveChild>? children,
  }) {
    return AlbumCreationState(
        status: status ?? this.status,
        name: name ?? this.name,
        children: children ?? this.children);
  }

  @override
  List<Object?> get props => [
        status, name, children,
        //sheets
      ];
}
