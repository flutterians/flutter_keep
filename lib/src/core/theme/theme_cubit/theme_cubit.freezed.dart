// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeState {
  ThemeType get themeType => throw _privateConstructorUsedError;
  ThemeData get themeData => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeType themeType, ThemeData themeData)
        syncTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeType themeType, ThemeData themeData)? syncTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeType themeType, ThemeData themeData)? syncTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SyncTheme value) syncTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SyncTheme value)? syncTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SyncTheme value)? syncTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
  @useResult
  $Res call({ThemeType themeType, ThemeData themeData});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeType = null,
    Object? themeData = null,
  }) {
    return _then(_value.copyWith(
      themeType: null == themeType
          ? _value.themeType
          : themeType // ignore: cast_nullable_to_non_nullable
              as ThemeType,
      themeData: null == themeData
          ? _value.themeData
          : themeData // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SyncThemeCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory _$$_SyncThemeCopyWith(
          _$_SyncTheme value, $Res Function(_$_SyncTheme) then) =
      __$$_SyncThemeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeType themeType, ThemeData themeData});
}

/// @nodoc
class __$$_SyncThemeCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$_SyncTheme>
    implements _$$_SyncThemeCopyWith<$Res> {
  __$$_SyncThemeCopyWithImpl(
      _$_SyncTheme _value, $Res Function(_$_SyncTheme) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeType = null,
    Object? themeData = null,
  }) {
    return _then(_$_SyncTheme(
      themeType: null == themeType
          ? _value.themeType
          : themeType // ignore: cast_nullable_to_non_nullable
              as ThemeType,
      themeData: null == themeData
          ? _value.themeData
          : themeData // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ));
  }
}

/// @nodoc

class _$_SyncTheme implements _SyncTheme {
  const _$_SyncTheme({required this.themeType, required this.themeData});

  @override
  final ThemeType themeType;
  @override
  final ThemeData themeData;

  @override
  String toString() {
    return 'ThemeState.syncTheme(themeType: $themeType, themeData: $themeData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SyncTheme &&
            (identical(other.themeType, themeType) ||
                other.themeType == themeType) &&
            (identical(other.themeData, themeData) ||
                other.themeData == themeData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeType, themeData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SyncThemeCopyWith<_$_SyncTheme> get copyWith =>
      __$$_SyncThemeCopyWithImpl<_$_SyncTheme>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeType themeType, ThemeData themeData)
        syncTheme,
  }) {
    return syncTheme(themeType, themeData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeType themeType, ThemeData themeData)? syncTheme,
  }) {
    return syncTheme?.call(themeType, themeData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeType themeType, ThemeData themeData)? syncTheme,
    required TResult orElse(),
  }) {
    if (syncTheme != null) {
      return syncTheme(themeType, themeData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SyncTheme value) syncTheme,
  }) {
    return syncTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SyncTheme value)? syncTheme,
  }) {
    return syncTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SyncTheme value)? syncTheme,
    required TResult orElse(),
  }) {
    if (syncTheme != null) {
      return syncTheme(this);
    }
    return orElse();
  }
}

abstract class _SyncTheme implements ThemeState {
  const factory _SyncTheme(
      {required final ThemeType themeType,
      required final ThemeData themeData}) = _$_SyncTheme;

  @override
  ThemeType get themeType;
  @override
  ThemeData get themeData;
  @override
  @JsonKey(ignore: true)
  _$$_SyncThemeCopyWith<_$_SyncTheme> get copyWith =>
      throw _privateConstructorUsedError;
}
