import Hummingbird

func routes(_ app: HBApplication) throws {

    app.router.get { req async in
        return HBResponse.redirect(to: "/index.html")
    }
    
    app.router.get("hello") { req async -> String in
        "Hello, world!"
    }
}
