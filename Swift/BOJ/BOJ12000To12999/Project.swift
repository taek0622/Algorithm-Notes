import ProjectDescription

let project = Project(
    name: "BOJ12000To12999",
    targets: [
        .target(
            name: "BOJ12000To12999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj12000to12999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


