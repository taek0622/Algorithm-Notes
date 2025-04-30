import ProjectDescription

let project = Project(
    name: "BOJ27000To27999",
    targets: [
        .target(
            name: "BOJ27000To27999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj27000to27999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


