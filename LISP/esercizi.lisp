; lista con ultimo elemento di una lista
;;  ultimo
; (ultimo '(a b c))
; (C)
(defun ultimo (list)
  (if (null (rest list))
      (first list)
      (ultimo (rest list))))

; lista con ultimi due elementi di una lista
; (se esistono)
;;  penultimo
; (penultimo '(a b c))
; (B C)
(defun penultimo (list)
  (if (null (third list))
      (first list)
      (penultimo (rest list))))

; k-esimo elemento di una lista
; (con errore)
;;  kesimo
; (kesimo '(a b c d) 3)
; C
; (kesimo '(a b c d) 5)
(defun kElem (n list)
  (if (= n 0)
      (first list)
      (kElem (- n 1) (rest list))))


; numero di elementi in una lista
;;  numero
(defun lung (list)
  (if (null list)
      0
      (+ 1 (lung (cdr list)))))

; sottolista con ultimi k elementi
;;  ultimik
(defun ultimik (k list)
  (if (< (- (lung list) k) 0)
      list
      (ultimik (+ k 1) (rest list))))

; invertire una lista
;;  inverso
(defun inverso (list)
  (if (null (rest list))
      (list (first list))
      (append (inverso (rest list)) (list (first list)))))

; appiatisce una struttura di liste anidate
;; piato
; (piato '(a (b c) (d e)))
; (A B C D E)

(defun piato (list)
  (if (null list)
      (list)
      (if (atom (first list))
		(append (list(first list)) (piato (rest list)))
		(append (piato(first list)) (piato (rest list))))))

; applica una funzione soltanto se la lista
; ha lunghezza >= k (altrimenti nil)
;;  applica_se_k
; (applica_se_k 'ultimo '(a b c) 4)
; NIL
; (applica_se_k 'penultimo '(a b c d) 4)
; (C D)

(defun app (function L k)
  (cond ((> k (lung L)) 1)
	(T (apply function (list L)))))

; applica una funzione alla lista inversa
;;  applica_inv
; (applica_inv 'ultimo '(a b c))
; (A)

(defun app_inv (function L)
  (apply function (list (inverso  L))))




