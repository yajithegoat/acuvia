String mapError(Object error) {
  final msg = error.toString();
  if (msg.contains('SocketException')) {
    return 'Network error. Check your connection.';
  }
  if (msg.contains('401')) return 'Session expired. Please log in again.';
  if (msg.contains('500')) return 'Server error. Please try later.';
  return 'Something went wrong. $msg';
}
