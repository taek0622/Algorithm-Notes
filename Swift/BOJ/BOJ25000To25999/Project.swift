import ProjectDescription

let project = Project(
    name: "BOJ25000To25999",
    targets: [
        .target(
            name: "BOJ25000To25999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj25000to25999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


