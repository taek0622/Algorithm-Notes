import ProjectDescription

let project = Project(
    name: "BOJ03000To03999",
    targets: [
        .target(
            name: "BOJ03000To03999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj03000to03999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


