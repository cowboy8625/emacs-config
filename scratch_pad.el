(require 'posframe)

(defun show-floating-tooltip (text)
  "Show a floating tooltip with the given text."
  (posframe-show
   "*tooltip*"
   :string text
   :position (point)
   :height 10
   :background-color "lightyellow"
   :internal-border-width 2
   :left-fringe 5
   :right-fringe 5
   :font "Courier"))

(defun hide-floating-tooltip ()
  "Hide the floating tooltip."
  (posframe-delete "*tooltip*"))

(defun my-tooltip-function ()
  "Function to display a tooltip."
  (interactive)
  (let ((tooltip-text "This is a floating tooltip"))
    (show-floating-tooltip tooltip-text)
    (run-at-time "2 sec" nil #'hide-floating-tooltip)))

(global-set-key (kbd "<f1>") #'my-tooltip-function)
