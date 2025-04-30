//
//  17608.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/12/24.
//

//  문제 링크: https://www.acmicpc.net/problem/17608
//  알고리즘 분류: 구현, 자료 구조, 스택

class BOJ17608: Solvable {
    func run() {
        // 메모리: 70668KB, 시간: 52ms, 코드 길이: 239B
        let N = Int(readLine()!)!
        var sticks = [Int]()
        var (now, count) = (0, 0)

        for _ in 0..<N {
            sticks.append(Int(readLine()!)!)
        }

        for idx in (0..<N).reversed() where sticks[idx] > now {
            now = sticks[idx]
            count += 1
        }

        print(count)
    }
}
