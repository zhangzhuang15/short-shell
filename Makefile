shell=/bin/zsh
c=""

help:
	@echo "                                ________"
	@echo "                               |        |"
	@echo "                               | >shell |"
	@echo "   ####   #   #   ##     ####  |________|  " 
	@echo "  #      #   #  #   #   #   #  ###########"
	@echo "  ####  #####  #    #  ####        #  "
	@echo "    #  #   #   #   #  #  #        #  "
	@echo "####  #   #     ##   #    #      #   "
	@echo "                                #     "
	@echo ""
	@echo "–––––––––––––––––––––––––––––––––––––––––––––––––––––––"
	@echo "params       |               含义"
	@echo "–––––––––––––––––––––––––––––––––––––––––––––––––––––––"
	@echo " c           |             文件夹编号"
	@echo "             |"
	@echo " shell       |    指定shell脚本解释器，默认值 /bin/zsh"
	@echo "–––––––––––––––––––––––––––––––––––––––––––––––––––––––"
	@echo ""
	@echo ""
	@echo "for example👀"
	@echo ""
	@echo "make run c=0"
	@echo "    执行0-notes/shell_notes.sh"
	@echo ""
	@echo "make run c=1 shell=/bin/bash"
	@echo "    使用/bin/bash执行1-variable/shell_variable.sh"
	@echo ""

run: 
	@if [[ -z ${c} ]]; then \
	  echo "Welcome to Short Shell"; \
	  echo "please run: "\
	  echo "        make help" \
	  echo "            or" \
	  echo "        make" \
	  echo "get more information" \
	else \
	  dir=${shell ls | grep ^${c}-}; \
	  theme=$${dir#*-}; \
	  if [[ ${c} == 13 ]]; then \
	    ${shell} "$${dir}/shell_$${theme}.sh" -p 81 --name husky; \
	  else \
	    ${shell} "$${dir}/shell_$${theme}.sh"; \
	  fi \
	fi