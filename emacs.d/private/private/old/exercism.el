(defun submit-exercism ()
  (interactive)
  (when (y-or-n-p "(Exercism) Submit this file?")
    (when (and (buffer-modified-p)
               (y-or-n-p (format "Buffer %s modified, save?" (current-buffer))))
      (save-buffer))
    (shell-command (format "exercism s %s"
                           (buffer-file-name)))))
