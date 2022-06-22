hand = ['グー', 'チョキ', 'パー', '戦わない']
face = ['上', '下', '左', '右']
my_hand_value = ''
my_hand = ''
my_face_value = ''
my_face = ''
pair_hand_value = ''
pair_face_value = ''
drow_count = 0
rand_hand = rand(0..2)
rand_face = rand(0..3)
my_win_count = 0
my_lose_count = 0

# 3点先取
while ((my_win_count <= 2) && (my_lose_count <= 2)) do

puts "じゃんけん．．．\n0(グー)1(チョキ)2(パー)3(戦わない)"

my_hand_value = ''
pair_hand_value = ''

    while my_hand_value == pair_hand_value do

        if drow_count >= 1
            puts "あいこで．．．"
        end

        my_hand = gets.chomp

        while my_hand.to_i >= 4 do
            puts "無効な入力!!\n0(グー)1(チョキ)2(パー)3(戦わない)"
            my_hand = gets.chomp
        end

        if my_hand.to_i == 3
            puts '終了します'
            exit
        end

        my_hand_value = hand[my_hand.to_i]
        pair_hand_value = hand[rand(0..2)]

        puts "ホイ！\n--------------\nあなた：#{my_hand_value}を出しました"
        puts "相手：#{pair_hand_value}を出しました\n--------------"

        if my_hand_value == pair_hand_value
            drow_count += 1
        end

    end

    drow_count = 0

    my_face_value = ''
    pair_face_value = ''

    puts "あっちむいて〜\n0(上)1(下)2(左)3(右)"

    my_face = gets.chomp

    while my_face.to_i >= 4 do
        puts "無効な入力!!\n0(上)1(下)2(左)3(右)"
        my_face = gets.chomp
    end

    my_face_value = face[my_face.to_i]
    pair_face_value = face[rand(0..3)]

    puts "ホイ！\n--------------\nあなた：#{my_face_value}"
    puts "相手：#{pair_face_value}\n--------------"

    if
         (my_hand_value == 'グー' && pair_hand_value == 'チョキ') && (my_face_value == pair_face_value) ||
         (my_hand_value == 'チョキ' && pair_hand_value == 'パー') && (my_face_value == pair_face_value) ||
         (my_hand_value == 'パー' && pair_hand_value == 'グー') && (my_face_value == pair_face_value)

            my_win_count += 1
    elsif
         (my_hand_value == 'グー' && pair_hand_value == 'パー') && (my_face_value == pair_face_value) ||
         (my_hand_value == 'チョキ' && pair_hand_value == 'グー') && (my_face_value == pair_face_value) ||
         (my_hand_value == 'パー' && pair_hand_value == 'チョキ') && (my_face_value == pair_face_value)

            my_lose_count += 1
    end

    puts "あなた：#{my_win_count}\n相手：#{my_lose_count}"

end

if my_win_count > my_lose_count
    puts "あなたの勝ち"
else
    puts "負け"
end