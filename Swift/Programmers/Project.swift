import ProjectDescription

let project = Project(
    name: "Programmers",
    targets: [
        .target(
            name: "Programmers",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.programmers",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../Shared")
            ]
        )
    ]
)

