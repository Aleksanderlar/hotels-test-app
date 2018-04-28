package hotels.test.app

class CountryController {
    static scaffold = true

    def index() {
        //def results = Country.findAll()
        //render results as JSON
        [countryInstanceList: Country.list()]

    }
}
