//
//  27160.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/9/24.
//

//  문제 링크: https://www.acmicpc.net/problem/27160
//  알고리즘 분류: 구현, 자료 구조, 문자열, 해시를 사용한 집합과 맵

class BOJ27160: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 140ms, 코드 길이: 269B
        let N = Int(readLine()!)!
        var fruits = ["STRAWBERRY": 0, "BANANA": 0, "LIME": 0, "PLUM": 0]

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { String($0) }
            fruits[input[0]]! += Int(input[1])!
        }

        print(fruits.values.contains(5) ? "YES" : "NO")
    }
}
