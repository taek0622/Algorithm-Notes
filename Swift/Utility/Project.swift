import ProjectDescription

let project = Project(
    name: "Utility",
    targets: [
        .target(
            name: "Utility",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.uitility",
            infoPlist: .default,
            sources: ["Sources/**"]
        )
    ]
)

