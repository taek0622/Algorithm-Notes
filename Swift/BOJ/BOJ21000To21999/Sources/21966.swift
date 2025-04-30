//
//  21966.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/9/25.
//

//  문제 링크: https://www.acmicpc.net/problem/21966
//  알고리즘 분류: 구현, 문자열

class BOJ21966: Solvable {
    func run() {
        // 메모리: 73940KB, 시간: 32ms, 코드 길이: 321B
        let N = Int(readLine()!)!
        let S = readLine()!.map { String($0) }
        
        if N <= 25 {
            print(S.joined())
        } else if S[11..<N-11].joined().split(separator: ".").map { String($0) }.count == 1 {
            print(S[..<11].joined() + "..." + S[(N-11)...].joined())
        } else {
            print(S[..<9].joined() + "......" + S[(N-10)...].joined())
        }
    }
}
