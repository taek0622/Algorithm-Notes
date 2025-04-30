import ProjectDescription

let project = Project(
    name: "BOJ01000To01999",
    targets: [
        .target(
            name: "BOJ01000To01999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj01000to01999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


