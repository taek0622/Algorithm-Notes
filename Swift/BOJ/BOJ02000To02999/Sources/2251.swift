//
//  2251.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/8/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2251
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

import Shared

public struct BOJ2251: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69256KB, 시간: 8ms, 코드 길이: 3282B
    private func solution1() {
        let ABC = readLine()!.split(separator: " ").map { Int($0)! }
        var visited = Array(repeating: Array(repeating: Array(repeating: false, count: ABC[2]+1), count: ABC[1]+1), count: ABC[0]+1)
        visited[0][0][ABC[2]] = true
        var queue = [(0, 0, ABC[2])]
        var idx = 0
        var result: Set<Int> = []

        while idx < queue.count {
            let (a, b, c) = queue[idx]
            idx += 1

            if a == 0 {
                result.insert(c)
            }

            if a != 0 {
                if b != ABC[1] {
                    let temp = ABC[1] - b

                    if a > temp {
                        if !visited[a-temp][ABC[1]][c] {
                            queue.append((a-temp, ABC[1], c))
                            visited[a-temp][ABC[1]][c] = true
                        }
                    } else {
                        if !visited[0][a+b][c] {
                            queue.append((0, a+b, c))
                            visited[0][a+b][c] = true
                        }
                    }
                }

                if c != ABC[2] {
                    let temp = ABC[2] - c

                    if a > temp {
                        if !visited[a-temp][b][ABC[2]] {
                            queue.append((a-temp, b, ABC[2]))
                            visited[a-temp][b][ABC[2]] = true
                        }
                    } else {
                        if !visited[0][b][a+c] {
                            queue.append((0, b, a+c))
                            visited[0][b][a+c] = true
                        }
                    }
                }
            }

            if b != 0 {
                if a != ABC[0] {
                    let temp = ABC[0] - a

                    if b > temp {
                        if !visited[ABC[0]][b-temp][c] {
                            queue.append((ABC[0], b-temp, c))
                            visited[ABC[0]][b-temp][c] = true
                        }
                    } else {
                        if !visited[a+b][0][c] {
                            queue.append((a+b, 0, c))
                            visited[a+b][0][c] = true
                        }
                    }
                }

                if c != ABC[2] {
                    let temp = ABC[2] - c

                    if b > temp {
                        if !visited[a][b-temp][ABC[2]] {
                            queue.append((a, b-temp, ABC[2]))
                            visited[a][b-temp][ABC[2]] = true
                        }
                    } else {
                        if !visited[a][0][b+c] {
                            queue.append((a, 0, b+c))
                            visited[a][0][b+c] = true
                        }
                    }
                }
            }

            if c != 0 {
                if a != ABC[0] {
                    let temp = ABC[0] - a

                    if c > temp {
                        if !visited[ABC[0]][b][c-temp] {
                            queue.append((ABC[0], b, c-temp))
                            visited[ABC[0]][b][c-temp] = true
                        }
                    } else {
                        if !visited[a+c][b][0] {
                            queue.append((a+c, b, 0))
                            visited[a+c][b][0] = true
                        }
                    }
                }

                if b != ABC[1] {
                    let temp = ABC[1] - b

                    if c > temp {
                        if !visited[a][ABC[1]][c-temp] {
                            queue.append((a, ABC[1], c-temp))
                            visited[a][ABC[1]][c-temp] = true
                        }
                    } else {
                        if !visited[a][b+c][0] {
                            queue.append((a, b+c, 0))
                            visited[a][b+c][0] = true
                        }
                    }
                }
            }
        }

        print(result.sorted().map { String($0) }.joined(separator: " "))
    }

    // 메모리: 69248KB, 시간: 8ms, 코드 길이: 920B
    private func solution2() {
        let ABC = readLine()!.split(separator: " ").map { Int($0)! }
        var visited = Array(repeating: Array(repeating: Array(repeating: false, count: ABC[2]+1), count: ABC[1]+1), count: ABC[0]+1)
        visited[0][0][ABC[2]] = true
        var queue = [(0, 0, ABC[2])]
        var idx = 0
        var result: Set<Int> = []

        while idx < queue.count {
            let (a, b, c) = queue[idx]
            idx += 1

            if a == 0 {
                result.insert(c)
            }

            [(a-(ABC[1]-b), ABC[1], c), (0, a+b, c), (a-(ABC[2]-c), b, ABC[2]), (0, b, a+c), (ABC[0], b-(ABC[0]-a), c), (a+b, 0, c), (a, b-(ABC[2]-c), ABC[2]), (a, 0, b+c), (ABC[0], b, c-(ABC[0]-a)), (a+c, b, 0), (a, ABC[1], c-(ABC[1]-b)), (a, b+c, 0)].forEach {
                if 0...ABC[0] ~= $0.0 && 0...ABC[1] ~= $0.1 && 0...ABC[2] ~= $0.2 && !visited[$0.0][$0.1][$0.2] {
                    queue.append($0)
                    visited[$0.0][$0.1][$0.2] = true
                }
            }
        }

        print(result.sorted().map { String($0) }.joined(separator: " "))
    }
}
