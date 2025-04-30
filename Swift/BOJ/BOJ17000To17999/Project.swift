import ProjectDescription

let project = Project(
    name: "BOJ17000To17999",
    targets: [
        .target(
            name: "BOJ17000To17999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj17000to17999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


