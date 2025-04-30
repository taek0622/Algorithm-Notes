import ProjectDescription

let project = Project(
    name: "BOJ-Etc",
    targets: [
        .target(
            name: "BOJ-Etc",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj-etc",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)



