import ProjectDescription

let project = Project(
    name: "BOJ07000To07999",
    targets: [
        .target(
            name: "BOJ07000To07999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj07000to07999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


