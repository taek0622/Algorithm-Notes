//
//  1972.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/7/25.
//

//  문제 링크: https://www.acmicpc.net/problem/1972
//  알고리즘 분류: 구현, 자료 구조, 문자열, 해시를 사용한 집합과 맵

class BOJ1972: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 530B
        while let input = readLine(), input != "*" {
            let sentence = input.map { String($0) }
            var isUnique = true

            outer: for step in stride(from: 1, through: sentence.count - 2 + 1, by: 1) {
                var pair = Set<String>()

                for idx in stride(from: 0, to: sentence.count - step, by: 1) {
                    if !pair.insert(sentence[idx] + sentence[idx+step]).inserted {
                        isUnique = false
                        break outer
                    }
                }
            }

            print("\(input) is\(isUnique ? "" : " NOT") surprising.")
        }
    }
}
