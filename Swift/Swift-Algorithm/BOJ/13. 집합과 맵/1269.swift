//
//  1269.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/09.
//

// 문제: https://www.acmicpc.net/problem/1269

class BOJ1269: Solvable {
    func run() {
        solution1()
    }

    // 메모리: 93644KB, 시간: 236ms, 코드 길이: 299B
    private func solution1() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var A = Set(readLine()!.split(separator: " ").map { Int(String($0))! })
        let B = readLine()!.split(separator: " ").map { Int(String($0))! }

        B.forEach {
            if !A.insert($0).inserted {
                A.remove($0)
            }
        }

        print(A.count)
    }

    // 메모리: 93336KB, 시간: 256ms, 코드 길이: 350B
    private func solution2() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var numbers = Set<Int>()

        readLine()!.split(separator: " ").map { Int(String($0))! }.forEach { numbers.insert($0) }
        readLine()!.split(separator: " ").map { Int(String($0))! }.forEach {
            if !numbers.insert($0).inserted {
                numbers.remove($0)
            }
        }

        print(numbers.count)
    }

    // 메모리: 101840KB, 시간: 220ms, 코드 길이: 339B
    private func solution3() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var A = Set(readLine()!.split(separator: " ").map { Int(String($0))! })
        let B = readLine()!.split(separator: " ").filter {
            if !A.contains(Int($0)!) {
                return true
            } else {
                A.remove(Int($0)!)
                return false
            }
        }

        print(A.count + B.count)
    }

    // 메모리: 93644KB, 시간: 240ms, 코드 길이: 306B
    private func solution4() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let A = Set(readLine()!.split(separator: " ").map { Int(String($0))! })
        let B = Set(readLine()!.split(separator: " ").map { Int(String($0))! })
        let onlyA = A.subtracting(B)
        let onlyB = B.subtracting(A)

        print(onlyA.count + onlyB.count)
    }
}
