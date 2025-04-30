import ProjectDescription

let project = Project(
    name: "BOJ15000To15999",
    targets: [
        .target(
            name: "BOJ15000To15999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj15000to15999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


