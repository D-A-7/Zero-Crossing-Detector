module SR_Latch_ZCD (S, R, Q, Qbar);
  input S, R;
  output Q, Qbar;
  
  nor nor1 (Q, S, Qbar);     // ← FIXED: Feedback from Qbar
  nor nor2 (Qbar, R, Q);     // ← FIXED: Feedback from Q
endmodule