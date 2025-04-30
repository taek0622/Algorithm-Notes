//
//  10989.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/04.
//

// 문제: https://www.acmicpc.net/problem/10989
import Foundation
class BOJ10989: Solvable {
    func run() {
        solution1()
    }

    // 메모리: 480524KB, 시간: 3584ms, 코드 길이: 1376B
    private func solution1() {
        let fileIO = RhynoFileIO()
        let N = fileIO.readInt()
        var input = [Int]()
        var counter = Array(repeating: 0, count: 10001)
        var output = Array(repeating: 0, count: N)
        var result = ""

        for _ in 0..<N {
            input.append(fileIO.readInt())
        }

        for idx in input {
            counter[idx] += 1
        }

        for idx in 1..<counter.count {
            counter[idx] += counter[idx - 1]
        }

        for num in input {
            counter[num] -= 1
            output[counter[num]] = num
        }

        for num in output {
            result += "\(num)\n"
        }

        print(result)
    }

    // 메모리: 263604KB, 시간: 1560ms, 코드 길이: 1198B
    private func solution2() {
        let fileIO = RhynoFileIO()
        let N = fileIO.readInt()
        var counter = Array(repeating: 0, count: 10001)
        var result = ""

        for _ in 0..<N {
            counter[fileIO.readInt()] += 1
        }

        for idx in 1..<counter.count where counter[idx] != 0 {
            result += String(repeating: "\(idx)\n", count: counter[idx])
        }

        print(result)
    }

    // 메모리: 204352KB, 시간: 4588ms, 코드 길이: 283B
    private func solution3() {
        let N = Int(readLine()!)!
        var counter = Array(repeating: 0, count: 10001)
        var result = ""

        for _ in 0..<N {
            counter[Int(readLine()!)!] += 1
        }

        for idx in 1..<counter.count where counter[idx] != 0 {
            result += String(repeating: "\(idx)\n", count: counter[idx])
        }

        print(result)
    }

    // 메모리: 263604KB, 시간: 1560ms, 코드 길이: 1016B
    private func solution4() {
        let fileIO = WapasFileIO()
        let N = fileIO.readInt()
        var counter = Array(repeating: 0, count: 10001)
        var result = ""

        for _ in 0..<N {
            counter[fileIO.readInt()] += 1
        }

        for idx in 1..<counter.count where counter[idx] != 0 {
            result += String(repeating: "\(idx)\n", count: counter[idx])
        }

        print(result)
    }

    private func conutingSort() {
        let input = [1, 3, 2, 4, 4]
        var counter = Array(repeating: 0, count: 6)
        var output = Array(repeating: 0, count: input.count)

        for idx in input.indices {
            counter[input[idx]] += 1
        }

        print("input: \(input)")
        print("counter: \(counter)")

        for idx in 1..<counter.count {
            counter[idx] += counter[idx - 1]
        }

        print("counter(add): \(counter)")

        for num in input {
            counter[num] -= 1
            output[counter[num]] = num
            print("output의 \(counter[num])번째 인덱스에 입력 배열 \(num)의 값을 넣음")
            print("counter[\(num)]: \(counter[num])")
        }

        print("output: \(output)")
    }
}
