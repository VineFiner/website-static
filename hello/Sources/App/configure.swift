import HummingbirdFoundation
import Hummingbird

// configures your application
public func configure(_ app: HBApplication) async throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    
    app.middleware.add(
        HBFileMiddleware(
            "Public",
            searchForIndexHtml: true,
            application: app
        )
    )
    
    // register routes
    try routes(app)
}
