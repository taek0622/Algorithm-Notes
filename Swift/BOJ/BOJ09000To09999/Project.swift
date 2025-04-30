import ProjectDescription

let project = Project(
    name: "BOJ09000To09999",
    targets: [
        .target(
            name: "BOJ09000To09999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj09000to09999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


