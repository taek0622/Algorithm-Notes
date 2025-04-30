import ProjectDescription

let project = Project(
    name: "BOJ-No",
    targets: [
        .target(
            name: "BOJ-No",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj-no",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)




