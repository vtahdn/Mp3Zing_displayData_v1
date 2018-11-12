//
//  TableViewOnline.swift
//  MP3ZING
//
//  Created by Viet Asc on 11/5/18.
//  Copyright © 2018 Viet Asc. All rights reserved.
//

import UIKit

class TableViewOnline: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let codeList = ["ZW9DC99A":"https://vnno-vn-6-tf-mp3-s1-zmp3.zadn.vn/6b6f67b8b4fc5da204ed/8535846274511414666?authen=exp=1541671857~acl=/6b6f67b8b4fc5da204ed/*~hmac=34dffb4876855892e2a68438d41c0915&filename=Vo-Tinh-Xesi-Hoaprox.mp3",
                    "ZW9DFW8O":"https://vnno-vn-5-tf-mp3-s1-zmp3.zadn.vn/8bd98de05ea4b7faeeb5/984544967048502405?authen=exp=1541843256~acl=/8bd98de05ea4b7faeeb5/*~hmac=1ce8df49be05feca70709e383617774d&filename=Hongkong1-Official-Version-Nguyen-Trong-Tai-San-Ji-Double-X.mp3",
                    "ZW9DFW9A":"https://vnno-vn-5-tf-mp3-s1-zmp3.zadn.vn/6a7f4f5c9c1875462c09/6915996016203233196?authen=exp=1541671786~acl=/6a7f4f5c9c1875462c09/*~hmac=e2362357981033b6a4c6449d82022308&filename=Thang-Dien-JustaTee-Phuong-Ly.mp3",
                    "ZW9EAI76":"https://vnno-vn-5-tf-mp3-s1-zmp3.zadn.vn/50459f2a516eb830e17f/2783001447540673884?authen=exp=1541671903~acl=/50459f2a516eb830e17f/*~hmac=1f69386f98f3daea9eee32ae585844dd&filename=Chap-Nhan-Hoa-Minzy.mp3",
                    "ZW9E86WA":"https://vnno-zn-5-tf-mp3-s1-zmp3.zadn.vn/3573d87f153bfc65a52a/4100151906553154210?authen=exp=1541832427~acl=/3573d87f153bfc65a52a/*~hmac=5380a2961e2122ef74d49b3d77a83e85",
                    "ZW9DCEE6":"https://vnno-vn-5-tf-mp3-s1-zmp3.zadn.vn/c9ce5f658c21657f3c30/5337160813560919543?authen=exp=1541836047~acl=/c9ce5f658c21657f3c30/*~hmac=28ac785d460f1720f4475d5f840bb864&filename=Cang-Niu-Giu-Cang-De-Mat-Mr-Siro.mp3",
                    "ZW9C0WDI":"https://vnno-zn-5-tf-mp3-s1-zmp3.zadn.vn/eca53988eecc07925edd/7423535743815512881?authen=exp=1541836075~acl=/eca53988eecc07925edd/*~hmac=8ece45ffe07ffe84a79e5b6d95aa681e&filename=Dung-Nhu-Thoi-Quen-JayKii-Sara-Luu.mp3",
                    "ZW9C8FDB":"https://vnno-zn-5-tf-mp3-s1-zmp3.zadn.vn/5a371675c6312f6f7620/23515118314228770?authen=exp=1541836720~acl=/5a371675c6312f6f7620/*~hmac=13b6c380410b27fef6046ad3414c6a09&filename=Dung-Quen-Ten-Anh-Hoa-Vinh.mp3",
                    "ZW9C7FFZ":"https://vnno-zn-5-tf-mp3-s1-zmp3.zadn.vn/6abdf53e3b7ad2248b6b/7121936953175256942?authen=exp=1541836774~acl=/6abdf53e3b7ad2248b6b/*~hmac=8b6c1bc7295c41f2428f8bba1f249f65&filename=Thay-The-Ho-Gia-Hung.mp3",
                    "ZW9A7CEE":"https://vnno-vn-5-tf-mp3-s1-zmp3.zadn.vn/4071419594d17d8f24c0/8580673733891366349?authen=exp=1541836811~acl=/4071419594d17d8f24c0/*~hmac=e9b73820a58f0e13a2186cb4934e605a&filename=Sai-Nguoi-Sai-Thoi-Diem-Thanh-Hung.mp3",
                    "ZW9DODFI":"https://vnno-vn-5-tf-mp3-s1-zmp3.zadn.vn/62c3859d54d9bd87e4c8/4404518969407359479?authen=exp=1541841987~acl=/62c3859d54d9bd87e4c8/*~hmac=df391df24b14a376cf564e694eb04c60&filename=Tan-Cung-Noi-Nho-Will.mp3",
                    "ZW9BAAOF":"https://vnno-vn-5-tf-mp3-s1-zmp3.zadn.vn/313ac3eb14affdf1a4be/2007256639034568599?authen=exp=1541842033~acl=/313ac3eb14affdf1a4be/*~hmac=9a3a3995072947e9bb80a3eb9ba1c66f&filename=Vo-Cung-Vi-Anh-Thuong-Em-Phan-Duy-Anh.mp3",
                    "ZW9BCU0D":"https://vnno-zn-5-tf-mp3-s1-zmp3.zadn.vn/8eb46f3db87951270868/6366243486279198955?authen=exp=1541842101~acl=/8eb46f3db87951270868/*~hmac=7a2aa17247a9890adaf8d36bc2e7820c&filename=Cham-Day-Noi-Dau-ERIK.mp3",
                    "ZW9DIEUI":"https://vnno-zn-5-tf-mp3-s1-zmp3.zadn.vn/2c562f3cfe7817264e69/4641493115280488275?authen=exp=1541842147~acl=/2c562f3cfe7817264e69/*~hmac=b5f326bcba0fdea229a787277fdcbb9e&filename=Buon-Khong-Em-Dat-G.mp3",
                    "ZW9CBEEO":"https://vnno-zn-5-tf-mp3-s1-zmp3.zadn.vn/3e371032c07629287067/5540280615121244869?authen=exp=1541842190~acl=/3e371032c07629287067/*~hmac=d9f5c1b8b17fae408d20220945d55cc8&filename=Duyen-Minh-Lo-Huong-Tram.mp3",
                    "ZW8WZ7B9":"https://vnno-zn-5-tf-mp3-s1-zmp3.zadn.vn/8d5fb949620d8b53d21c/8767469349974587679?authen=exp=1541842255~acl=/8d5fb949620d8b53d21c/*~hmac=960a51d52e67969f65a8fff0d3989b90&filename=U-Co-Anh-Day-Tino.mp3",
                    "ZW9DAB0O":"https://vnno-vn-6-tf-mp3-s1-zmp3.zadn.vn/ac4bcaa619e2f0bca9f3/6620213065282821073?authen=exp=1541842295~acl=/ac4bcaa619e2f0bca9f3/*~hmac=abd3c150ccf60d2ba11accd7dfd60168&filename=Chuyen-Tinh-Toi-Kay-Tran-Nguyen-Khoa-Kass.mp3",
                    "ZW9E8U8W":"https://vnno-vn-5-tf-mp3-s1-zmp3.zadn.vn/e3cd26c7eb8302dd5b92/2425880662979204580?authen=exp=1541842340~acl=/e3cd26c7eb8302dd5b92/*~hmac=0539432d8a6569727f73e87644140307&filename=Nguoi-La-Thoang-Qua-Khoi-My.mp3",
                    "ZW9C0DOU":"https://vnno-zn-5-tf-mp3-s1-zmp3.zadn.vn/6aced1fc06b8efe6b6a9/244466968514412344?authen=exp=1541842383~acl=/6aced1fc06b8efe6b6a9/*~hmac=80ecb76dd5f1f66fd46c1fea44309c6a&filename=Roi-Bo-Hoa-Minzy.mp3",
                    "ZW9C0DWE":"https://vnno-vn-5-tf-mp3-s1-zmp3.zadn.vn/3973f1412605cf5b9614/5541874233939026669?authen=exp=1541842487~acl=/3973f1412605cf5b9614/*~hmac=0fa38c9918bfc995dba24b1a6dff60eb&filename=Roi-Nguoi-Thuong-Cung-Hoa-Nguoi-Dung-Hien-Ho.mp3"
    ]
    
    var songList = [Song]()
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        myTableView.delegate = self
        myTableView.dataSource = self
        getData()
    }
    
    func getData()
    {
        let data = try? Data(contentsOf: URL(string: "https://mp3.zing.vn/top100/Nhac-Tre/IWZ9Z088.html")!)
        //        print(String(data: data!, encoding: .utf8)!)
        let doc = TFHpple(htmlData: data!)
        
        //        let path = "//div[@class='e-item']"
        let path = "//ul[@class='fn-list']/li"
        
        // All elements in doc
        if let elements = doc?.search(withXPathQuery: path) as? [TFHppleElement] {
            // Doc elements size
            print("rootElements size:\(elements.count)")
            // Reading elements
            
            // Song number limit
            var count = 0
            
            for element in elements {
                
                DispatchQueue.global(qos: .default).async(execute: {
                    if let id = element.attributes["data-id"] as? String {
                        if count < 20 {
                            count += 1
                            // title
                            let titlePath = "//h3/a"
                            var titleString = ""
                            if let titles = element.search(withXPathQuery: titlePath) as? [TFHppleElement] {
                                // Doc children size
                                //                    print("titleElements size:\(children.count)")
                                //                        print("title: \(titles[0].content!)")
                                titleString = titles[0].content!
                                
                            }
                            // end: title
                            
                            // artist
                            let artistPath = "//h4[@class='title-sd-item txt-info fn-artist']/a"
                            var artistString = ""
                            if let artists = element.search(withXPathQuery: artistPath) as? [TFHppleElement] {
                                //                    print("artists size: \(artists.count)")
                                var artistsCount = 0
                                for artist in artists {
                                    if artists.count <= 1 {
                                        artistString = artist.content!
                                    } else {
                                        artistString += ", \(artist.content!)"
                                    }
                                    artistsCount += 1
                                }
                            }
                            // end: artist
                            
                            // thumbnail
                            let thumbnailPath = "//img"
                            var thumbnailString = ""
                            if let thumbnails = element.search(withXPathQuery: thumbnailPath) as? [TFHppleElement] {
                                //                        print("- thumnail src: \(thumbnails[0].attributes["src"]!)")
                                thumbnailString = thumbnails[0].attributes["src"] as! String
                            }
                            // end: thumbnail

                            // source
                            var sourceString = ""
                            if let source = self.codeList[id] {
                                sourceString = source
                            } else {
                                print("source not found.")
                            }
                            // end: source
                            
                            // Start: Add Songs To List
                            self.addSongToList(titleString, artistString, thumbnailString, sourceString)
                            // End: adding songs
                            
                        }
                    }
                })
                // end: search element
            }
            // end: reading elements
        }
    }
    
    func addSongToList(_ title: String, _ artist: String, _ thumbnail: String, _ source: String) {
        let currentSong = Song(title: title, artist: artist, thumbnail: thumbnail, source: source)
        songList.append(currentSong)
        DispatchQueue.main.async {
            self.myTableView.reloadData()
        }
    }
    
    // UITableViewDelegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.imageView?.image = songList[indexPath.row].thumbnail
        cell.textLabel?.text = songList[indexPath.row].title
        cell.textLabel?.textColor = .white
        return cell
    }
}
