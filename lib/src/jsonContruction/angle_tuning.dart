
import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'angle_tuning.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(explicitToJson: true)
class AngleTuning {
  AngleTuning(this.p, this.i, this.d, this.f, this.iz);

  double p = 0.0020645;
  double i = 0.0;
  double d = 0.0;
  double f = 0.0;
  double iz = 0.0;

  @JsonKey(includeToJson: false)
  String? fileName;

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory AngleTuning.fromJson(Map<String, dynamic> json) => _$AngleTuningFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$AngleTuningToJson(this);
}