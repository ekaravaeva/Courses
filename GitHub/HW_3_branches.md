1. На локальном репозитории сделать ветки для:
- Postman
- Jmeter
- CheckLists
- Bag Reports
- SQL
- Charles
- Mobile testing

```
git branch postman
git branch jmeter
git branch checklists
git branch bug_reports
git branch sql
git branch charles
git branch mobile_testing
```

2. Запушить все ветки на внешний репозиторий 
```
git push origin --all
```

3. В ветке Bug Reports сделать текстовый документ со структурой баг репорта 
```
git checkout bug_reports
> bug_report.txt
vim bug_report.txt
git add .
git commit -m "add bug_report"
```

4. Запушить структуру багрепорта на внешний репозиторий
```
git push -u origin bug_reports
```

5. Вмержить ветку Bag Reports в Main
```
git checkout main
git merge bug_reports
```

6. Запушить main на внешний репозиторий.
```
git push
```

7. В ветке CheckLists набросать структуру чек листа.
```
git checkout checklists
> checklists.txt
vim checklists.txt
git add .
git commit -m "checklists"
```

8. Запушить структуру на внешний репозиторий

```
git push -u origin checklists
```

9. На внешнем репозитории сделать Pull Request ветки CheckLists в main
- Create pull request
- Merge pull request
- Confirm merge

10. Синхронизировать Внешнюю и Локальную ветки Main
```
git checkout main
git pull
```