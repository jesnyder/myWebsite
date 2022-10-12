DEFAULT_GOAL: web

.PHONY: getreqs
getreqs:
	sudo apt-get clean
	# sudo apt install texlive-latex-base
	pip install --upgrade -r reqs.txt


.PHONY: pythonanalysis
pythonanalysis:
	python3  user_provided/python/main.py


.PHONY: web
web:  pythonanalysis
	#git add .
	#git commit -m "added content"
	#git push
	python3 -m http.server
	# python3 -mwebbrowser http://127.0.0.1:8000/report.pdf
