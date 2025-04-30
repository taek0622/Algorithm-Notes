import ProjectDescription

let project = Project(
    name: "DataStructure",
    targets: [
        .target(
            name: "DataStructure",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.shared",
            infoPlist: .default,
            sources: ["Sources/**"]
        )
    ]
)

