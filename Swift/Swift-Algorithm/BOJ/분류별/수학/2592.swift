//
//  2592.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/24.
//

// 문제: https://www.acmicpc.net/problem/2592

class BOJ2592: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 316B
        var counter = [Int: Int]()
        var sum = 0
        var modeNumber = 0

        for _ in 0..<10 {
            let number = Int(readLine()!)!

            sum += number
            counter[number, default: 0] += 1
        }

        counter.keys.forEach {
            if counter[$0]! > counter[modeNumber, default: 0] {
                modeNumber = $0
            }
        }

        print("\(sum/10)\n\(modeNumber)")
    }
}
