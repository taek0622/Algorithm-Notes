//
//  1027.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/7/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1027
//  알고리즘 분류: 수학, 브루트포스 알고리즘, 기하학

class BOJ1027: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 474B
        let N = Int(readLine()!)!
        let buildings = readLine()!.split(separator: " ").map { Int($0)! }
        var count = Array(repeating: 0, count: N)

        for idx in 0..<N {
            var max: Double = -1000000000

            for next in idx+1..<N {
                let inclination = Double(buildings[next] - buildings[idx]) / Double(next - idx)

                if inclination <= max {
                    continue
                }

                max = inclination
                count[idx] += 1
                count[next] += 1
            }
        }

        print(count.max()!)
    }
}
