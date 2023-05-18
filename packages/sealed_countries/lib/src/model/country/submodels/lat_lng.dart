/// A geographic point on the Earth's surface, defined by its latitude and
/// longitude.
///
/// The `LatLng` class is a simple value object that represents a geographic
/// point on the Earth's surface. It consists of a latitude and longitude pair,
/// each of which is represented as a `double` value.
///
/// Example usage:
///
/// ```dart
/// final point = LatLng(37.7749, -122.4194);
/// print(point.latitude); // Prints: 37.7749
/// print(point.longitude); // Prints: -122.4194
/// ```
final class LatLng {
  /// Creates a new `LatLng` object with the given latitude and longitude.
  const LatLng(this.latitude, this.longitude);

  /// The latitude of this geographic point, in degrees.
  final double latitude;

  /// The longitude of this geographic point, in degrees.
  final double longitude;

  @override
  String toString() => "LatLng(latitude: $latitude, longitude: $longitude)";

  @override
  bool operator ==(covariant LatLng other) {
    if (identical(this, other)) return true;

    return other.latitude == latitude && other.longitude == longitude;
  }

  @override
  int get hashCode => latitude.hashCode ^ longitude.hashCode;
}
