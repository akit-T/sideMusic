class Character < ApplicationRecord
    belongs_to :unit
        #importメソッド
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
        # IDが見つかれば、レコードを呼び出し、見つかれなければ、新しく作成
        character = find_by(id: row["id"]) || new
        # CSVからデータを取得し、設定する
        character.attributes = row.to_hash.slice(*updatable_attributes)
        character.save
        end
    end
    
    # 更新を許可するカラムを定義
    def self.updatable_attributes
        ["name", "unit_id"]
    end
end
