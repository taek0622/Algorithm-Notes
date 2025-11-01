import ProjectDescription

let project = Project(
    name: "BOJ34000To34999",
    targets: [
        .target(
            name: "BOJ34000To34999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj34000to34999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)



