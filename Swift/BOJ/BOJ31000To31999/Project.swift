import ProjectDescription

let project = Project(
    name: "BOJ31000To31999",
    targets: [
        .target(
            name: "BOJ31000To31999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj31000to31999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


