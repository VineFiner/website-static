import Hummingbird

@main
enum Entrypoint {
    static func main() async throws {
        let app = HBApplication(
            configuration: .init(
                address: .hostname("0.0.0.0", port: 9000),
                serverName: "Hummingbird"
            )
        )
        
        defer { app.stop() }
        
        do {
            try await configure(app)
        } catch {
            throw error
        }
        try app.start()
        app.wait()
    }
}
