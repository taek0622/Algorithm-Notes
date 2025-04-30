import ProjectDescription

let project = Project(
    name: "BOJ04000To04999",
    targets: [
        .target(
            name: "BOJ04000To04999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj04000to04999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


