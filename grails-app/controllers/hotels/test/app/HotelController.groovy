package hotels.test.app

class HotelController {
    def scaffold = true

    def index() {
        [hotelInstanceList: Hotel.list()]
    }
}
