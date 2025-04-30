import ProjectDescription

let project = Project(
    name: "BOJ02000To02999",
    targets: [
        .target(
            name: "BOJ02000To02999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj02000to02999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


