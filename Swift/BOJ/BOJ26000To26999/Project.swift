import ProjectDescription

let project = Project(
    name: "BOJ26000To26999",
    targets: [
        .target(
            name: "BOJ26000To26999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj26000to26999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


