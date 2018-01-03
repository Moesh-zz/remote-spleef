function remote_spleef:player/register if @a[tag=!Register]

function remote_spleef:player/flag_dead_players
function remote_spleef:player/apply_effects if @a[tag=ApplyEffects]
function remote_spleef:player/refill_hunger_when_low

function remote_spleef:game_start_check/check_for_team_join

function remote_spleef:testfor_start_game_conditions if @a[score_startGame_min=1]
function remote_spleef:start_game if @e[type=area_effect_cloud,name=Main,tag=StartGame]

function remote_spleef:game_loop if @e[type=area_effect_cloud,name=Main,tag=GameInProgress]

function remote_spleef:testfor_end_game_conditions if @e[type=area_effect_cloud,name=Main,tag=GameInProgress]
function remote_spleef:end_game if @e[type=area_effect_cloud,name=Main,tag=EndGame]