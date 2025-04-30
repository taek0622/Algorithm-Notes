import ProjectDescription

let project = Project(
    name: "BOJ24000To24999",
    targets: [
        .target(
            name: "BOJ24000To24999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj24000to24999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


