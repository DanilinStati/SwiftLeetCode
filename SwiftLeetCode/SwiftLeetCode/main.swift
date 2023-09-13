//
//  main.swift
//  SwiftLeetCode
//
//  Created by Daniil on 12.09.2023.
//

import Foundation

struct Solution {
    // 135. Candy
    //
    // There are n children standing in a line. Each child is assigned a rating value given in the integer array ratings.
    // You are giving candies to these children subjected to the following requirements:
    // Each child must have at least one candy.
    // Children with a higher rating get more candies than their neighbors.
    // Return the minimum number of candies you need to have to distribute the candies to the children.
    
    func candy(_ ratings: [Int]) -> Int {
        // 1. Мы создаем массив где у каждого в самом начале будет по одной конфете
        var result: [Int] = Array(repeating: 1, count: ratings.count)
        
        // 2. ПЕрвым циклом мы проходимся по нашему массиву с лева на право
        for i in 1..<result.count {
            // 3. Если рейтинг нашего правого соседа больше, то мы устанавливаем
            // ему число конфет на 1 больше чем у правого соседа
            if ratings[i - 1] < ratings[i] {
                result[i] = result[i - 1] + 1
            }
        }
        // 4. Таким образом после первого прохода мы получаем массив [1, 1, 1, 2, 3]
        // 5. Теперь проходимся по массиву с права на лево
        for i in 1..<result.count {
            let index = result.count - i - 1
            // 6. Если рейтинг нашего правого левого больше, то мы устанавливаем
            // ему число конфет на 1 больше чем у левого соседа
            if ratings[index] > ratings[index + 1] {
                result[index] = max(result[index], result[index + 1] + 1)
            }
        }
        return result.reduce(0, +)
    }
}

let soution = Solution()
print(soution.candy([7, 5, 2, 3, 8]))
