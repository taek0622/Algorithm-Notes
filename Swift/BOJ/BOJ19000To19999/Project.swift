import ProjectDescription

let project = Project(
    name: "BOJ19000To19999",
    targets: [
        .target(
            name: "BOJ19000To19999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj19000to19999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)


