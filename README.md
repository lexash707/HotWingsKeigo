# Install dependencies

```smalltalk
Metacello new
 baseline:'Seaside3';
 repository: 'github://SeasideSt/Seaside:master/repository';
 load
```

```smalltalk
Metacello new
  configuration:'Bootstrap';
  repository: 'github://astares/Seaside-Bootstrap:master/src';
  version: #stable;
  load
```

# Setup endpoints

Go to `http://localhost:8080/config`.

Click `Add` with name: `FoodApp` and type: `Application`.
When new window opens, scroll to `Root Class` and choose `WAFoodAppRoot`.

Click `Add` with name: `FoodReceipt` and type: `Application`.
When new window opens, scroll to `Root Class` and choose `WAFoodReceiptRoot`.

