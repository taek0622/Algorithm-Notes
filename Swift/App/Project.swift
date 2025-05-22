import ProjectDescription

let project = Project(
    name: "Swift-Algorithm",
    targets: [
        .target(
            name: "Swift-Algorithm",
            destinations: .macOS,
            product: .commandLineTool,
            bundleId: "com.immeenu.swift-algorithm",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../Shared"),
                .project(target: "BOJ19000To19999", path: "../BOJ/BOJ19000To19999"),
            ]
        ),
    ]
)
