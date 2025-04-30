import ProjectDescription

let project = Project(
    name: "BOJ14000To14999",
    targets: [
        .target(
            name: "BOJ14000To14999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj14000to14999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


