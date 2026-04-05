
pitcher_summary:
tipo de primer picheo = if('public pitcher_summary'[primary_pitch]="KC"," Curva de Nudillos",if('public pitcher_summary'[primary_pitch]="SL","Slider",if('public pitcher_summary'[primary_pitch]="CU","Curva",if('public pitcher_summary'[primary_pitch]="FC","Recta Cortada",if('public pitcher_summary'[primary_pitch]="FF","Recta de Cuatro Costuras",if('public pitcher_summary'[primary_pitch]="FS","Splitter",if('public pitcher_summary'[primary_pitch]="FA","Recta",if('public pitcher_summary'[primary_pitch]="SI","Sinker",if('public pitcher_summary'[primary_pitch]="CH"," Cambio de Velocidad",if('public pitcher_summary'[primary_pitch]="ST","Sweeper",BLANK()))))))))))

rosters:
role_espanol = if('public rosters'[role]="pitcher","Lanzador","Bateador")
Estrellas = if('public rosters'[on_40_man]=True,"Estrellas","Prospectos")