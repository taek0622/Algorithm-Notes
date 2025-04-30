import ProjectDescription

let project = Project(
    name: "BOJ22000To22999",
    targets: [
        .target(
            name: "BOJ22000To22999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj22000to22999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


