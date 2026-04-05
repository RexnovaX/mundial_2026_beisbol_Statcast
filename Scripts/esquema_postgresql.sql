-- 1. Tabla de Rosters (Información biográfica y equipos)
CREATE TABLE rosters (
    name VARCHAR(100),
    country CHAR(3),
    pool VARCHAR(50),
    position VARCHAR(10),
    team VARCHAR(100),
    on_40_man BOOLEAN,
    role VARCHAR(10) -- 'batter' o 'pitcher'
);

-- 2. Resumen de Bateadores (Métricas agregadas)
CREATE TABLE batter_summary (
    mlbam_id INTEGER PRIMARY KEY,
    player_name VARCHAR(100),
    country CHAR(3),
    PA INTEGER,
    AB INTEGER,
    H INTEGER,
    "1B" INTEGER,
    "2B" INTEGER,
    "3B" INTEGER,
    HR INTEGER,
    BB INTEGER,
    HBP INTEGER,
    K INTEGER,
    TB INTEGER,
    AVG DECIMAL(5,3),
    OBP DECIMAL(5,3),
    SLG DECIMAL(5,3),
    OPS DECIMAL(5,3),
    K_pct DECIMAL(5,2),
    BB_pct DECIMAL(5,2),
    xwOBA DECIMAL(5,3),
    avg_exit_velo DECIMAL(5,2),
    avg_launch_angle DECIMAL(5,2)
);

-- 3. Resumen de Lanzadores (Métricas agregadas)
CREATE TABLE pitcher_summary (
    mlbam_id INTEGER PRIMARY KEY,
    player_name VARCHAR(100),
    country CHAR(3),
    total_pitches INTEGER,
    PA_faced INTEGER,
    K INTEGER,
    BB INTEGER,
    HR_allowed INTEGER,
    H_allowed INTEGER,
    opp_AVG DECIMAL(5,3),
    opp_SLG DECIMAL(5,3),
    K_pct DECIMAL(5,2),
    BB_pct DECIMAL(5,2),
    xwOBA_against DECIMAL(5,3),
    avg_velo DECIMAL(5,2),
    avg_spin_rate DECIMAL(7,2),
    pitch_type_count INTEGER,
    primary_pitch CHAR(2)
);

-- 4. Estadios (Coordenadas para mapas de calor/spray charts)
CREATE TABLE stadiums (
    team VARCHAR(50),
    x DECIMAL(10,7),
    y DECIMAL(10,7),
    segment VARCHAR(50),
    name VARCHAR(100),
    location VARCHAR(100)
);

-- 5. Statcast Batters (Detalle de cada pitcheo recibido por bateadores)
CREATE TABLE statcast_batters (
    batter INTEGER,
    player_name VARCHAR(100),
    game_date DATE,
    pitch_type CHAR(2),
    plate_x DECIMAL(10,7),
    plate_z DECIMAL(10,7),
    zone NUMERIC, -- Cambiado para aceptar .0
    description TEXT,
    events TEXT,
    type CHAR(1),
    hc_x DECIMAL(10,7),
    hc_y DECIMAL(10,7),
    hit_distance_sc NUMERIC, -- Cambiado
    launch_speed DECIMAL(5,2),
    launch_angle NUMERIC, -- Cambiado
    bb_type VARCHAR(20),
    estimated_ba_using_speedangle DECIMAL(5,3),
    estimated_woba_using_speedangle DECIMAL(5,3),
    p_throws CHAR(1),
    stand CHAR(1),
    balls INTEGER,
    strikes INTEGER,
    season INTEGER,
    country CHAR(3),
    country_name VARCHAR(50)
);

-- 6. Statcast Pitchers (Detalle de cada pitcheo lanzado)
CREATE TABLE statcast_pitchers (
    pitcher INTEGER,
    player_name VARCHAR(100),
    game_date DATE,
    pitch_type CHAR(2),
    release_speed DECIMAL(5,2),
    release_spin_rate NUMERIC, -- Cambiado
    pfx_x DECIMAL(10,7),
    pfx_z DECIMAL(10,7),
    plate_x DECIMAL(10,7),
    plate_z DECIMAL(10,7),
    zone NUMERIC, -- Cambiado
    description TEXT,
    events TEXT,
    type CHAR(1),
    launch_speed DECIMAL(5,2),
    launch_angle NUMERIC, -- Cambiado
    estimated_ba_using_speedangle DECIMAL(5,3),
    estimated_woba_using_speedangle DECIMAL(5,3),
    p_throws CHAR(1),
    stand CHAR(1),
    balls INTEGER,
    strikes INTEGER,
    bb_type VARCHAR(20),
    release_extension DECIMAL(5,2),
    spin_axis NUMERIC, -- Cambiado
    season INTEGER,
    country CHAR(3),
    country_name VARCHAR(50)
);

 