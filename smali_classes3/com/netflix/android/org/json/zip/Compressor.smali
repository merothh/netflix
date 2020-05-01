.class public Lcom/netflix/android/org/json/zip/Compressor;
.super Lcom/netflix/android/org/json/zip/JSONzip;
.source ""


# instance fields
.field final bitwriter:Lcom/netflix/android/org/json/zip/BitWriter;


# direct methods
.method public constructor <init>(Lcom/netflix/android/org/json/zip/BitWriter;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/JSONzip;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/netflix/android/org/json/zip/Compressor;->bitwriter:Lcom/netflix/android/org/json/zip/BitWriter;

    return-void
.end method

.method private static bcd(C)I
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x2b

    if-eq p0, v0, :cond_3

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_1

    const/16 p0, 0xd

    return p0

    :cond_1
    const/16 p0, 0xa

    return p0

    :cond_2
    const/16 p0, 0xb

    return p0

    :cond_3
    const/16 p0, 0xc

    return p0
.end method

.method private one()V
    .locals 1

    const/4 v0, 0x1

    .line 116
    invoke-direct {p0, v0, v0}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    return-void
.end method

.method private write(II)V
    .locals 1

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Compressor;->bitwriter:Lcom/netflix/android/org/json/zip/BitWriter;

    invoke-interface {v0, p1, p2}, Lcom/netflix/android/org/json/zip/BitWriter;->write(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 152
    new-instance p2, Lcom/netflix/android/org/json/JSONException;

    invoke-direct {p2, p1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private write(ILcom/netflix/android/org/json/zip/Huff;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Compressor;->bitwriter:Lcom/netflix/android/org/json/zip/BitWriter;

    invoke-virtual {p2, p1, v0}, Lcom/netflix/android/org/json/zip/Huff;->write(ILcom/netflix/android/org/json/zip/BitWriter;)V

    return-void
.end method

.method private write(Lcom/netflix/android/org/json/Kim;IILcom/netflix/android/org/json/zip/Huff;)V
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_0

    .line 199
    invoke-virtual {p1, p2}, Lcom/netflix/android/org/json/Kim;->get(I)I

    move-result v0

    invoke-direct {p0, v0, p4}, Lcom/netflix/android/org/json/zip/Compressor;->write(ILcom/netflix/android/org/json/zip/Huff;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private write(Lcom/netflix/android/org/json/Kim;Lcom/netflix/android/org/json/zip/Huff;)V
    .locals 2

    .line 180
    iget v0, p1, Lcom/netflix/android/org/json/Kim;->length:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/netflix/android/org/json/zip/Compressor;->write(Lcom/netflix/android/org/json/Kim;IILcom/netflix/android/org/json/zip/Huff;)V

    return-void
.end method

.method private writeAndTick(ILcom/netflix/android/org/json/zip/Keep;)V
    .locals 1

    .line 214
    invoke-virtual {p2}, Lcom/netflix/android/org/json/zip/Keep;->bitsize()I

    move-result v0

    .line 215
    invoke-virtual {p2, p1}, Lcom/netflix/android/org/json/zip/Keep;->tick(I)V

    .line 219
    invoke-direct {p0, p1, v0}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    return-void
.end method

.method private writeArray(Lcom/netflix/android/org/json/JSONArray;)V
    .locals 6

    .line 236
    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 238
    invoke-direct {p0, v2, v1}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    .line 240
    invoke-virtual {p1, v3}, Lcom/netflix/android/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 242
    sget-object v4, Lcom/netflix/android/org/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 244
    :cond_1
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_2

    const/4 v3, 0x6

    .line 246
    invoke-direct {p0, v3, v1}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    .line 247
    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/netflix/android/org/json/zip/Compressor;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x7

    .line 249
    invoke-direct {p0, v5, v1}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    .line 250
    invoke-direct {p0, v4}, Lcom/netflix/android/org/json/zip/Compressor;->writeValue(Ljava/lang/Object;)V

    :goto_0
    if-ge v2, v0, :cond_6

    .line 256
    invoke-virtual {p1, v2}, Lcom/netflix/android/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 258
    sget-object v1, Lcom/netflix/android/org/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 260
    :cond_3
    instance-of v4, v1, Ljava/lang/String;

    if-eq v4, v3, :cond_4

    .line 261
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    .line 263
    :cond_4
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->one()V

    if-eqz v4, :cond_5

    .line 265
    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/netflix/android/org/json/zip/Compressor;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 267
    :cond_5
    invoke-direct {p0, v1}, Lcom/netflix/android/org/json/zip/Compressor;->writeValue(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    :cond_6
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    .line 271
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    :goto_2
    return-void
.end method

.method private writeJSON(Ljava/lang/Object;)V
    .locals 2

    .line 286
    sget-object v0, Lcom/netflix/android/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    .line 287
    invoke-direct {p0, p1, v1}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    goto :goto_1

    .line 288
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    invoke-direct {p0, v1, v1}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    goto :goto_1

    .line 290
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    .line 291
    invoke-direct {p0, p1, v1}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    goto :goto_1

    .line 293
    :cond_2
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 294
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    check-cast p1, Ljava/util/Map;

    invoke-direct {v0, p1}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 295
    :cond_3
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_4

    .line 296
    new-instance v0, Lcom/netflix/android/org/json/JSONArray;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Lcom/netflix/android/org/json/JSONArray;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 297
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 298
    new-instance v0, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v0, p1}, Lcom/netflix/android/org/json/JSONArray;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    move-object v0, p1

    .line 300
    :goto_0
    nop

    instance-of p1, v0, Lcom/netflix/android/org/json/JSONObject;

    if-eqz p1, :cond_6

    .line 301
    check-cast v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/netflix/android/org/json/zip/Compressor;->writeObject(Lcom/netflix/android/org/json/JSONObject;)V

    goto :goto_1

    .line 302
    :cond_6
    instance-of p1, v0, Lcom/netflix/android/org/json/JSONArray;

    if-eqz p1, :cond_7

    .line 303
    check-cast v0, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {p0, v0}, Lcom/netflix/android/org/json/zip/Compressor;->writeArray(Lcom/netflix/android/org/json/JSONArray;)V

    :goto_1
    return-void

    .line 305
    :cond_7
    new-instance p1, Lcom/netflix/android/org/json/JSONException;

    const-string v0, "Unrecognized object"

    invoke-direct {p1, v0}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeName(Ljava/lang/String;)V
    .locals 2

    .line 322
    new-instance v0, Lcom/netflix/android/org/json/Kim;

    invoke-direct {v0, p1}, Lcom/netflix/android/org/json/Kim;-><init>(Ljava/lang/String;)V

    .line 323
    iget-object p1, p0, Lcom/netflix/android/org/json/zip/Compressor;->namekeep:Lcom/netflix/android/org/json/zip/MapKeep;

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/zip/MapKeep;->find(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 325
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->one()V

    .line 326
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Compressor;->namekeep:Lcom/netflix/android/org/json/zip/MapKeep;

    invoke-direct {p0, p1, v0}, Lcom/netflix/android/org/json/zip/Compressor;->writeAndTick(ILcom/netflix/android/org/json/zip/Keep;)V

    goto :goto_0

    .line 331
    :cond_0
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    .line 332
    iget-object p1, p0, Lcom/netflix/android/org/json/zip/Compressor;->namehuff:Lcom/netflix/android/org/json/zip/Huff;

    invoke-direct {p0, v0, p1}, Lcom/netflix/android/org/json/zip/Compressor;->write(Lcom/netflix/android/org/json/Kim;Lcom/netflix/android/org/json/zip/Huff;)V

    const/16 p1, 0x100

    .line 333
    iget-object v1, p0, Lcom/netflix/android/org/json/zip/Compressor;->namehuff:Lcom/netflix/android/org/json/zip/Huff;

    invoke-direct {p0, p1, v1}, Lcom/netflix/android/org/json/zip/Compressor;->write(ILcom/netflix/android/org/json/zip/Huff;)V

    .line 334
    iget-object p1, p0, Lcom/netflix/android/org/json/zip/Compressor;->namekeep:Lcom/netflix/android/org/json/zip/MapKeep;

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/zip/MapKeep;->register(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private writeObject(Lcom/netflix/android/org/json/JSONObject;)V
    .locals 6

    .line 351
    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    .line 352
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 356
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 357
    instance-of v5, v2, Ljava/lang/String;

    if-eqz v5, :cond_0

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    .line 360
    invoke-direct {p0, v1, v3}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    const/4 v1, 0x0

    goto :goto_1

    .line 362
    :cond_1
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->one()V

    .line 364
    :goto_1
    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/netflix/android/org/json/zip/Compressor;->writeName(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p1, v2}, Lcom/netflix/android/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 366
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 367
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    .line 368
    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/netflix/android/org/json/zip/Compressor;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_2
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->one()V

    .line 371
    invoke-direct {p0, v2}, Lcom/netflix/android/org/json/zip/Compressor;->writeValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 376
    invoke-direct {p0, v4, v3}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    goto :goto_2

    .line 378
    :cond_4
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    :goto_2
    return-void
.end method

.method private writeString(Ljava/lang/String;)V
    .locals 2

    .line 392
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    .line 394
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    const/16 p1, 0x100

    .line 395
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Compressor;->substringhuff:Lcom/netflix/android/org/json/zip/Huff;

    invoke-direct {p0, p1, v0}, Lcom/netflix/android/org/json/zip/Compressor;->write(ILcom/netflix/android/org/json/zip/Huff;)V

    .line 396
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    goto :goto_0

    .line 398
    :cond_0
    new-instance v0, Lcom/netflix/android/org/json/Kim;

    invoke-direct {v0, p1}, Lcom/netflix/android/org/json/Kim;-><init>(Ljava/lang/String;)V

    .line 403
    iget-object p1, p0, Lcom/netflix/android/org/json/zip/Compressor;->stringkeep:Lcom/netflix/android/org/json/zip/MapKeep;

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/zip/MapKeep;->find(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 405
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->one()V

    .line 406
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Compressor;->stringkeep:Lcom/netflix/android/org/json/zip/MapKeep;

    invoke-direct {p0, p1, v0}, Lcom/netflix/android/org/json/zip/Compressor;->writeAndTick(ILcom/netflix/android/org/json/zip/Keep;)V

    goto :goto_0

    .line 412
    :cond_1
    invoke-direct {p0, v0}, Lcom/netflix/android/org/json/zip/Compressor;->writeSubstring(Lcom/netflix/android/org/json/Kim;)V

    .line 413
    iget-object p1, p0, Lcom/netflix/android/org/json/zip/Compressor;->stringkeep:Lcom/netflix/android/org/json/zip/MapKeep;

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/zip/MapKeep;->register(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private writeSubstring(Lcom/netflix/android/org/json/Kim;)V
    .locals 10

    .line 425
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Compressor;->substringkeep:Lcom/netflix/android/org/json/zip/TrieKeep;

    invoke-virtual {v0}, Lcom/netflix/android/org/json/zip/TrieKeep;->reserve()V

    .line 426
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    .line 428
    iget v0, p1, Lcom/netflix/android/org/json/Kim;->length:I

    add-int/lit8 v1, v0, -0x3

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_0
    move v6, v2

    const/4 v7, -0x1

    :goto_1
    if-gt v6, v1, :cond_1

    .line 439
    iget-object v7, p0, Lcom/netflix/android/org/json/zip/Compressor;->substringkeep:Lcom/netflix/android/org/json/zip/TrieKeep;

    invoke-virtual {v7, p1, v6, v0}, Lcom/netflix/android/org/json/zip/TrieKeep;->match(Lcom/netflix/android/org/json/Kim;II)I

    move-result v7

    if-eq v7, v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const/16 v8, 0x100

    if-ne v7, v3, :cond_3

    .line 476
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    if-ge v2, v0, :cond_2

    .line 478
    iget-object v1, p0, Lcom/netflix/android/org/json/zip/Compressor;->substringhuff:Lcom/netflix/android/org/json/zip/Huff;

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/netflix/android/org/json/zip/Compressor;->write(Lcom/netflix/android/org/json/Kim;IILcom/netflix/android/org/json/zip/Huff;)V

    if-eq v4, v3, :cond_2

    .line 480
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Compressor;->substringkeep:Lcom/netflix/android/org/json/zip/TrieKeep;

    invoke-virtual {v0, p1, v4, v5}, Lcom/netflix/android/org/json/zip/TrieKeep;->registerOne(Lcom/netflix/android/org/json/Kim;II)I

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Compressor;->substringhuff:Lcom/netflix/android/org/json/zip/Huff;

    invoke-direct {p0, v8, v0}, Lcom/netflix/android/org/json/zip/Compressor;->write(ILcom/netflix/android/org/json/zip/Huff;)V

    .line 484
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    .line 489
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Compressor;->substringkeep:Lcom/netflix/android/org/json/zip/TrieKeep;

    invoke-virtual {v0, p1}, Lcom/netflix/android/org/json/zip/TrieKeep;->registerMany(Lcom/netflix/android/org/json/Kim;)V

    return-void

    :cond_3
    if-eq v2, v6, :cond_4

    .line 453
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    .line 454
    iget-object v9, p0, Lcom/netflix/android/org/json/zip/Compressor;->substringhuff:Lcom/netflix/android/org/json/zip/Huff;

    invoke-direct {p0, p1, v2, v6, v9}, Lcom/netflix/android/org/json/zip/Compressor;->write(Lcom/netflix/android/org/json/Kim;IILcom/netflix/android/org/json/zip/Huff;)V

    .line 455
    iget-object v2, p0, Lcom/netflix/android/org/json/zip/Compressor;->substringhuff:Lcom/netflix/android/org/json/zip/Huff;

    invoke-direct {p0, v8, v2}, Lcom/netflix/android/org/json/zip/Compressor;->write(ILcom/netflix/android/org/json/zip/Huff;)V

    if-eq v4, v3, :cond_4

    .line 457
    iget-object v2, p0, Lcom/netflix/android/org/json/zip/Compressor;->substringkeep:Lcom/netflix/android/org/json/zip/TrieKeep;

    invoke-virtual {v2, p1, v4, v5}, Lcom/netflix/android/org/json/zip/TrieKeep;->registerOne(Lcom/netflix/android/org/json/Kim;II)I

    const/4 v4, -0x1

    .line 462
    :cond_4
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->one()V

    .line 463
    iget-object v2, p0, Lcom/netflix/android/org/json/zip/Compressor;->substringkeep:Lcom/netflix/android/org/json/zip/TrieKeep;

    invoke-direct {p0, v7, v2}, Lcom/netflix/android/org/json/zip/Compressor;->writeAndTick(ILcom/netflix/android/org/json/zip/Keep;)V

    .line 464
    iget-object v2, p0, Lcom/netflix/android/org/json/zip/Compressor;->substringkeep:Lcom/netflix/android/org/json/zip/TrieKeep;

    invoke-virtual {v2, v7}, Lcom/netflix/android/org/json/zip/TrieKeep;->length(I)I

    move-result v2

    add-int/2addr v2, v6

    if-eq v4, v3, :cond_5

    .line 466
    iget-object v7, p0, Lcom/netflix/android/org/json/zip/Compressor;->substringkeep:Lcom/netflix/android/org/json/zip/TrieKeep;

    invoke-virtual {v7, p1, v4, v5}, Lcom/netflix/android/org/json/zip/TrieKeep;->registerOne(Lcom/netflix/android/org/json/Kim;II)I

    :cond_5
    add-int/lit8 v5, v2, 0x1

    move v4, v6

    goto :goto_0
.end method

.method private writeValue(Ljava/lang/Object;)V
    .locals 10

    .line 500
    instance-of v0, p1, Ljava/lang/Number;

    const/4 v1, 0x2

    if-eqz v0, :cond_6

    .line 501
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0}, Lcom/netflix/android/org/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v2

    .line 502
    iget-object v3, p0, Lcom/netflix/android/org/json/zip/Compressor;->values:Lcom/netflix/android/org/json/zip/MapKeep;

    invoke-virtual {v3, v2}, Lcom/netflix/android/org/json/zip/MapKeep;->find(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 504
    invoke-direct {p0, v1, v1}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    .line 505
    iget-object p1, p0, Lcom/netflix/android/org/json/zip/Compressor;->values:Lcom/netflix/android/org/json/zip/MapKeep;

    invoke-direct {p0, v3, p1}, Lcom/netflix/android/org/json/zip/Compressor;->writeAndTick(ILcom/netflix/android/org/json/zip/Keep;)V

    return-void

    .line 508
    :cond_0
    instance-of v3, p1, Ljava/lang/Integer;

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-nez v3, :cond_1

    instance-of p1, p1, Ljava/lang/Long;

    if-eqz p1, :cond_4

    .line 509
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-ltz p1, :cond_4

    const-wide/16 v8, 0x4000

    cmp-long p1, v6, v8

    if-gez p1, :cond_4

    .line 511
    invoke-direct {p0, v4, v1}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    const-wide/16 v0, 0x10

    cmp-long p1, v6, v0

    if-gez p1, :cond_2

    .line 513
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    long-to-int p1, v6

    .line 514
    invoke-direct {p0, p1, v5}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    return-void

    .line 517
    :cond_2
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->one()V

    const-wide/16 v0, 0x80

    cmp-long p1, v6, v0

    if-gez p1, :cond_3

    .line 519
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    long-to-int p1, v6

    const/4 v0, 0x7

    .line 520
    invoke-direct {p0, p1, v0}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    return-void

    .line 523
    :cond_3
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->one()V

    long-to-int p1, v6

    const/16 v0, 0xe

    .line 524
    invoke-direct {p0, p1, v0}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    return-void

    :cond_4
    const/4 p1, 0x1

    .line 528
    invoke-direct {p0, p1, v1}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    .line 529
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v4, p1, :cond_5

    .line 530
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lcom/netflix/android/org/json/zip/Compressor;->bcd(C)I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 532
    :cond_5
    sget p1, Lcom/netflix/android/org/json/zip/Compressor;->endOfNumber:I

    invoke-direct {p0, p1, v5}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    .line 533
    iget-object p1, p0, Lcom/netflix/android/org/json/zip/Compressor;->values:Lcom/netflix/android/org/json/zip/MapKeep;

    invoke-virtual {p1, v2}, Lcom/netflix/android/org/json/zip/MapKeep;->register(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    const/4 v0, 0x3

    .line 535
    invoke-direct {p0, v0, v1}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    .line 536
    invoke-direct {p0, p1}, Lcom/netflix/android/org/json/zip/Compressor;->writeJSON(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private zero()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 551
    invoke-direct {p0, v0, v1}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1

    const/16 v0, 0x8

    .line 104
    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/zip/Compressor;->pad(I)V

    return-void
.end method

.method public pad(I)V
    .locals 1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Compressor;->bitwriter:Lcom/netflix/android/org/json/zip/BitWriter;

    invoke-interface {v0, p1}, Lcom/netflix/android/org/json/zip/BitWriter;->pad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 132
    new-instance v0, Lcom/netflix/android/org/json/JSONException;

    invoke-direct {v0, p1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public zip(Lcom/netflix/android/org/json/JSONArray;)V
    .locals 0

    .line 572
    invoke-virtual {p0}, Lcom/netflix/android/org/json/zip/Compressor;->begin()V

    .line 573
    invoke-direct {p0, p1}, Lcom/netflix/android/org/json/zip/Compressor;->writeJSON(Ljava/lang/Object;)V

    return-void
.end method

.method public zip(Lcom/netflix/android/org/json/JSONObject;)V
    .locals 0

    .line 561
    invoke-virtual {p0}, Lcom/netflix/android/org/json/zip/Compressor;->begin()V

    .line 562
    invoke-direct {p0, p1}, Lcom/netflix/android/org/json/zip/Compressor;->writeJSON(Ljava/lang/Object;)V

    return-void
.end method
