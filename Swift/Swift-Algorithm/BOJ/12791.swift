//
//  12791.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/13/24.
//

//  문제 링크: https://www.acmicpc.net/problem/12791
//  알고리즘 분류: 구현, 런타임 전의 전처리

class BOJ12791: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 881B
        let albums = [(1967, "DavidBowie"), (1969, "SpaceOddity"), (1970, "TheManWhoSoldTheWorld"), (1971, "HunkyDory"), (1972, "TheRiseAndFallOfZiggyStardustAndTheSpidersFromMars"), (1973, "AladdinSane"), (1973, "PinUps"), (1974, "DiamondDogs"), (1975, "YoungAmericans"), (1976, "StationToStation"), (1977, "Low"), (1977, "Heroes"), (1979, "Lodger"), (1980, "ScaryMonstersAndSuperCreeps"), (1983, "LetsDance"), (1984, "Tonight"), (1987, "NeverLetMeDown"), (1993, "BlackTieWhiteNoise"), (1995, "1.Outside"), (1997, "Earthling"), (1999, "Hours"), (2002, "Heathen"), (2003, "Reality"), (2013, "TheNextDay"), (2016, "BlackStar")]
        let Q = Int(readLine()!)!

        for _ in 0..<Q {
            let SE = readLine()!.split(separator: " ").map { Int($0)! }
            print(albums.filter { SE[0]...SE[1] ~= $0.0 }.count)

            for album in albums where SE[0]...SE[1] ~= album.0 {
                print(album.0, album.1)
            }
        }
    }
}
