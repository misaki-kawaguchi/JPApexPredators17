//
//  Predators.swift
//  JPApexPredators17
//
//  Created by 川口美咲 on 2024/04/07.
//

import Foundation

class Predators {
    var apexPredators: [ApexPredator] = []
    
    init() {
        decodeApexPredatorData()
    }
 
    func decodeApexPredatorData() {
        // JSONファイルのURLを取得（nilでない場合にurlに代入される）
        if let url = Bundle.main.url(forResource: "jpapexpredators", withExtension: "json") {
            do {
                // リソースファイルからDataオブジェクトを作成（実際のデータを読み込む）
                let data = try Data(contentsOf: url)
                // JSONDecoderオブジェクトを作成
                let decoder = JSONDecoder()
                // JSONのキーがスネークケースの場合、それをキャメルケースに自動的に変換する
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                // 読み込んだデータを[ApexPredator]型のオブジェクト配列にデコードする
                apexPredators = try decoder.decode([ApexPredator].self, from: data)
            } catch {
                // エラー（ファイルが見つからない、デコードに失敗した等）が発生した場合catchブロックが実行される
                print("Error decoding JSON data: \(error)")
            }
        }
    }
    
    func search(for searchTerm: String) -> [ApexPredator] {
        if searchTerm.isEmpty {
            return apexPredators
        } else {
            return apexPredators.filter {
                predetor in
                predetor.name.localizedStandardContains(searchTerm)
            }
        }
    }
}
