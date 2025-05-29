//
//  21608.swift
//  BOJ21000To21999
//
//  Created by 김민택 on 5/29/25.
//

//  문제 링크: https://www.acmicpc.net/problem/21608
//  알고리즘 분류: 구현

import Shared

public struct BOJ21608: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69116KB, 시간: 12ms, 코드 길이: 1921B
        let N = Int(readLine()!)!
        var seat = Array(repeating: Array(repeating: 0, count: N), count: N)
        var favorites = [Int: [Int]]()
        var score = 0

        for _ in 0..<N*N {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            favorites[input[0], default: []].append(contentsOf: input[1...4])
            var (maxFavorite, maxBlank, list) = (0, 0, [(Int, Int)]())

            for row in 0..<N {
                for col in 0..<N where seat[row][col] == 0 {
                    var (favoriteCount, blankCount) = (0, 0)

                    for (nr, nc) in [(row-1, col), (row, col-1), (row, col+1), (row+1, col)] where 0..<N ~= nr && 0..<N ~= nc {
                        if input[1...4].contains(seat[nr][nc]) {
                            favoriteCount += 1
                        } else if seat[nr][nc] == 0 {
                            blankCount += 1
                        }
                    }

                    if favoriteCount > maxFavorite {
                        (maxFavorite, maxBlank, list) = (favoriteCount, blankCount, [(row, col)])
                    } else if favoriteCount == maxFavorite {
                        if blankCount > maxBlank {
                            (maxBlank, list) = (blankCount, [(row, col)])
                        } else if blankCount == maxBlank {
                            list.append((row, col))
                        }
                    }
                }
            }

            list.sort {
                if $0.0 == $1.0 { return $0.1 < $1.1 }
                return $0.0 < $1.0
            }

            seat[list[0].0][list[0].1] = input[0]
        }

        for row in 0..<N {
            for col in 0..<N {
                var count = 0

                for (nr, nc) in [(row-1, col), (row, col-1), (row, col+1), (row+1, col)] where 0..<N ~= nr && 0..<N ~= nc && favorites[seat[row][col], default: []].contains(seat[nr][nc]) {
                    count += 1
                }

                if count == 4 {
                    score += 1000
                } else if count == 3 {
                    score += 100
                } else if count == 2 {
                    score += 10
                } else {
                    score += count
                }
            }
        }

        print(score)
    }
}
