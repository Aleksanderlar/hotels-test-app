package hotels.test.app

class HotelController {
    static scaffold = true

    def index() {
        [hotelInstanceList: Hotel.list()]
    }
}
