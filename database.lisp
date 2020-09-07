;;; the following program creates a database in lisp along with macro language for querying database

(defparameter *column-names* '('name 'age 'gender))
;;create an empty record variable length based on column-names list
(defun create-record (&rest keys) 
  (let ((count 0))
    (mapcar (lambda (key) (list key (incf count))) keys)))
(defparameter *record* (apply #'create-record *column-names*))
;;print empty record
(format t "Your record is ~a ~%" *record*)

;;create a non empty record accept name value pairs
(defun create-non-empty-record (keys values) 
  (let ((count -1))
    (mapcar (lambda (key) (list key (nth (incf count) values))) keys)))

(defparameter *values* '('Ted 42 'Male))
(defparameter *record* (create-non-empty-record *column-names* *values*))
(format t "Your non empty record is ~a ~%" *newrecord*)

;; define a database

(defvar *database* nil)

;; function to push records to databsae

(defun insert-record (record) (push record *database*))

;; insert some records - will define macro langauge to make this easier

(insert-record *record*)
(insert-record *record*)
(insert-record *record*)
(insert-record *record*)
(insert-record *record*)
(insert-record *record*)
(insert-record *record*)
(insert-record *record*)

