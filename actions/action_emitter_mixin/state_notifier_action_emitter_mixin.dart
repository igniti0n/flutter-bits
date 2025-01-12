mixin StateNotifierActionEmitterMixin<T, S> on StateNotifier<S> implements ActionEmitter<T> {
  final _actionSubject = PublishSubject<T>();

  @override
  Stream<T> get action => _actionSubject;

  @override
  void dispose() {
    _actionSubject.close();
    super.dispose();
  }

  @protected
  void emitAction(T action) {
    _actionSubject.add(action);
  }
}
