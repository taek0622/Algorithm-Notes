//
//  14888.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/20/23.
//

//  문제 링크: https://www.acmicpc.net/problem/14888
//  알고리즘 분류: 브루트포스 알고리즘, 백트래킹

class BOJ14888: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 810B
        let N = Int(readLine()!)!
        let A = readLine()!.split(separator: " ").map { Int(String($0))! }
        let operands = readLine()!.split(separator: " ").map { Int(String($0))! }
        var minNum = Int.max
        var maxNum = Int.min

        dfs(1, A[0], operands[0], operands[1], operands[2], operands[3])

        print("\(maxNum)\n\(minNum)")

        func dfs(_ idx: Int, _ sum: Int, _ add: Int, _ dif: Int, _ mul: Int, _ div: Int) {
            if idx == N {
                minNum = min(minNum, sum)
                maxNum = max(maxNum, sum)
                return
            }

            if add != 0 {
                dfs(idx+1, sum+A[idx], add-1, dif, mul, div)
            }

            if dif != 0 {
                dfs(idx+1, sum-A[idx], add, dif-1, mul, div)
            }

            if mul != 0 {
                dfs(idx+1, sum*A[idx], add, dif, mul-1, div)
            }

            if div != 0 {
                dfs(idx+1, sum/A[idx], add, dif, mul, div-1)
            }
        }
    }
}
