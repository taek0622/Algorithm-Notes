import ProjectDescription

let project = Project(
    name: "BOJ13000To13999",
    targets: [
        .target(
            name: "BOJ13000To13999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj13000to13999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


