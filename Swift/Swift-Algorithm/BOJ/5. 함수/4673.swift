//
//  4673.swift
//  Swift
//
//  Created by 김민택 on 2022/06/03.
//

// 문제: https://www.acmicpc.net/problem/4673

class BOJ4673 {
    func run() {
        solution1()
    }

    // 메모리: 69236KB, 시간: 8ms, 코드 길이: 315B
    private func solution1() {
        func d(_ originalNumber: Int) -> Int {
            var n = originalNumber
            var sum = n
            while n > 0 {
                sum += n % 10
                n /= 10
            }
            return sum
        }

        var selfNumberFilter = Set<Int>(1...10000)

        for i in 1...10000 {
            selfNumberFilter.remove(d(i))
        }

        for i in selfNumberFilter.sorted() {
            print(i)
        }
    }

    // 메모리: 69360KB, 시간: 12ms, 코드 길이: 339B
    private func solution2() {
        func d(_ originalNumber: Int) -> Int {
            var n = originalNumber
            var sum = n
            while n > 0 {
                sum += n % 10
                n /= 10
            }
            return sum
        }

        var selfNumberFilter = Set<Int>()

        for i in 1...10000 {
            selfNumberFilter.insert(d(i))
        }

        for i in 1...10000 {
            if !selfNumberFilter.contains(i) {
                print(i)
            }
        }
    }
}
