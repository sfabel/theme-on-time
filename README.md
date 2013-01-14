theme-on-time
=============

Loads a different emacs theme depending on the time of day. Uses the Emacs 24 load-theme function. In my case, I liked
the sanityinc-tomorrow-* themes, so I used that. It should be trivial to adjust the `theme-on-time` function to
load different themes at different times of day.

Adding the following to your .emacs:

    ;; switch themes automagically
    (add-hook 'after-init-hook 'theme-on-time)
    (run-at-time "00:00am" nil 'theme-on-time)
    (run-at-time "06:00am" nil 'theme-on-time)
    (run-at-time "06:00pm" nil 'theme-on-time)
    (run-at-time "12:00pm" nil 'theme-on-time)
    
Will result in running `theme-on-time` once after the completion of the rest of the `.emacs` or `.emacs.d/init.el`.
It will also run at the times indicated; different times may make more sense for different people.
