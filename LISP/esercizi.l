; lista con ultimo elemento di una lista
;;  ultimo
; (ultimo '(a b c))
; (C)
(defun ultimo (list)
  (if (null (cdr list))
      (car list)
      (ultimo (cdr list))))

; lista con ultimi due elementi di una lista
; (se esistono)
;;  penultimo
; (penultimo '(a b c))
; (B C)


; k-esimo elemento di una lista
; (con errore)
;;  kesimo
; (kesimo '(a b c d) 3)
; C
; (kesimo '(a b c d) 5)
; 


; numero di elementi in una lista
;;  numero


; sottolista con ultimi k elementi
;;  ultimik


; invertire una lista
;;  inverso


; appiatisce una struttura di liste anidate
;; piato
; (piato '(a (b c) (d e)))
; (A B C D E)


; applica una funzione soltanto se la lista
; ha lunghezza >= k (altrimenti nil)
;;  applica_se_k
; (applica_se_k 'ultimo '(a b c) 4)
; NIL
; (applica_se_k 'penultimo '(a b c d) 4)
; (C D)


; applica una funzione alla lista inversa
;;  applica_inv
; (applica_inv 'ultimo '(a b c))
; (A)
