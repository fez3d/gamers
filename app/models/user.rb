class User
  include Mongoid::Document
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  field :money,              type: Integer, default: 0
  field :username,           type: String
  field :email,              type: String, default: ""
  field :encrypted_password, type: String, default: ""
  field :reset_password_token,   type: String
  field :reset_password_sent_at, type: Time
  field :remember_created_at, type: Time

  field :skins, type: Array, default: ["ffdbb4","edb98a","fd9841","fcee93","d08b5b","ae5d29","614335"]
  field :eyes, type: Array, default: ["default"]
  field :eyebrows, type: Array, default: ["default"]
  field :mouths, type: Array, default: ["default"]
  field :hairstyles, type: Array, default: ["bold"]
  field :haircolors, type: Array, default: ["bb7748_9a4f2b_6f2912"]
  field :facialhairs, type: Array, default: ["none"]
  field :clothes, type: Array, default: ["vneck"]
  field :fabriccolors, type: Array, default: ["545454"]
  field :backgroundcolors, type: Array, default: ["ffffff"]
  field :glasses, type: Array, default: ["none"]
  field :glassopacities, type: Array, default: ["10"]
  field :tattoos, type: Array, default: ["none"]
  field :accesories, type: Array, default: ["none"]

  field :current_skin, type: String, default: "ffdbb4"
  field :current_eye, type: String, default: "default"
  field :current_eyebrow, type: String, default: "default"
  field :current_mouth, type: String, default: "default"
  field :current_hairstyle, type: String, default: "bold"
  field :current_haircolor, type: String, default: "bb7748_9a4f2b_6f2912"
  field :current_facialhair, type: String, default: "none"
  field :current_clothe, type: String, default: "vneck"
  field :current_fabriccolor, type: String, default: "545454"
  field :current_backgroundcolor, type: String, default: "ffffff"
  field :current_glasses, type: String, default: "none"
  field :current_tattoo, type: String, default: "none"
  field :current_accesory, type: String, default: "none"

end
