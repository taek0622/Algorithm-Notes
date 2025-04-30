import ProjectDescription

let project = Project(
    name: "BOJ08000To08999",
    targets: [
        .target(
            name: "BOJ08000To08999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj08000to08999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


