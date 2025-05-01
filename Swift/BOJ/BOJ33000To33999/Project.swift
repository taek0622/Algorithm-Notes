import ProjectDescription

let project = Project(
    name: "BOJ33000To33999",
    targets: [
        .target(
            name: "BOJ33000To33999",
            destinations: .macOS,
            product: .framework,
            bundleId: "com.immeenu.swift-algorithm.boj33000to33999",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../../Shared")
            ]
        )
    ]
)



