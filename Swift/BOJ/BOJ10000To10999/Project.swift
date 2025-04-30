import ProjectDescription

let project = Project(
    name: "BOJ10000To10999",
    targets: [
        .target(
            name: "BOJ10000To10999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj10000to10999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


