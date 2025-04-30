import ProjectDescription

let project = Project(
    name: "BOJ32000To32999",
    targets: [
        .target(
            name: "BOJ32000To32999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj32000to32999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


