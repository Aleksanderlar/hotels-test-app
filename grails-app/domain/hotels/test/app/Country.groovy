package hotels.test.app

class Country {

    String name
    String capital

    String toString() {
        "${name}"
    }

    static constraints = {
        name(size: 0..255, unique: true)
        capital(size: 0..128)
    }
}
