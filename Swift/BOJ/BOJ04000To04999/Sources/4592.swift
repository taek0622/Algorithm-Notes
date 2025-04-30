//
//  4592.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/21/24.
//

//  문제 링크: https://www.acmicpc.net/problem/4592
//  알고리즘 분류: 구현

class BOJ4592: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 324B
        while let input = readLine(), input != "0" {
            let nums = input.split(separator: " ").map { Int($0)! }
            var result = [Int]()

            if nums[0] != 0 {
                for num in nums[1...] where num != result.last {
                    result.append(num)
                }
            }

            print(result.map { String($0) }.joined(separator: " "), "$")
        }
    }
}
