//
//  4948.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/01.
//

// 문제: https://www.acmicpc.net/problem/4948

class BOJ4948: Solvable {
    func run() {
        solution1()
    }

    // 메모리: 69588KB, 시간: 20ms, 코드 길이: 534B
    private func solution1() {
        let maxNum = 123456 * 2
        var numbers = [false, false] + Array(repeating: true, count: maxNum - 1)

        for idx in 2...maxNum where numbers[idx] && !((idx * idx) > maxNum) {
            for num in idx...maxNum/idx {
                numbers[idx * num] = false
            }
        }

        checkBertrandsPostulate(Int(readLine()!)!)

        func checkBertrandsPostulate(_ n: Int) {
            if n != 0 {
                var count = 0

                for idx in n+1...n+n where numbers[idx] {
                    count += 1
                }

                print(count)

                checkBertrandsPostulate(Int(readLine()!)!)
            }
        }
    }

    // 메모리: 69588KB, 시간: 20ms, 코드 길이: 589B
    private func solution2() {
        let maxNum = 123456 * 2
        var numbers = [false, false] + Array(repeating: true, count: maxNum - 1)
        var idx = 2

        while ((idx * idx) <= maxNum) {
            if numbers[idx] {
                for num in stride(from: idx * idx, through: maxNum, by: idx) {
                    numbers[num] = false
                }
            }

            idx += 1
        }

        checkBertrandsPostulate(Int(readLine()!)!)

        func checkBertrandsPostulate(_ n: Int) {
            if n != 0 {
                var count = 0

                for idx in n+1...n+n where numbers[idx] {
                    count += 1
                }

                print(count)

                checkBertrandsPostulate(Int(readLine()!)!)
            }
        }
    }
}
