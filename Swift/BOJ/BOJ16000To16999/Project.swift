import ProjectDescription

let project = Project(
    name: "BOJ16000To16999",
    targets: [
        .target(
            name: "BOJ16000To16999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj16000to16999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


