//
//  2563.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/02.
//

// 문제: https://www.acmicpc.net/problem/2563

class BOJ2563: Solvable {
    func run() {
        solution3()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 525B
    private func solution1() {
        var background = Array(repeating: Array(repeating: false, count: 100), count: 100)
        let paperCount = Int(readLine()!)!
        var sizeCount = 0

        for _ in 0..<paperCount {
            let paper = readLine()!.split(separator: " ").map { Int(String($0))! }

            for line in paper[0]-1..<paper[0]+9 {
                for element in paper[1]-1..<paper[1]+9 {
                    background[line][element] = true
                }
            }
        }

        for line in 0..<100 {
            for element in 0..<100 where background[line][element] {
                sizeCount += 1
            }
        }

        print(sizeCount)
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 408B
    private func solution2() {
        var canvas = Array(repeating: Array(repeating: false, count: 100), count: 100)
        let count = Int(readLine()!)!

        for _ in 0..<count {
            let paper = readLine()!.split(separator: " ").map { Int(String($0))! }

            for line in paper[0]..<paper[0]+10 {
                for element in paper[1]..<paper[1]+10 {
                    canvas[line-1][element-1] = true
                }
            }
        }

        print(canvas.flatMap { $0 }.filter { $0 }.count)
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 445B
    private func solution3() {
        var canvas = Array(repeating: Array(repeating: false, count: 100), count: 100)
        let count = Int(readLine()!)!
        var size = 0

        for _ in 0..<count {
            let paper = readLine()!.split(separator: " ").map { Int(String($0))! }

            for line in paper[0]..<paper[0]+10 {
                for element in paper[1]..<paper[1]+10 {
                    canvas[line-1][element-1] = true
                }
            }
        }

        for line in canvas {
            size += line.filter { $0 }.count
        }

        print(size)
    }
}
