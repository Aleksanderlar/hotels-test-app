package hotels.test.app

class Hotel {

    String name
    Country country
    String site
    int stars

    static constraints = {
        name(size: 0..255, unique: ['country'])
        country()
        stars(range: 1..5)
        site(nullable: true, url: true)
    }
}
