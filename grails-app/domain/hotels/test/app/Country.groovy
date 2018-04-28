package hotels.test.app

class Country {
    static hasMany = [hotels: Hotel]

    String name
    String capital

    String toString() {
        "${name}"
    }

    static constraints = {
        name(size: 0..255, unique: true)
        capital(size: 0..128)
    }

    static mapping = {
        hotels(cascade: "all-delete-orphan")
    }
}
