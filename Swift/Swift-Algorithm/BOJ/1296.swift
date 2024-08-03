//
//  1296.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/3/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1296
//  알고리즘 분류: 구현, 문자열, 정렬

class BOJ1296: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 818B
        let name = readLine()!
        let N = Int(readLine()!)!
        var winner = [String]()
        var winningPercentage = 0
        let nameLOVE = (name.filter { $0 == "L" }.count, name.filter { $0 == "O" }.count, name.filter { $0 == "V" }.count, name.filter { $0 == "E" }.count)

        for _ in 0..<N {
            let teamName = readLine()!
            var (L, O, V, E) = nameLOVE
            L += teamName.filter { $0 == "L" }.count
            O += teamName.filter { $0 == "O" }.count
            V += teamName.filter { $0 == "V" }.count
            E += teamName.filter { $0 == "E" }.count

            let percentage = ((L + O) * (L + V) * (L + E) * (O + V) * (O + E) * (V + E)) % 100

            if winningPercentage < percentage {
                winner = [teamName]
                winningPercentage = percentage
            } else if winningPercentage == percentage {
                winner.append(teamName)
            }
        }

        print(winner.sorted()[0])
    }
}
