;; theme-on-time
(defun theme-on-time ()
  "Switches the theme according to time of day."
  (let ((ct (caddr (decode-time))))
    (cond ((and (> ct 0) (< ct 6)) (load-theme 'sanityinc-tomorrow-blue t))
	  ((and (> ct 6) (< ct 12)) (load-theme 'sanityinc-tomorrow-day t))
	  ((and (> ct 12) (< ct 18)) (load-theme 'sanityinc-tomorrow-bright t))
	  ((and (> ct 18) (< ct 24)) (load-theme 'sanityinc-tomorrow-night t)))))
