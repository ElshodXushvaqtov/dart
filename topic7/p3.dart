enum Status { pending, shipped, delivered }

String getText(Status status) {
  return switch (status) {
    Status.pending => 'Waiting...',
    Status.shipped => 'On the way',
    Status.delivered => 'Delivered!',
  };
}

void main() {
  for (Status s in Status.values) {
    print('${s.name}: ${getText(s)}');
  }
}
