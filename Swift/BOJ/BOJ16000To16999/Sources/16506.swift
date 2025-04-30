//
//  16506.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/22/25.
//

//  문제 링크: https://www.acmicpc.net/problem/16506
//  알고리즘 분류: 구현

class BOJ16506: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 873B
        let N = Int(readLine()!)!
        let opcode = ["ADD", "SUB", "MOV", "AND", "OR", "NOT", "MULT", "LSFTL", "LSFTR", "ASFTR", "RL", "RR"]

        for _ in 0..<N {
            var input = readLine()!.split(separator: " ").map { String($0) }
            let isC = input[0].last! == "C"

            if isC {
                input[0].removeLast()
            }

            let codeIdx = opcode.firstIndex(of: input[0])!
            let binaryCode = String(codeIdx, radix: 2)
            let binaryRD = String(Int(input[1])!, radix: 2)
            let binaryRA = String(Int(input[2])!, radix: 2)
            let binaryRB = String(Int(input[3])!, radix: 2)
            print(String(repeating: "0", count: 4-binaryCode.count) + binaryCode + (isC ? "1" : "0") + "0" + String(repeating: "0", count: 3-binaryRD.count) + binaryRD + String(repeating: "0", count: 3-binaryRA.count) + binaryRA + String(repeating: "0", count: (isC ? 4 : 3) - binaryRB.count) + binaryRB + (isC ? "" : "0"))
        }
    }
}
