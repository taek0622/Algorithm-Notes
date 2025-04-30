import ProjectDescription

let project = Project(
    name: "BOJ21000To21999",
    targets: [
        .target(
            name: "BOJ21000To21999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj21000to21999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


