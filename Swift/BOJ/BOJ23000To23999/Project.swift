import ProjectDescription

let project = Project(
    name: "BOJ23000To23999",
    targets: [
        .target(
            name: "BOJ23000To23999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj23000to23999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


