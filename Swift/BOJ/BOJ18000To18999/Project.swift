import ProjectDescription

let project = Project(
    name: "BOJ18000To18999",
    targets: [
        .target(
            name: "BOJ18000To18999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj18000to18999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


