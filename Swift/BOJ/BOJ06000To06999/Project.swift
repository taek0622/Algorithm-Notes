import ProjectDescription

let project = Project(
    name: "BOJ06000To06999",
    targets: [
        .target(
            name: "BOJ06000To06999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj06000to06999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


