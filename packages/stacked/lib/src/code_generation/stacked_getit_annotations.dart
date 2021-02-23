/// The class to describe a service registration on the get_it locator
class DependencyRegistration {
  /// The type of the service to register
  final Type classType;

  const DependencyRegistration({this.classType});
}

/// Registers the type passed in as a singleton instance in the get_it locator
class Singleton extends DependencyRegistration {
  const Singleton({Type classType}) : super(classType: classType);
}

/// Registers the type passed in as a LazySingleton instance in the get_it locator
class LazySingleton extends DependencyRegistration {
  const LazySingleton({Type classType}) : super(classType: classType);
}

/// Registers the type passed in as a Factory in the get_it locator
class Factory extends DependencyRegistration {
  const Factory({Type classType}) : super(classType: classType);
}

/// Registers the type passed in to be presolved using the function passed in
class Presolve extends DependencyRegistration {
  /// The static instance Future function to use for resolving the type registered
  final Future Function() presolveUsing;

  const Presolve({Type classType, this.presolveUsing})
      : super(classType: classType);
}
