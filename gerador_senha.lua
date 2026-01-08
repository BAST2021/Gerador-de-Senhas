os.execute("chcp 65001")
os.execute('cls')

local letters_MA = {"A","B","C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z" }
local letters_MI = {"a" ,"b", "c", "d","e","f", "g","i", "j", "k", "l", "m", "n","o", "p", "q", "r", "s","t","u","v","w", "x", "y","z"}
local numbers = {"1","2","3","4","5","6","7","8","9","0"}
local special = {"#","$","&","!","*","@","|","/"}

local caracterLists = {
    letters_MA,
    letters_MI,
    numbers,
    special
}

print("Quantos caratecteres deseja na senha : ")
local length = io.read("*n")
local password = ""

for i = 1, length, 1 do

    --pega a lista
    local listIndex =  math.random(#caracterLists)
    local list = caracterLists[listIndex]

    --pergar o caracter 
    local caracterIndex = math.random(#list)
    local char = list[caracterIndex]

    password =  password..char
    
end

print("Sua Senha é :  ")
print(password)

