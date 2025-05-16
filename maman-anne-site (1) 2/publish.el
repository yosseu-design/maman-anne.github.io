
(require 'org)
(require 'ox-publish)

(setq org-publish-project-alist
      '(("maman-anne-org"
         :base-directory "./org"
         :publishing-directory "./output"
         :recursive t
         :with-toc nil
         :section-numbers nil
         :html-head "<link rel=\"stylesheet\" href=\"../css/style.css\" />"
         :publishing-function org-html-publish-to-html)

        ("maman-anne-static"
         :base-directory "./"
         :base-extension "css\\|jpg\\|png\\|gif\\|ico"
         :publishing-directory "./output"
         :recursive t
         :publishing-function org-publish-attachment)

        ("maman-anne" :components ("maman-anne-org" "maman-anne-static"))))
