import hotels.test.app.Country
import hotels.test.app.Hotel

class BootStrap {

    def init = { servletContext ->
        def hotelNames = ["Гостиница", "Отель", "Хостел"]
        List<Country> countries = new ArrayList<>()
        List<Hotel> hotels = new ArrayList<>()
        Random random = new Random()
        for (int i = 1; i <= 10; i++) {
            countries.add(new Country(name: "Страна №${i}", capital: "Столица №${i}"))
        }
        for (int i = 1; i <= 50; i++) {
            Hotel hotel = new Hotel(name: "${hotelNames.get(random.nextInt(3))} №${i}", country: countries.get(random.nextInt(10)), stars: random.nextInt(5) + 1)
            if (random.nextBoolean()) {
                hotel.setSite("http://site${i}.ru")
            }
            hotels.add(hotel)
        }
        Country.saveAll(countries)
        Hotel.saveAll(hotels)
    }
    def destroy = {
    }
}
