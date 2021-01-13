macro game_Intro(text) {
 table "tables\tbl_cutscenes.tbl"
 db {text}
}

macro gameText(text) {
 table "tables\tbl_scripts.tbl"
 db {text}
}

macro newline() {
  db NEWLINE
}

macro newpage() {
  db NEWPAGE
}

macro endstring() {
  db ENDSTRING
}

macro newspace() {
  db NEWSPACE
}

macro credit_3b() {
  db CREDIT3B
}


