import ProjectDescription

let project = Project(
    name: "BOJ29000To29999",
    targets: [
        .target(
            name: "BOJ29000To29999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj29000to29999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


