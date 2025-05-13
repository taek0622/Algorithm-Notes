//
//  1644.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/21/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1644
//  알고리즘 분류: 수학, 정수론, 두 포인터, 소수 판정, 에라토스테네스의 체

import Shared

public struct BOJ1644: Solvable {
    public init() {}

    public func run() {
        solution3()
    }

    // 메모리: 73008KB, 시간: 100ms, 코드 길이: 597B
    private func solution1() {
        let N = Int(readLine()!)!
        var primes = Array(repeating: true, count: N+1)
        primes[0...1] = [false, false]

        for divisor in stride(from: 2, through: N, by: 1) where primes[divisor] {
            for number in stride(from: divisor * divisor, through: N, by: divisor) {
                primes[number] = false
            }
        }

        var end = 2
        var sum = 0
        var count = 0

        for start in stride(from: 2, through: N, by: 1) where primes[start] {
            while sum < N && end <= N {
                if primes[end] {
                    sum += end
                }

                end += 1
            }

            if sum == N {
                count += 1
            }

            sum -= start
        }

        print(count)
    }

    // 메모리: 168964KB, 시간: 1636ms, 코드 길이: 623B
    private func solution2() {
        let N = Int(readLine()!)!
        var primes = Set<Int>()

        for number in stride(from: 2, through: N, by: 1) {
            primes.insert(number)
        }

        for divisor in stride(from: 2, through: N, by: 1) where primes.contains(divisor) {
            for number in stride(from: divisor * divisor, through: N, by: divisor) {
                primes.remove(number)
            }
        }

        let newPrimes = primes.sorted()
        var end = 0
        var sum = 0
        var count = 0

        for start in newPrimes.indices {
            while sum < N && newPrimes.indices ~= end {
                sum += newPrimes[end]
                end += 1
            }

            if sum == N {
                count += 1
            }

            sum -= newPrimes[start]
        }

        print(count)
    }

    // 메모리: 80892KB, 시간: 36ms, 코드 길이: 974B
    private func solution3() {
        let N = Int(readLine()!)!
        print(countContinousSum(N, getPrimeNumbers(N)))

        func getPrimeNumbers(_ target: Int) -> [Int] {
            var isPrime = Array(repeating: true, count: target + 1)
            isPrime[0...1] = [false, false]

            var base = 2
            while base * base <= target {
                if isPrime[base] {
                    var next = base * base

                    while next <= target {
                        isPrime[next] = false
                        next += base
                    }
                }

                base += 1
            }

            return isPrime.enumerated().filter { $0.element }.map { $0.offset }
        }

        func countContinousSum(_ target: Int, _ primes: [Int]) -> Int {
            if target == 1 { return 0 }

            var end = 0
            var sum = 0
            var count = 0

            for start in primes.indices {
                while sum < target && primes.indices ~= end {
                    sum += primes[end]
                    end += 1
                }

                if sum == target {
                    count += 1
                }

                sum -= primes[start]
            }

            return count
        }
    }
}
