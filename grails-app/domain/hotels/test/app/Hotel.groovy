package hotels.test.app

class Hotel {
    static belongsTo = [country: Country]
    String name
    String site
    int stars


    static constraints = {
        name(size: 0..255, unique: ['country'])
        country()
        stars(range: 1..5)
        site(nullable: true, url: true, matches: "^https?://[a-zA-Z0-9_-]*.[A-Za-z]{2,10}\$")
    }
}
