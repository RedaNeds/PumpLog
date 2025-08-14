CREATE TABLE exercise (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  aliases TEXT,
  muscles_primary TEXT NOT NULL,
  muscles_secondary TEXT,
  region TEXT,
  equipment TEXT,
  type TEXT,
  stability TEXT,
  image_name TEXT,
  notes TEXT,
  is_custom INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE workout (
  id TEXT PRIMARY KEY,
  started_at REAL NOT NULL,
  ended_at REAL,
  status TEXT NOT NULL,
  notes TEXT
);

CREATE TABLE workout_item (
  id TEXT PRIMARY KEY,
  workout_id TEXT NOT NULL REFERENCES workout(id) ON DELETE CASCADE,
  exercise_id TEXT NOT NULL REFERENCES exercise(id),
  ord INTEGER NOT NULL,
  targets TEXT NOT NULL,
  warmup_scheme TEXT,
  superset_key TEXT
);

CREATE TABLE set_entry (
  id TEXT PRIMARY KEY,
  workout_item_id TEXT NOT NULL REFERENCES workout_item(id) ON DELETE CASCADE,
  idx INTEGER NOT NULL,
  reps INTEGER NOT NULL CHECK (reps >= 0 AND reps <= 50),
  load REAL NOT NULL CHECK (load >= 0),
  rpe REAL,
  is_warmup INTEGER NOT NULL DEFAULT 0,
  notes TEXT,
  duration_sec INTEGER
);

CREATE INDEX idx_set_entry_item_idx ON set_entry(workout_item_id, idx);
CREATE INDEX idx_workout_started ON workout(started_at);
CREATE INDEX idx_exercise_name ON exercise(name);
