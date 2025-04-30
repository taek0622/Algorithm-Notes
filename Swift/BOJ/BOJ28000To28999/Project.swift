import ProjectDescription

let project = Project(
    name: "BOJ28000To28999",
    targets: [
        .target(
            name: "BOJ28000To28999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj28000to28999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


