//
//  14502.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/10/23.
//

//  문제 링크: https://www.acmicpc.net/problem/14502
//  알고리즘 분류: 구현, 그래프 이론, 브루트포스 알고리즘, 그래프 탐색, 너비 우선 탐색

class BOJ14502: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 72356KB, 시간: 192ms, 코드 길이: 1891B
    private func solution1() {
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        let last = NM.reduce(1, *) - 1
        var originalMap = [[Int]]()
        var visited = [[Int]]()
        var virus = [(Int, Int)]()
        var maxArea = 0

        for row in 0..<NM[0] {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            originalMap.append(input)

            for col in input.indices where input[col] == 2 {
                virus.append((row, col))
            }
        }

        while !visited.contains([last-2, last-1, last]) {
            for point1 in 0...last-2 {
                for point2 in point1+1...last-1 {
                    for point3 in point2+1...last {
                        var map = originalMap
                        visited.append([point1, point2, point3])

                        if !(map[point1/NM[1]][point1%NM[1]] == 0 && map[point2/NM[1]][point2%NM[1]] == 0 && map[point3/NM[1]][point3%NM[1]] == 0) {
                            continue
                        }

                        map[point1/NM[1]][point1%NM[1]] = 1
                        map[point2/NM[1]][point2%NM[1]] = 1
                        map[point3/NM[1]][point3%NM[1]] = 1

                        var queue = virus

                        while !queue.isEmpty {
                            let current = queue.removeFirst()

                            [(current.0-1, current.1), (current.0, current.1-1), (current.0, current.1+1), (current.0+1, current.1)].forEach {
                                if 0..<NM[0] ~= $0.0 && 0..<NM[1] ~= $0.1 && map[$0.0][$0.1] == 0 {
                                    map[$0.0][$0.1] = 2
                                    queue.append(($0.0, $0.1))
                                }
                            }
                        }

                        var count = 0
                        for row in map {
                            for col in row {
                                if col == 0 {
                                    count += 1
                                }
                            }
                        }

                        maxArea = max(maxArea, count)
                    }
                }
            }
        }

        print(maxArea)
    }

    // 메모리: 72356KB, 시간: 160ms, 코드 길이: 1942B
    private func solution2() {
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        let last = NM.reduce(1, *) - 1
        var originalMap = [[Int]]()
        var visited = [[Int]]()
        var virus = [(Int, Int)]()
        var maxArea = 0

        for row in 0..<NM[0] {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            originalMap.append(input)

            for col in input.indices where input[col] == 2 {
                virus.append((row, col))
            }
        }

        while !visited.contains([last-2, last-1, last]) {
            for point1 in 0...last-2 {
                for point2 in point1+1...last-1 {
                    for point3 in point2+1...last {
                        var map = originalMap
                        visited.append([point1, point2, point3])

                        if !(map[point1/NM[1]][point1%NM[1]] == 0 && map[point2/NM[1]][point2%NM[1]] == 0 && map[point3/NM[1]][point3%NM[1]] == 0) {
                            continue
                        }

                        map[point1/NM[1]][point1%NM[1]] = 1
                        map[point2/NM[1]][point2%NM[1]] = 1
                        map[point3/NM[1]][point3%NM[1]] = 1

                        var queue = virus
                        var idx = 0

                        while idx < queue.count {
                            let current = queue[idx]
                            idx += 1

                            [(current.0-1, current.1), (current.0, current.1-1), (current.0, current.1+1), (current.0+1, current.1)].forEach {
                                if 0..<NM[0] ~= $0.0 && 0..<NM[1] ~= $0.1 && map[$0.0][$0.1] == 0 {
                                    map[$0.0][$0.1] = 2
                                    queue.append(($0.0, $0.1))
                                }
                            }
                        }

                        var count = 0
                        for row in map {
                            for col in row {
                                if col == 0 {
                                    count += 1
                                }
                            }
                        }

                        maxArea = max(maxArea, count)
                    }
                }
            }
        }

        print(maxArea)
    }
}
