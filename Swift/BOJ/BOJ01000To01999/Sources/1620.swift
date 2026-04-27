//
//  1620.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/08.
//

// 문제: https://www.acmicpc.net/problem/1620

import Shared

public struct BOJ1620: Solvable {
    public init() {}

    public func run() {
        solution3()
    }

    // 메모리: 92140KB, 시간: 268ms, 코드 길이: 469B
    private func solution1() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var pokemonName = [String: Int]()
        var pokemonNumber = [Int: String]()

        for number in 1...input[0] {
            let pokemon = readLine()!
            pokemonName[pokemon] = number
            pokemonNumber[number] = pokemon
        }

        for _ in 0..<input[1] {
            let pokemon = readLine()!

            if let pokemon = Int(String(pokemon)) {
                print(pokemonNumber[pokemon]!)
            } else {
                print(pokemonName[pokemon]!)
            }
        }
    }

    // 메모리: 94412KB, 시간: 212ms, 코드 길이: 520B
    private func solution2() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var pokemonName = [String: Int]()
        var pokemonNumber = [Int: String]()
        var result = ""

        for number in 1...input[0] {
            let pokemon = readLine()!
            pokemonName[pokemon] = number
            pokemonNumber[number] = pokemon
        }

        for _ in 0..<input[1] {
            let pokemon = readLine()!

            if let pokemon = Int(String(pokemon)) {
                result += "\(pokemonNumber[pokemon]!)\n"
            } else {
                result += "\(pokemonName[pokemon]!)\n"
            }
        }

        print(result)
    }

    // 메모리: 90340KB, 시간: 196ms, 코드 길이: 516B
    private func solution3() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var pokemonName = [String: Int]()
        var pokemonNumber = [String]()
        var result = ""

        for number in 1...input[0] {
            let pokemon = readLine()!
            pokemonName[pokemon] = number
            pokemonNumber.append(pokemon)
        }

        for _ in 0..<input[1] {
            let pokemon = readLine()!

            if let pokemon = Int(String(pokemon)) {
                result += "\(pokemonNumber[pokemon - 1])\n"
            } else {
                result += "\(pokemonName[pokemon]!)\n"
            }
        }

        print(result)
    }

    // 메모리: 88056KB, 시간: 252ms, 코드 길이: 481B
    private func solution4() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var pokemonName = [String: Int]()
        var pokemonNumber = [String]()
        var result = ""

        for number in 1...input[0] {
            let pokemon = readLine()!
            pokemonName[pokemon] = number
            pokemonNumber.append(pokemon)
        }

        for _ in 0..<input[1] {
            let pokemon = readLine()!

            if let pokemon = Int(String(pokemon)) {
                print(pokemonNumber[pokemon - 1])
            } else {
                print(pokemonName[pokemon]!)
            }
        }
    }
}
