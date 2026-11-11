# Exp 3 - CI with GitHub Actions

Terminal in THIS folder.

```bash
pytest                                         # test locally: 1 passed

git init -b main
git add .
git commit -m "init lab"
# Create an EMPTY repo named python-ci-lab on github.com, then:
git remote add origin https://github.com/<username>/python-ci-lab.git
git push -u origin main
```

1. Docker Hub > Account Settings > Personal access tokens > Generate (Read & Write). Copy it.
2. GitHub repo > Settings > Secrets and variables > Actions > New repository secret:
   - `DOCKERHUB_USERNAME` = your Docker Hub username
   - `DOCKERHUB_TOKEN` = the token
3. Actions tab > open the run > Re-run all jobs. All steps turn green.
4. Check Docker Hub: the image `python-ci-lab` is there.

To see the quality gate work: change `a + b` to `a - b` in app.py, commit and push. The `pytest` step fails and nothing is pushed.
