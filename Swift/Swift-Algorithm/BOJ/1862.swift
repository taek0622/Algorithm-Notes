//
//  1862.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/08.
//

//  문제 링크: https://www.acmicpc.net/problem/1862
//  알고리즘 분류: 수학, 정수론

class BOJ1862: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 124B
        let N = readLine()!.map { Int(String($0))! }.map { $0 > 4 ? $0-1 : $0 }.map { String($0) }.joined()
        print(Int(N, radix: 9)!)
    }
}
