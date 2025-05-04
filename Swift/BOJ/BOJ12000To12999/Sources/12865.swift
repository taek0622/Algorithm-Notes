//
//  12865.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/12/23.
//

//  문제 링크: https://www.acmicpc.net/problem/12865
//  알고리즘 분류: 다이나믹 프로그래밍, 배낭 문제

import Shared

public struct BOJ12865: Solvable {
    public init() {}

    public func run() {
        solution3()
    }

    // 메모리: 152656KB, 시간: 552ms, 코드 길이: 521B
    private func solution1() {
        let NK = readLine()!.split(separator: " ").map { Int(String($0))! }
        var stuff = [(0, 0)]
        var bag = Array(repeating: Array(repeating: 0, count: NK[0]+1), count: NK[1]+1)

        for _ in 0..<NK[0] {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            stuff.append((input[0], input[1]))
        }

        for col in 1...NK[0] {
            for row in 1...NK[1] {
                bag[row][col] = stuff[col].0 <= row ? max(bag[row][col-1], stuff[col].1 + bag[row-stuff[col].0][col-1]) : bag[row][col-1]
            }
        }

        print(bag[NK[1]][NK[0]])
    }

    // 메모리: 70680KB, 시간: 52ms, 코드 길이: 540B
    private func solution2() {
        let NK = readLine()!.split(separator: " ").map { Int(String($0))! }
        var stuff = [(0, 0)]
        var bag = Array(repeating: 0, count: NK[1]+1)

        for _ in 0..<NK[0] {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            stuff.append((input[0], input[1]))
        }

        for idx in 1...NK[0] {
            var temp = Array(repeating: 0, count: NK[1]+1)

            for weight in 1...NK[1] {
                temp[weight] = stuff[idx].0 <= weight ? max(bag[weight], stuff[idx].1 + bag[weight-stuff[idx].0]) : bag[weight]
            }

            bag = temp
        }

        print(bag.last!)
    }

    // 메모리: 70676KB, 시간: 56ms, 코드 길이: 442B
    private func solution3() {
        let NK = readLine()!.split(separator: " ").map { Int(String($0))! }
        var bag = Array(repeating: 0, count: NK[1]+1)

        for _ in 0..<NK[0] {
            let stuff = readLine()!.split(separator: " ").map { Int(String($0))! }
            var temp = Array(repeating: 0, count: NK[1]+1)

            for weight in 1...NK[1] {
                temp[weight] = stuff[0] <= weight ? max(bag[weight], stuff[1] + bag[weight-stuff[0]]) : bag[weight]
            }

            bag = temp
        }

        print(bag.last!)
    }

    // 메모리: 69888KB, 시간: 20ms, 코드 길이: 430B
    private func solution4() {
        let NK = readLine()!.split(separator: " ").map { Int(String($0))! }
        var bag = Array(repeating: 0, count: NK[1]+1)

        for _ in 0..<NK[0] {
            let stuff = readLine()!.split(separator: " ").map { Int(String($0))! }

            for idx in stride(from: NK[1] - stuff[0], through: 0, by: -1) where (idx == 0 || bag[idx] > 0) && bag[idx] + stuff[1] > bag[idx+stuff[0]] {
                bag[idx+stuff[0]] = bag[idx] + stuff[1]
            }
        }

        print(bag.max()!)
    }
}
