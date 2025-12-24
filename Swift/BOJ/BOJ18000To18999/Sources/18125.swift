//
//  18125.swift
//  BOJ18000To18999
//
//  Created by 김민택 on 12/24/25.
//

//  문제 링크: https://www.acmicpc.net/problem/18125
//  알고리즘 분류: 구현

import Shared

public struct BOJ18125: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 832B
        let RC = readLine()!.split(separator: " ").map { Int($0)! }
        var picture = Array(repeating: Array(repeating: false, count: RC[1]), count: RC[0])
        var food = picture

        for col in 0..<RC[1] {
            let input = readLine()!.split(separator: " ").map { $0 == "1" }

            for row in 0..<RC[0] {
                picture[row][RC[1]-col-1] = input[row]
            }
        }

        for row in 0..<RC[0] {
            food[row] = readLine()!.split(separator: " ").map { $0 == "1" }
        }

        print(reactCat(picture == food))

        func reactCat(_ bool: Bool) -> String {
            if bool {
                return """
                    |>___/|        /}
                    | O < |       / }
                    (==0==)------/ }
                    | ^  _____    |
                    |_|_/     ||__|
                    """
            }

            return """
                |>___/|     /}
                | O O |    / }
                ( =0= )\"\"\"\"  \\
                | ^  ____    |
                |_|_/    ||__|
                """
        }
    }
}
