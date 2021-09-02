class Unit < ApplicationRecord
    has_many :characters
    #importメソッド
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
        # IDが見つかれば、レコードを呼び出し、見つかれなければ、新しく作成
        unit = find_by(id: row["id"]) || new
        # CSVからデータを取得し、設定する
        unit.attributes = row.to_hash.slice(*updatable_attributes)
        unit.save
        end
    end
    
    # 更新を許可するカラムを定義
    def self.updatable_attributes
        ["name"]
    end
end
