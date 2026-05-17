# change the date when updating the table 
tbl_update_date <- "2025-06-20"

# tie summary table for inputting new ties
ties_input_df <- tibble::tribble(
                                 ~name,                        ~no_ties, ~no_steps, ~no_loop_thrus, ~shaping_difficulty, ~fold_in_half, ~end_tied_with,  ~url,
                                 "saiyan",                     1,        9,         1,              4,                   "N",           "little",        "https://www.youtube.com/watch?v=dhOZPKi6iZA",
                                 "petal",                      1,        5,         1,              3,                   "Y",           "little",        "https://www.youtube.com/watch?v=Df7vjWFnMQ0",
                                 "sceldredge",                 1,        6,         2,              1,                   "N",           "little",        "https://pin.it/6aboSLdVd",
                                 "geisha",                     1,        4,         4,              2,                   "Y",           "little",        "https://www.youtube.com/watch?v=2kglHOrAJds",
                                 "trooper",                    1,        6,         4,              1,                   "Y",           "little",        "https://www.youtube.com/watch?v=wXYv0z_M4Gk",
                                 "agape",                      1,        5,         2,              2,                   "N",           "little",        "https://www.youtube.com/watch?v=46KL020MLDY",
                                 "bermuda_triangle",           1,        4,         2,              1,                   "Y",           "little",        "https://www.youtube.com/watch?v=xSh2c5NcbZ8",
                                 "fire_flower",                1,        7,         0,              2,                   "N",           "little",        "https://www.youtube.com/watch?v=zy3gtdbpaJs",
                                 "radikal",                    1,        5,         2,              3,                   "Y",           "little",        "https://www.youtube.com/watch?v=MFTwivxtFC8",
                                 "captive",                    1,        5,         0,              1,                   "Y",           "little",        "https://www.youtube.com/watch?v=dprsvaGa4Co",
                                 "omega",                      1,        6,         2,              2,                   "Y",           "little",        "https://www.youtube.com/watch?v=jfx_GJEAMiY",
                                 "elli's_waterfall",           1,        5,         5,              3,                   "N",           "little",        "https://www.youtube.com/watch?v=GhhAbppqaMk",
                                 "loki",                       1,        5,         1,              3,                   "Y",           "little",        "https://www.pinterest.nz/pin/307089268350571649/",
                                 "riptide",                    1,        5,         2,              1,                   "N",           "little",        "https://www.youtube.com/watch?v=D0GG_DhRPWs",
                                 "liquid",                     1,        5,         0,              1,                   "N",           "little",        "https://www.youtube.com/watch?v=ES6Ki9FhyGo",
                                 'woopigsooie',                1,        5,         0,              4,                   "N",           "little",        "https://www.youtube.com/watch?v=arRW6isud88",
                                 "haddon",                     1,        5,         3,              2,                   "Y",           "little",        "https://www.youtube.com/watch?v=JSU8j8n48HI",
                                 "emblem",                     1,        5,         3,              2,                   "Y",           'little',        "https://www.youtube.com/watch?v=0MyCdOWCBqs",
                                 "fidget_spinner",             1,        5,         4,              4,                   "Y",           "little",        "https://www.youtube.com/watch?v=DP4nlO4l9fA",
                                 "lantern",                    1,        5,         2,              5,                   "Y",           "little",        "https://www.youtube.com/watch?v=5J2vi0L1Q4o",
                                 "nomad",                      1,        5,         6,              3,                   "Y",           "little",        "https://www.youtube.com/watch?v=TAs_D31rBTM",
                                 'parcel',                     1,        4,         2,              1,                   "Y",           "little",        "https://www.youtube.com/watch?v=AV8ESQzKF4o",
                                 "bow_tie_bonney_cross",       1,        4,         1,              2,                   "N",           "little",        "https://www.youtube.com/watch?v=KBcilqNjjEc",
                                 "turban",                     1,        7,         3,              3,                   "Y",           "little",        "https://www.youtube.com/watch?v=m6KywF7c_6c",
                                 "classic",                    1,        5,         3,              1,                   "N",           "little",        "https://www.pinterest.nz/pin/307089268349364251/",
                                 "traverse",                   1,        3,         2,              1,                   "Y",           "little",        "https://www.youtube.com/watch?v=HjDR5fU2EEM",
                                 "helix",                      1,        4,         2,              5,                   "Y",           "little",        "https://www.youtube.com/watch?v=EwYqRAgOIpA",
                                 "cobra",                      1,        4,         1,              1,                   "N",           "big",           "https://youtu.be/bkkNz-ai_4I?t=194",
                                 "butterfly",                  1,        8,         7,              1,                   "Y",           "little",        "https://youtu.be/bkkNz-ai_4I?t=669",
                                 "serpentine",                 1,        4,         3,              2,                   "Y",           "little",        "https://www.youtube.com/watch?v=q5OOZ9flH_k",   
                                 "platypus",                   1,        5,         2,              1,                   "N",           "little",        "https://www.youtube.com/watch?v=b4uKLduH9XU",
                                 "mantis",                     1,        3,         0,              2,                   "Y",           "little",        "https://www.youtube.com/watch?v=cfUAGsFaIt0",
                                 "baby_elephant",              1,        5,         2,              1,                   "N",           "little",        "https://www.youtube.com/watch?v=DZU6Iv_mwdg",  
                                 "elephant",                   1,        6,         2,              1,                   "N",           "little",        "https://www.youtube.com/watch?v=mwsf1hvYafg",
                                 "mammoth",                    1,        5,         0,              2,                   "Y",           "little",        "https://www.youtube.com/watch?v=mssB7pusLT8",
                                 "viper",                      1,        6,         0,              1,                   "N",           "little",        "https://www.youtube.com/watch?v=6_J77a5TedQ",
                                 "edison",                     1,        5,         2,              1,                   "Y",           "little",        "https://www.youtube.com/watch?v=mq9r0IGQ3SQ",
                                 "lily",                       1,        5,         1,              1,                   "Y",           "little",        "https://www.pinterest.nz/pin/307089268345462377/",
                                 "fibonacci",                  1,        6,         4,              1,                   "Y",           "little",        "https://www.youtube.com/watch?v=JiNksSWvm2g",
                                 "fusion",                     1,        4,         2,              1,                   "N",           "little",        "https://www.youtube.com/watch?v=aefkk3Hxl4c",
                                 "atomic",                     1,        4,         2,              4,                   "N",           "little",        "https://www.youtube.com/watch?v=ZZT1vXQfHUA",
                                 "nuclear",                    1,        5,         5,              2,                   "Y",           "little",        "https://www.youtube.com/watch?v=-7UoBjKQ4Dk",
                                 "pumpkin",                    1,        6,         3,              1,                   "Y",           "little",        "https://www.youtube.com/watch?v=pedx7iFho_Q",
                                 "vortex",                     1,        7,         0,              1,                   "N",           "little",        "https://www.youtube.com/watch?v=SU156Kqs108",
                                 "tiephoon",                   1,        7,         0,              2,                   "Y",           "little",        "https://www.youtube.com/watch?v=whqtF9Y6zRo",
                                 "cyclone",                    1,        4,         4,              1,                   "N",           "little",        "https://www.youtube.com/watch?v=I_-kkuascXk",
                                 "tornado",                    1,        7,         0,              3,                   "N",           "little",        "https://www.youtube.com/watch?v=KgfHW6-vevM",
                                 "hurricane",                  1,        5,         4,              1,                   "Y",           "little",        "https://www.youtube.com/watch?v=8puIctlO1j0",
                                 "romeo_and_juliet",           2,        7,         2,              4,                   "N",           "little",        "https://www.youtube.com/watch?v=eQmsYCISGrI",
                                 "celestial",                  1,        5,         0,              1,                   "N",           "little",        "https://www.youtube.com/watch?v=wm_bgjakWpY",
                                 "astro",                      1,        8,         2,              1,                   "N",           "little",        "https://www.youtube.com/watch?v=ZrfDjcjttLk",    
                                 "double_trinity2",            1,        7,         6,              1,                   "N",           "little",         NA,
                                 "supernova",                  1,        3,         1,              1,                   "Y",           "little",         NA,
                                 "cosmo",                      1,        6,         1,              1,                   "N",           "little",        "https://www.youtube.com/watch?v=whxZ9j3rTgk",
                                 "nebula",                     1,        5,         0,              2,                   "N",           "little",        "https://www.pinterest.nz/pin/307089268346094084/",
                                 "eclipse",                    1,        4,         1,              2,                   "Y",           "little",        "https://www.youtube.com/watch?v=IhbSTCJLJzU",
                                 "shuttle",                    1,        6,         3,              5,                   "Y",           "little",        "https://www.youtube.com/watch?v=Cb7wP8rWvnI",
                                 "singularity",                1,        4,         1,              2,                   "N",           "little",        "https://www.youtube.com/watch?v=1sBpxlEZ8wo",
                                 "saturn",                     1,        5,         1,              2,                   "Y",           "little",        "https://www.youtube.com/watch?v=LKzvTVtfPTU",  
                                 "conch",                      1,        6,         1,              3,                   "N",           "little",        "https://www.youtube.com/watch?v=UQYT-oGdpf4",
                                 "pentanity",                  1,        6,         3,              2,                   "N",           "little",        "https://www.pinterest.nz/pin/307089268345474557/",
                                 "caped_eldredge",             1,        7,         4,              3,                   "Y",           "big",           "https://www.youtube.com/watch?v=6X3DdiKq-jc",
                                 "double_trinity_eldredge",    2,        7,         7,              1,                   "N",           "little",         NA,
                                 "double_intrinity",           2,        5,         4,              2,                   "Y",           "little",        "https://www.youtube.com/watch?v=G11Be_KRWr8",
                                 "water",                      1,        4,         2,              1,                   "Y",           "little",        "https://www.pinterest.nz/pin/307089268345462379/",
                                 "intrinity",                  1,        4,         4,              2,                   "Y",           "little",        "https://www.youtube.com/watch?v=38uEMP_jEkg",
                                 "double_eldredge",            2,        6,         3,              3,                   "N",           "little",        "https://www.youtube.com/watch?v=jLYWJX4779A",
                                 "double_trinity",             1,        6,         6,              1,                   "N",           "little",        "https://www.youtube.com/watch?v=6-0FdqYjv6s",
                                 "eldredge",                   1,        6,         0,              1,                   "N",           "little",        "https://www.youtube.com/watch?v=FXyWSAmwVZ4",
                                 "eldredge2",                  1,        6,         2,              2,                   "N",           "little",        "https://www.youtube.com/watch?v=FukqiewJuPw",
                                 "trinity_eldredge",           1,        5,         2,              1,                   "N",           "little",        "https://www.youtube.com/watch?v=Ls_MgWrTVrk",
                                 "trinity",                    1,        4,         2,              2,                   "N",           "little",        "https://www.youtube.com/watch?v=IX_GixAhXeY",
                                 "rosebud1",                   1,        6,         1,              2,                   "Y",           "little",        "https://www.youtube.com/watch?v=s-S1WSFTpuU",
                                 "rosebud2",                   1,        4,         0,              2,                   "N",           "little",        "https://www.youtube.com/watch?v=-diYX2FH_AE",
                                 "vidalia",                    1,        5,         3,              2,                   "N",           "little",        "https://www.youtube.com/watch?v=ENYCWzrB9d8",
                                 "valentine",                  1,        5,         1,              3,                   "Y",           "little",        "https://www.youtube.com/watch?v=XwvNQYIZnSI",
                                 "sweetheart",                 1,        4,         3,              4,                   "Y",           "little",        "https://www.youtube.com/watch?v=nfoqEexLghI",
                                 "romance",                    1,        5,         5,              2,                   "Y",           "little",        "https://www.youtube.com/watch?v=XdRsQ3KuTqM",
                                 "cupid",                      1,        3,         1,              5,                   "N",           "both",          "https://www.youtube.com/watch?v=VWfEccMG_HI",
                                 "vampire",                    1,        5,         0,              1,                   "Y",           "little",        "https://www.youtube.com/watch?v=wFTkThHwagI",
                                 "embrace",                    1,        3,         3,              2,                   "Y",           "little",        "https://www.youtube.com/watch?v=mwfLpoyqeKE",
                                 "deivao_twist",               1,        6,         3,              1,                   "N",           "little",        "https://www.youtube.com/watch?v=mCANkZKtES4"
                   )

# tie column definitions
base_tie_rating_tbl <- tibble::tribble(~shaping_diff, ~base,
                                        1,             1,
                                        2,             1.5,
                                        3,             2,
                                        4,             2.6,
                                        5,             3.2,
                                        6,             3.4,
                                        7,             3.6,
                                        8,             3.8)

no_steps_mult_tbl <- tibble::tribble(~no_steps, ~mult,
                                     1,         1,
                                     2,         1,
                                     3,         1,
                                     4,         1.3,
                                     5,         1.3,
                                     6,         1.3,
                                     7,         1.5,
                                     8,         1.5,
                                     9,         1.5,
                                     10,        1.5)

no_loops_mult_tbl <- tibble::tribble(~no_loops,  ~mult,
                                     0,          1,
                                     1,          1.1,
                                     2,          1.2,
                                     3,          1.3,
                                     4,          1.5,
                                     5,          1.6,
                                     6,          1.7,
                                     7,          1.8,
                                     8,          1.9,
                                     9,          2.0,
                                     10,         2.1)

no_ties_mult_tbl <- tibble::tribble(~no_ties, ~mult,
                                    1,         1,
                                    2,         1.2)

fold_in_half_mult_tbl <- tibble::tribble(~fold_in_half, ~mult,
                                         "N",         1,
                                         "Y",         1.3)

end_tied_mult_tbl <- tibble::tribble(~end_tied, ~mult,
                                     "little",  1,
                                     "big",     1.5,
                                     "both",    1.5)

# tie summary data table configured for the main page
ties_data <- ties_input_df  %>% 
  mutate(img_id = row_number(),
         close_id = img_id - 1,
         image = paste0('<img id="myImg', img_id, '" src="/img/', name, '.jpg"> <div id="myModal', img_id, '" class="modal"> <span class="close">&times;</span> <img class="modal-content" id="img', img_id,'"> <div id="caption"></div>
</div> <script>
// Get the modal
var modal = document.getElementById("myModal', img_id, '");

// Get the image and insert it inside the modal
var img = document.getElementById("myImg', img_id,'");
var modalImg = document.getElementById("img', img_id, '");
var captionText = document.getElementById("caption");
img.onclick = function(){
  modal.style.display = "block";
  modalImg.src = this.src;
}
// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[', close_id, '];

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}
</script>'),
         name = case_when(!is.na(url) ~ paste0("<a href='", url, "'target='_blank'>", name, "</a>"),
                          TRUE ~ name)
         ) %>% 
  select(-url, -img_id, -close_id) %>% 
  mutate(overall_difficulty = pmap(list(shaping_difficulty, no_ties, no_steps, fold_in_half, no_loop_thrus, end_tied_with), tie_overalldiff_calc)) %>% 
  unnest(overall_difficulty) %>% 
  mutate(overall_difficulty = round(10 * overall_difficulty/max(overall_difficulty), digits = 2)) %>%
  select(name, overall_difficulty, image)

# detailed time summary data table
ties_detailed_tbl <- ties_input_df  %>% 
  mutate(
    # FIXED: Added width="120" directly inside the HTML tag to force containment
    image = paste0('<img src="/img/', name, '.jpg" width="120"></img>'),
    
    # BONUS: Ensured a space before target='_blank' so it renders correctly in browsers
    name = case_when(!is.na(url) ~ paste0("<a href='", url, "' target='_blank'>", name, "</a>"),
                     TRUE ~ name)
  ) %>% 
  mutate(overall_difficulty = pmap(list(shaping_difficulty, no_ties, no_steps, fold_in_half, no_loop_thrus, end_tied_with), tie_overalldiff_calc)) %>% 
  unnest(overall_difficulty) %>% 
  mutate(overall_difficulty = round(10 * overall_difficulty/max(overall_difficulty), digits = 2)) %>%
  select(name, overall_difficulty, shaping_difficulty, no_ties, no_steps, no_loop_thrus, fold_in_half, end_tied_with, image)
