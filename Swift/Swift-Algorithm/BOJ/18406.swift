//
//  18406.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/2/24.
//

//  문제 링크: https://www.acmicpc.net/problem/18406
//  알고리즘 분류: 구현, 문자열

class BOJ18406: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 174B
        let N = readLine()!.map { Int(String($0))! }
        let (left, right) = (N[0..<N.count/2].reduce(0, +), N[N.count/2..<N.count].reduce(0, +))
        print(left == right ? "LUCKY" : "READY")
    }
}
