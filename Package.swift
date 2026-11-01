// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "QuickCalendar",
    platforms: [.macOS(.v13)],
    products: [.executable(name: "QuickCalendar", targets: ["QuickCalendar"])],
    targets: [
        .target(name: "CalendarCore"),
        .target(name: "AppServices"),
        .executableTarget(name: "QuickCalendar", dependencies: ["CalendarCore", "AppServices"]),
        .testTarget(name: "CalendarCoreTests", dependencies: ["CalendarCore"]),
        .testTarget(name: "AppServicesTests", dependencies: ["AppServices"])
    ],
    swiftLanguageModes: [.v5]
)
