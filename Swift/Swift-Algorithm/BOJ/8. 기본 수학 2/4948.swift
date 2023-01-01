//
//  4948.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/01.
//

// 문제: https://www.acmicpc.net/problem/4948

class BOJ4948: Solvable {
    func run() {
        let maxNum = 123456
        var numbers = [false, false] + Array(repeating: true, count: maxNum * 2 - 1)

        for idx in 2...maxNum*2 where numbers[idx] {
            if (idx * idx) > (maxNum * 2) {
                break
            }

            for num in idx...maxNum*2/idx {
                numbers[idx * num] = false
            }
        }

        checkBertrandsPostulate(Int(readLine()!)!)

        func checkBertrandsPostulate(_ n: Int) {
            if n != 0 {
                var count = 0

                for idx in n+1...n+n {
                    if numbers[idx] {
                        count += 1
                    }
                }

                print(count)

                checkBertrandsPostulate(Int(readLine()!)!)
            }
        }
    }
}
