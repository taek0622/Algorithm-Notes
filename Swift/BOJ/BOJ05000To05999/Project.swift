import ProjectDescription

let project = Project(
    name: "BOJ05000To05999",
    targets: [
        .target(
            name: "BOJ05000To05999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj05000to05999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


