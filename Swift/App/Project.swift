import ProjectDescription

let project = Project(
    name: "Swift-Algorithm",
    targets: [
        .target(
            name: "Swift-Algorithm",
            destinations: .macOS,
            product: .commandLineTool,
            bundleId: "io.tuist.Swift",
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .project(target: "Shared", path: "../Shared"),
                .project(target: "DataStructure", path: "../DataStructure"),
                .project(target: "Utility", path: "../Utility"),
                .project(target: "BOJ33000To33999", path: "../BOJ/BOJ33000To33999"),
                .project(target: "Programmers", path: "../Programmers"),
                .project(target: "Etc", path: "../Etc"),
            ]
        ),
    ]
)
