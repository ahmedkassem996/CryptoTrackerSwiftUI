//
//  PreviewProvider.swift
//  CryptoTracker
//
//  Created by Ahmed Kasem on 25/03/2023.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
    
}


class DeveloperPreview {
    
    static let instance = DeveloperPreview()
    
    private init() {}
    
    let homeVM = HomeViewModel()
    
    let coin = CoinModel(id: "bitcoin",
                         symbol: "btc",
                         name: "Bitcoin",
                         image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
                         currentPrice: 27684,
                         marketCap: 534960922539,
                         marketCapRank: 1,
                         fullyDilutedValuation: 581242735142,
                         totalVolume: 19595077063,
                         high24H: 28317,
                         low24H: 27210,
                         priceChange24H: -264.6728009339058,
                         priceChangePercentage24H: -0.947,
                         marketCapChange24H: -7183122374.4748535,
                         marketCapChangePercentage24H: -1.32495,
                         circulatingSupply: 19327862,
                         totalSupply: 21000000,
                         maxSupply: 21000000,
                         ath: 69045,
                         athChangePercentage: -59.91441,
                         athDate: "2021-11-10T14:24:11.849Z",
                         atl: 67.81,
                         atlChangePercentage: 40716.11767,
                         atlDate: "2013-07-06T00:00:00.000Z",
                         lastUpdated: "2023-03-25T13:41:14.974Z",
                         sparklineIn7D: SparklineIn7D(
                            price: [
                                27580.51848203445,
                                27673.782703161145,
                                27568.65132863367,
                                27677.177457027617,
                                27413.219280424782,
                                27356.739376378075,
                                27457.570850164277,
                                27420.084097608957,
                                27502.833807720843,
                                27522.260694125962,
                                27399.564950037668,
                                27126.21038189572,
                                27124.652906181986,
                                27267.24261409408,
                                27319.087664217812,
                                27319.31420792679,
                                27359.21952530413,
                                27324.78733235095,
                                27266.355391351244,
                                27122.66773886824,
                                27157.799501043388,
                                27182.84199829757,
                                27238.465164906407,
                                27226.274597285057,
                                27325.036774961274,
                                27421.158271462824,
                                27365.966558370656,
                                27470.99995925533,
                                27759.282331716247,
                                28141.506879232136,
                                28100.154278815622,
                                28341.52776458604,
                                28376.48246091515,
                                28038.69586124248,
                                28167.573990980018,
                                28277.7137622549,
                                28133.48527609605,
                                28038.235903730918,
                                27846.412210173265,
                                27602.100596768156,
                                27465.206770213725,
                                27606.204131333387,
                                27591.099545336616,
                                27873.27842887241,
                                28374.629820408125,
                                28500.164499808237,
                                28363.243288114227,
                                28298.503036191098,
                                28373.890428636583,
                                28417.586260101016,
                                27973.738781924432,
                                28179.317746020937,
                                28034.128021544704,
                                27881.292218666982,
                                27901.876170550073,
                                28192.670752151833,
                                28046.412524833264,
                                28239.10263844189,
                                28265.12603228938,
                                28233.87063624655,
                                27960.961697157865,
                                28115.920999810336,
                                28093.496921587102,
                                28024.838877955415,
                                27967.194563679157,
                                28127.47311149861,
                                27988.590045028493,
                                27893.8717507881,
                                27743.731861826895,
                                27851.32601093579,
                                28175.04892281938,
                                28219.800433352655,
                                28295.666458029933,
                                28432.31958863622,
                                28257.202242856685,
                                28103.00611700219,
                                28266.696872468296,
                                28617.570560839817,
                                28248.039696797292,
                                28301.63545730713,
                                28333.76069698013,
                                28239.737909389765,
                                28197.0324867261,
                                28217.53621768342,
                                28294.102225322193,
                                28152.771010465058,
                                28244.43391063248,
                                28217.014099591288,
                                28322.76057456111,
                                28376.1677690613,
                                28371.252866073635,
                                28353.551588950824,
                                28269.678525115552,
                                28286.399031197296,
                                28249.446585628688,
                                28325.788457903254,
                                28293.920871143207,
                                28401.23567674259,
                                28475.570229403787,
                                28739.986682874245,
                                28783.513771568014,
                                28792.012531509805,
                                28691.600039278674,
                                28247.23303961758,
                                26980.196144904265,
                                27539.738185150865,
                                27335.099549273044,
                                27417.987800920448,
                                27449.254830807356,
                                27538.84697445696,
                                27410.84869571786,
                                27560.998895218454,
                                27605.581828721628,
                                27547.901362758814,
                                27840.066120005416,
                                27878.638179115733,
                                27863.234282336645,
                                27881.910007384988,
                                27828.13206846333,
                                27830.25470667267,
                                27725.726447152374,
                                27705.628510928695,
                                27594.01640878756,
                                27882.731303243127,
                                28758.095490583008,
                                28658.66907799722,
                                28446.554825707346,
                                28005.124536558167,
                                28587.928116967007,
                                28346.162367527544,
                                28333.903828945186,
                                28384.27699662628,
                                28454.455650438067,
                                28403.34552262699,
                                28404.054088611272,
                                28319.81930698715,
                                28346.476260476997,
                                28282.706045285904,
                                28404.110848007396,
                                28378.806993954087,
                                28423.60452041405,
                                28182.627773385197,
                                28168.89040545487,
                                28114.05622962413,
                                28057.46505101403,
                                28158.176934956813,
                                28156.301701543103,
                                28182.940965951984,
                                28187.540850684465,
                                28084.909758819864,
                                27783.84563108444,
                                27966.743764532937,
                                28049.586471134895,
                                27750.2906781151,
                                27531.04456350808,
                                27487.11350938197,
                                27651.32595121404,
                                27715.7197072436,
                                27649.299546410395,
                                27645.11347096377,
                                27743.022392007246,
                                27681.998104473965,
                                27621.265261281427,
                                27676.834582835316,
                                27685.943202489078,
                                27601.46577545931,
                                27676.628337488713
                            ]
                         ),
                         priceChangePercentage24HInCurrency: 0.7903628042934226, currentHoldings: 1.5)
        
}
