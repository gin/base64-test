## Base64 test

### Goal
Investigate why resulting base64 hash from Equious and gin is different when using the same SVG:  
https://github.com/Cyfrin/Updraft/pull/236

### Assumptions
Equious's written lesson commit was on 2024-08-07 ([commit 96cae9a](https://github.com/Cyfrin/Updraft/commits/main/courses/advanced-foundry/2-how-to-create-an-NFT-collection/15-svg-deploy)).  
This suggests OpenZeppelin v5.0.2 (released on 2024-02-29).

```bash
forge install OpenZeppelin/openzeppelin-contracts@v5.0.2 --no-commit
```

gin used a version that came after OpenZepplin's [Base64 bug fix that was on 2024-09-03](https://github.com/OpenZeppelin/openzeppelin-contracts/pull/5176/files):  

```bash
forge install OpenZeppelin/openzeppelin-contracts@v5.1.0 --no-commit
```

### Experiment
Run test to see if there's a difference in the base64 hash
```bash
forge test -vvv
```

### Result
The following versions all returns the same base64 hash:
v5.1.0  
v5.0.2  
v4.9.0  
v4.8.0  
v4.5.0  

### Conclusion
No idea why the resulting base64 hash from Equious and gin is different yet.
