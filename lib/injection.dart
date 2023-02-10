part of check_in_application;

@injectableInit
void configureInjectionApp(String env) {
  $initGetIt(facade.getIt, environment: env);
}