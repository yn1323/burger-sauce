// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:burger_sauce/graphql/__generated__/serializers.gql.dart' as _i1;

part 'wakeup.data.gql.g.dart';

abstract class GWakeUpData implements Built<GWakeUpData, GWakeUpDataBuilder> {
  GWakeUpData._();

  factory GWakeUpData([Function(GWakeUpDataBuilder b) updates]) = _$GWakeUpData;

  static void _initializeBuilder(GWakeUpDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GWakeUpData_natures> get natures;
  static Serializer<GWakeUpData> get serializer => _$gWakeUpDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GWakeUpData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GWakeUpData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GWakeUpData.serializer,
        json,
      );
}

abstract class GWakeUpData_natures
    implements Built<GWakeUpData_natures, GWakeUpData_naturesBuilder> {
  GWakeUpData_natures._();

  factory GWakeUpData_natures(
      [Function(GWakeUpData_naturesBuilder b) updates]) = _$GWakeUpData_natures;

  static void _initializeBuilder(GWakeUpData_naturesBuilder b) =>
      b..G__typename = 'Nature';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GWakeUpData_natures> get serializer =>
      _$gWakeUpDataNaturesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GWakeUpData_natures.serializer,
        this,
      ) as Map<String, dynamic>);

  static GWakeUpData_natures? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GWakeUpData_natures.serializer,
        json,
      );
}
