import ProjectDescription

let project = Project(
    name: "Etc",
    targets: [
        .target(
            name: "Etc",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.etc",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../Shared")
            ]
        )
    ]
)




