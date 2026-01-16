data modify storage we:selector TargetX set from entity @e[tag=we_pos2,limit=1] Pos[0]
data modify storage we:selector TargetY set from entity @e[tag=we_pos2,limit=1] Pos[1]
data modify storage we:selector TargetZ set from entity @e[tag=we_pos2,limit=1] Pos[2]
execute store result storage we:selector TargetX int 1 run data get storage we:selector TargetX
execute store result storage we:selector TargetY int 1 run data get storage we:selector TargetY
execute store result storage we:selector TargetZ int 1 run data get storage we:selector TargetZ
$data modify storage we:selector Block set value "$(block)"
function we:extra/filler with storage we:selector
