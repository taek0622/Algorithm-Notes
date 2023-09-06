//
//  1822.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/06.
//

//  문제 링크: https://www.acmicpc.net/problem/1822
//  알고리즘 분류: 자료 구조, 정렬, 해시를 사용한 집합과 맵, 트리를 사용한 집합과 맵

class BOJ1822: Solvable {
    func run() {
        // 메모리: 119140KB, 시간: 792ms, 코드 길이: 347B
        let _ = readLine()!.split(separator: " ").map { Int(String($0))! }
        let A = Set(readLine()!.split(separator: " ").map { Int(String($0))! })
        let B = Set(readLine()!.split(separator: " ").map { Int(String($0))! })
        let diff = A.subtracting(B)

        print(diff.count)

        if diff.count > 0 {
            print(diff.sorted().map { String($0) }.joined(separator: " "))
        }
    }
}
