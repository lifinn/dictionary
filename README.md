# Dictionary

Dictionary is built to search collins dictionary and the origin of the word quickly. It also offers additional features to store the word searched before and extracts the recent examples on the web from Merriam-Webster.
1.  Pull the image and mount config and credentials for DynamoDB
```bash
docker run -d --name dict -v $HOME/.aws:/root/.aws finnli/dict:[latest tag]
```
2. Enter the application
```bash
docker exec -it dict sh
```
3. Query the words
```bash
d [word] # retrieve explanations from collins and origin, store the data to DynamoDB
d [word] [--d{elete}] # delete the word from DynamoDB 
d [word] [--e{xample}] # retrieve examples from Merriam-Webster, but don't store the data
```