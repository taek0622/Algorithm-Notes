//
//  2775.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2022/12/27.
//

// 문제: https://www.acmicpc.net/problem/2775

class BOJ2775: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 280ms, 코드 길이: 391B
    private func solution1() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let k = Int(readLine()!)!
            let n = Int(readLine()!)!

            print(checkPopulation(k, n))
        }

        func checkPopulation(_ k: Int, _ n: Int) -> Int {
            var population = 0

            if k == 0 {
                population += n
            } else {
                for room in 1...n {
                    population += checkPopulation(k - 1, room)
                }
            }

            return population
        }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 441B
    private func solution2() {
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let k = Int(readLine()!)!
            let n = Int(readLine()!)!

            var population = [Int]()

            for floor in 0...k {
                var sum = 0
                for room in 0..<n {
                    if floor == 0 {
                        population.append(room + 1)
                    } else {
                        sum += population[room]
                        population[room] = sum
                    }
                }
            }

            print(population[n - 1])
        }
    }
}
