//
//  3055.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/21/24.
//

//  문제 링크: https://www.acmicpc.net/problem/3055
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색

class BOJ3055: Solvable {
    func run() {
        // 메모리: 69300KB, 시간: 12ms, 코드 길이: 1626B
        let RC = readLine()!.split(separator: " ").map { Int($0)! }
        var map = Array(repeating: Array(repeating: "", count: RC[1]), count: RC[0])
        var visitedTime = Array(repeating: Array(repeating: 0, count: RC[1]), count: RC[0])
        var hedgehog = [(Int, Int)]()
        var water = [(Int, Int)]()
        var dest = (0, 0)

        for row in 0..<RC[0] {
            map[row] = readLine()!.map { String($0) }

            for col in 0..<RC[1] {
                switch map[row][col] {
                case "S":
                    hedgehog.append((row, col))
                case "*":
                    water.append((row, col))
                case "D":
                    dest = (row, col)
                default:
                    continue
                }
            }
        }

        var waterIdx = 0

        while waterIdx < water.count {
            let (y, x) = water[waterIdx]
            waterIdx += 1

            [(y-1, x), (y, x-1), (y, x+1), (y+1, x)].forEach {
                if 0..<RC[0] ~= $0.0 && 0..<RC[1] ~= $0.1 && map[$0.0][$0.1] == "." && visitedTime[$0.0][$0.1] == 0 {
                    visitedTime[$0.0][$0.1] = visitedTime[y][x] + 1
                    water.append($0)
                }
            }
        }

        var hedgehogIdx = 0

        while hedgehogIdx < hedgehog.count {
            let (y, x) = hedgehog[hedgehogIdx]
            hedgehogIdx += 1

            [(y-1, x), (y, x-1), (y, x+1), (y+1, x)].forEach {
                if 0..<RC[0] ~= $0.0 && 0..<RC[1] ~= $0.1 && ((map[$0.0][$0.1] == "." && (visitedTime[$0.0][$0.1] > visitedTime[y][x] + 1 || visitedTime[$0.0][$0.1] == 0)) || (map[$0.0][$0.1] == "D" && visitedTime[$0.0][$0.1] == 0)) {
                    visitedTime[$0.0][$0.1] = visitedTime[y][x] + 1

                    hedgehog.append($0)
                }
            }
        }

        print(visitedTime[dest.0][dest.1] == 0 ? "KAKTUS" : visitedTime[dest.0][dest.1])
    }
}
