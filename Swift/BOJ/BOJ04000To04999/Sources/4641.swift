//
//  4641.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/20/24.
//

//  문제 링크: https://www.acmicpc.net/problem/4641
//  알고리즘 분류: 구현, 브루트포스 알고리즘

class BOJ4641: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 4ms, 코드 길이: 242B
        while let input = readLine(), input != "-1" {
            var list = input.split(separator: " ").map { Int($0)! }
            list.removeLast()
            var count = 0

            for num in list where list.contains(num * 2) {
                count += 1
            }

            print(count)
        }
    }
}
