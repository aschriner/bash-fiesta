# this was a little helper script i wrote to help
# make sure I didn't lose any changes to requirements
# when reorganizing the lead-api project from one main
# module to 3 main modules

working_branch=refactor_rebased3000

# co is alias for checkout
git co $working_branch
# top level reqs
cat requirements.txt > reqs.txt
cat requirements-dev.txt >> reqs.txt
# module 1 reqs
cat lead_api/requirements.txt >> reqs.txt
cat lead_api/requirements-dev.txt >> reqs.txt
# module 2 reqs
cat core/requirements.txt >> reqs.txt
cat core/requirements-dev.txt >> reqs.txt
# module 3 reqs
cat data_build/requirements.txt >> reqs.txt
cat data_build/requirements-dev.txt >> reqs.txt

sort reqs.txt > reqs-sorted.txt

# cm is alias for checkout master
git cm
cat requirements.txt > reqs-master.txt
cat requirements-dev.txt >> reqs-master.txt

sort reqs-master.txt > reqs-master-sorted.txt

git co $working_branch # go back to where we started

# git can diff arbitrary files if you pass the --no-index flag
git diff --no-index reqs-master-sorted.txt reqs-sorted.txt
