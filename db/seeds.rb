#カルテ表示ラベル
Label.create!(name:"頭痛", detail:"カルテ")
Label.create!(name:"目の疲れ", detail:"カルテ")
Label.create!(name:"花粉症・鼻が悪い", detail:"カルテ")
Label.create!(name:"肩こり", detail:"カルテ")
Label.create!(name:"疲れ", detail:"カルテ")
Label.create!(name:"便秘", detail:"カルテ")
Label.create!(name:"胃が重い", detail:"カルテ")
Label.create!(name:"その他", detail:"カルテ")
#ツボ一覧 今使ってない
Label.create!(name:"頭")
Label.create!(name:"副鼻腔")
Label.create!(name:"脳下垂体")
Label.create!(name:"鼻")
Label.create!(name:"側頭")
Label.create!(name:"目")
Label.create!(name:"耳")
Label.create!(name:"首")
Label.create!(name:"甲状腺")
Label.create!(name:"肩")
Label.create!(name:"胃")
Label.create!(name:"膵臓")
Label.create!(name:"十二指腸")
Label.create!(name:"僧帽筋")
Label.create!(name:"肺")
Label.create!(name:"気管支")
Label.create!(name:"肝臓")
Label.create!(name:"心臓")
Label.create!(name:"腎臓")
Label.create!(name:"腸")
Label.create!(name:"尿管")
Label.create!(name:"膀胱")
Label.create!(name:"仙骨")
Label.create!(name:"膝")
Label.create!(name:"生殖器")
Label.create!(name:"坐骨神経")

# ゲストユーザー、店舗作成
User.create!(email: 'test@test.com', display_id:12345, password: 'password')
Store.create!(email: 'test@test.com', name: '店舗A', tel: 111-111-111, representative_name: '代表　者名', password: 'password')
