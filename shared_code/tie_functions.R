tie_overalldiff_calc <- function(shaping_diff, no_ties, no_steps, fold_in_half, no_loops, end_tied) {
  
  no_ties_mult <- no_ties %>% 
    enframe(name = NULL, value = "no_ties") %>% 
    left_join(no_ties_mult_tbl, by = "no_ties") %>% 
    pull(mult)
  
  fold_in_half_mult <- fold_in_half %>% 
    enframe(name = NULL, value = "fold_in_half") %>% 
    left_join(fold_in_half_mult_tbl, by = "fold_in_half") %>% 
    pull(mult)
  
  end_tied_mult <- end_tied %>% 
    enframe(name = NULL, value = "end_tied") %>% 
    left_join(end_tied_mult_tbl, by = "end_tied") %>% 
    pull(mult)
  
  no_steps_mult <- no_steps %>% 
    enframe(name = NULL, value = "no_steps") %>% 
    left_join(no_steps_mult_tbl, by = "no_steps") %>% 
    pull(mult)
  
  no_loops_mult <- no_loops %>% 
    enframe(name = NULL, value = "no_loops") %>% 
    left_join(no_loops_mult_tbl, by = "no_loops") %>% 
    pull(mult)
  
  base <- shaping_diff %>% 
    enframe(name = NULL, value = "shaping_diff") %>% 
    left_join(base_tie_rating_tbl, by = "shaping_diff") %>% 
    pull(base)
  
  overall_diff <- base * no_ties_mult * fold_in_half_mult * end_tied_mult  * no_steps_mult  * no_loops_mult
  
}