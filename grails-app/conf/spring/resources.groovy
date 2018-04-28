// Place your Spring DSL code here
beans = {
    localeResolver(SessionLocaleResolver) {
        defaultLocale= new Locale('ru')
    }
}
