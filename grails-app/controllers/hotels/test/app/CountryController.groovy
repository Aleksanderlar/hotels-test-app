package hotels.test.app

class CountryController {
    def scaffold = true

    def index() {
        //def results = Country.findAll()
        //render results as JSON
        [countryInstanceList: Country.list()]

    }
}
