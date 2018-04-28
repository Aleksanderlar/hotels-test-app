package hotels.test.app

class SearchController {

    def index() {

    }

    def results() {
        String name = request.getParameter("name")
        def c = Hotel.createCriteria()
        def hotels = c {
            ilike("name", "%${name}%")
            order("stars", "desc")
            order("name", "asc")
        }
        [hotels: hotels]
    }
}
