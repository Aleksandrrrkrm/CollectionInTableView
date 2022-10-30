//
//  Entity.swift
//  TestTask
//
//  Created by Александр Головин on 24.10.2022.
//

import Foundation

// MARK: - Section
struct Entity {
    
    let itemsTotal = 3
    let photo = [[Item(url: "https://bipbap.ru/wp-content/uploads/2017/04/0_7c779_5df17311_orig.jpg"),
                  Item(url: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Hopetoun_falls.jpg/220px-Hopetoun_falls.jpg"),
                  Item(url: "https://avatars.mds.yandex.net/i?id=0eaa142d7202ac9bbd26ac279e7ae159_l-4898876-images-thumbs&n=27&h=384&w=480")
                 ],
                 [Item(url: "https://preview.redd.it/jbba1ldaflc61.jpg?width=640&crop=smart&auto=webp&s=663936672b206b40fc516229c1a956af1c644035"),
                  Item(url: "https://i.mycdn.me/i?r=AzEOxUXG5QgodWC3x6hM10CkS0cHLSIie99qVqLmiMVN6zi643xpfYbBKijbFsKxjq4&fn=sqr_288"),
                  Item(url: "https://kartinkin.net/uploads/posts/2022-03/1646753046_12-kartinkin-net-p-kartinki-devushka-narisovannaya-12.jpg")
                 ],
                 [Item(url: "https://www.avtovzglyad.ru/media/article/BMW_3-Series_2019.jpg.740x555_q85_box-38%2C115%2C1102%2C913_crop_detail_upscale.jpg"),
                  Item(url: "https://keyauto-probeg.ru/images/1980x700/uploads/slides/23c07a8cbe0a053d8c5ed58bc75d91a2.webp"),
                  Item(url: "https://auto-desk.pro/wp-content/uploads/head.jpg")
                 ]]
}


struct Headers {
    
    let headers = ["Nature", "Girls", "Avto"]
}

// MARK: - Image
struct Item {
    
    let url: String
}
