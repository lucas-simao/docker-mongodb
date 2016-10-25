# lucassimao/mongodb:3.2

## To run this image, you need create folder's, here is store you data:
- /volume/db

```bash
docker run -it --name mongodb -v /volume/db/:/data/db lucassimao/mongodb:3.2 /bin/bash
```
