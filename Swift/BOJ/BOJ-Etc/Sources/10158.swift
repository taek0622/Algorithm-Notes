//
//  10158.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/24.
//

// 문제: https://www.acmicpc.net/problem/10158

class BOJ10158: Solvable {
    func run() {
        solution3()
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 515B
    private func solution1() {
        let wh = readLine()!.split(separator: " ").map { Int(String($0))! }
        var pq = readLine()!.split(separator: " ").map { Int(String($0))! }
        let t = Int(readLine()!)!
        var result = ""

        pq[0...1] = [pq[0] + t, pq[1] + t]

        if (pq[0] - 1) / wh[0] % 2 == 0 {
            result += "\((pq[0] - 1) % wh[0] + 1) "
        } else {
            result += "\(wh[0] - ((pq[0] - 1) % wh[0] + 1)) "
        }

        if (pq[1] - 1) / wh[1] % 2 == 0 {
            result += "\((pq[1] - 1) % wh[1] + 1) "
        } else {
            result += "\(wh[1] - ((pq[1] - 1) % wh[1] + 1))"
        }

        print(result)
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 505B
    private func solution2() {
        let wh = readLine()!.split(separator: " ").map { Int(String($0))! }
        var pq = readLine()!.split(separator: " ").map { Int(String($0))! }
        let t = Int(readLine()!)!

        pq[0...1] = [pq[0] + t, pq[1] + t]

        if (pq[0] - 1) / wh[0] % 2 == 0 {
            pq[0] = (pq[0] - 1) % wh[0] + 1
        } else {
            pq[0] = wh[0] - ((pq[0] - 1) % wh[0] + 1)
        }

        if (pq[1] - 1) / wh[1] % 2 == 0 {
            pq[1] = (pq[1] - 1) % wh[1] + 1
        } else {
            pq[1] = wh[1] - ((pq[1] - 1) % wh[1] + 1)
        }

        print(pq.map{ String($0) }.joined(separator: " "))
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 346B
    private func solution3() {
        let wh = readLine()!.split(separator: " ").map { Int(String($0))! }
        var pq = readLine()!.split(separator: " ").map { Int(String($0))! }
        let t = Int(readLine()!)!

        pq[0...1] = [pq[0] + t, pq[1] + t]

        pq[0] = pq[0] % (wh[0] * 2)
        pq[1] = pq[1] % (wh[1] * 2)

        pq[0] = wh[0] - abs(wh[0] - pq[0])
        pq[1] = wh[1] - abs(wh[1] - pq[1])

        print(pq[0], pq[1])
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 371B
    private func solution4() {
        let wh = readLine()!.split(separator: " ").map { Int(String($0))! }
        var pq = readLine()!.split(separator: " ").map { Int(String($0))! }
        let t = Int(readLine()!)!
        var result = ""

        pq[0...1] = [pq[0] + t, pq[1] + t]

        pq[0] = pq[0] % (wh[0] * 2)
        pq[1] = pq[1] % (wh[1] * 2)

        result += "\(wh[0] - abs(wh[0] - pq[0])) "
        result += "\(wh[1] - abs(wh[1] - pq[1]))"

        print(result)
    }
}
