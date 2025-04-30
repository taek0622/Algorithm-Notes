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
                .project(target: "Programmers", path: "../Programmers"),
            ]
        ),
    ]
)
