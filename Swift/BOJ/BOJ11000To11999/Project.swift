import ProjectDescription

let project = Project(
    name: "BOJ11000To11999",
    targets: [
        .target(
            name: "BOJ11000To11999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj11000to11999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


