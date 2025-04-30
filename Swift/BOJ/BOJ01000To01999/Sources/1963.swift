//
//  1963.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/3/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1963
//  알고리즘 분류: 수학, 그래프 이론, 그래프 탐색, 정수론, 너비 우선 탐색, 소수 판정, 에라토스테네스의 체

class BOJ1963: Solvable {
    func run() {
        let T = Int(readLine()!)!
        var primes = Array(0...10000)

        for divisor in 2...10000 where primes[divisor] != 0 {
            for number in stride(from: divisor * 2, through: 10000, by: divisor) {
                primes[number] = 0
            }
        }

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            bfs(input[0], input[1])
        }

        func bfs(_ base: Int, _ target: Int) {
            var visited = Array(repeating: false, count: 10000)
            var queue = [(base, 0)]
            visited[base] = true

            while !queue.isEmpty {
                var now = queue.removeFirst()

                if now.0 == target {
                    print(now.1)
                    break
                }

                let thousands = now.0 / 1000
                now.0 %= 1000
                let hundreds = now.0 / 100
                now.0 %= 100
                let tens = now.0 / 10
                now.0 %= 10

                var next = [thousands, hundreds, tens, now.0]

                for number in 0...9 {
                    for digit in 0..<4 {
                        let origin = next[digit]
                        next[digit] = number
                        let nextNumber = next[0] * 1000 + next[1] * 100 + next[2] * 10 + next[3]

                        if nextNumber >= 1000 && nextNumber <= 9999 && primes[nextNumber] != 0 && !visited[nextNumber] {
                            queue.append((nextNumber, now.1 + 1))
                            visited[nextNumber] = true
                        }

                        next[digit] = origin
                    }
                }
            }
        }
    }
}
