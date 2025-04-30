import ProjectDescription

let project = Project(
    name: "BOJ30000To30999",
    targets: [
        .target(
            name: "BOJ30000To30999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj30000to30999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


