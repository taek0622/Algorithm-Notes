import ProjectDescription

let project = Project(
    name: "BOJ20000To20999",
    targets: [
        .target(
            name: "BOJ20000To20999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj20000to20999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


