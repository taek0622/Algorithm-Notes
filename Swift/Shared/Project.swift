import ProjectDescription

let project = Project(
    name: "Shared",
    targets: [
        .target(
            name: "Shared",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.shared",
            infoPlist: .default,
            sources: ["Sources/**"]
        )
    ]
)
