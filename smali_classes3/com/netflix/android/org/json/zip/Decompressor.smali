.class public Lcom/netflix/android/org/json/zip/Decompressor;
.super Lcom/netflix/android/org/json/zip/JSONzip;
.source ""


# instance fields
.field bitreader:Lcom/netflix/android/org/json/zip/BitReader;


# direct methods
.method public constructor <init>(Lcom/netflix/android/org/json/zip/BitReader;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/JSONzip;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/netflix/android/org/json/zip/Decompressor;->bitreader:Lcom/netflix/android/org/json/zip/BitReader;

    return-void
.end method

.method private bit()Z
    .locals 2

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Decompressor;->bitreader:Lcom/netflix/android/org/json/zip/BitReader;

    invoke-interface {v0}, Lcom/netflix/android/org/json/zip/BitReader;->bit()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 75
    new-instance v1, Lcom/netflix/android/org/json/JSONException;

    invoke-direct {v1, v0}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getAndTick(Lcom/netflix/android/org/json/zip/Keep;Lcom/netflix/android/org/json/zip/BitReader;)Ljava/lang/Object;
    .locals 2

    .line 92
    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/android/org/json/zip/Keep;->bitsize()I

    move-result v0

    .line 93
    invoke-interface {p2, v0}, Lcom/netflix/android/org/json/zip/BitReader;->read(I)I

    move-result p2

    .line 94
    invoke-virtual {p1, p2}, Lcom/netflix/android/org/json/zip/Keep;->value(I)Ljava/lang/Object;

    move-result-object v0

    .line 99
    iget v1, p1, Lcom/netflix/android/org/json/zip/Keep;->length:I

    if-ge p2, v1, :cond_0

    .line 102
    invoke-virtual {p1, p2}, Lcom/netflix/android/org/json/zip/Keep;->tick(I)V

    return-object v0

    .line 100
    :cond_0
    new-instance p1, Lcom/netflix/android/org/json/JSONException;

    const-string p2, "Deep error."

    invoke-direct {p1, p2}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 105
    new-instance p2, Lcom/netflix/android/org/json/JSONException;

    invoke-direct {p2, p1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private read(I)I
    .locals 1

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Decompressor;->bitreader:Lcom/netflix/android/org/json/zip/BitReader;

    invoke-interface {v0, p1}, Lcom/netflix/android/org/json/zip/BitReader;->read(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 141
    new-instance v0, Lcom/netflix/android/org/json/JSONException;

    invoke-direct {v0, p1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private readArray(Z)Lcom/netflix/android/org/json/JSONArray;
    .locals 2

    .line 154
    new-instance v0, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    if-eqz p1, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Decompressor;->readString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Decompressor;->readValue()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    .line 160
    :goto_1
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Decompressor;->bit()Z

    move-result v1

    if-nez v1, :cond_3

    .line 161
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Decompressor;->bit()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    .line 164
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Decompressor;->readValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Decompressor;->readString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 166
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Decompressor;->readString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Decompressor;->readValue()Ljava/lang/Object;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_1
.end method

.method private readJSON()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x3

    .line 178
    invoke-direct {p0, v0}, Lcom/netflix/android/org/json/zip/Decompressor;->read(I)I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    if-eq v1, v0, :cond_3

    const/4 v0, 0x5

    if-eq v1, v0, :cond_2

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    .line 194
    sget-object v0, Lcom/netflix/android/org/json/JSONObject;->NULL:Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, v0}, Lcom/netflix/android/org/json/zip/Decompressor;->readArray(Z)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 182
    :cond_1
    invoke-direct {p0, v2}, Lcom/netflix/android/org/json/zip/Decompressor;->readArray(Z)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 180
    :cond_2
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Decompressor;->readObject()Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 192
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 190
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 188
    :cond_5
    new-instance v0, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    return-object v0

    .line 186
    :cond_6
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    return-object v0
.end method

.method private readName()Ljava/lang/String;
    .locals 4

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 201
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Decompressor;->bit()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 203
    :goto_0
    iget-object v2, p0, Lcom/netflix/android/org/json/zip/Decompressor;->namehuff:Lcom/netflix/android/org/json/zip/Huff;

    iget-object v3, p0, Lcom/netflix/android/org/json/zip/Decompressor;->bitreader:Lcom/netflix/android/org/json/zip/BitReader;

    invoke-virtual {v2, v3}, Lcom/netflix/android/org/json/zip/Huff;->read(Lcom/netflix/android/org/json/zip/BitReader;)I

    move-result v2

    const/16 v3, 0x100

    if-ne v2, v3, :cond_1

    if-nez v1, :cond_0

    const-string v0, ""

    return-object v0

    .line 213
    :cond_0
    new-instance v2, Lcom/netflix/android/org/json/Kim;

    invoke-direct {v2, v0, v1}, Lcom/netflix/android/org/json/Kim;-><init>([BI)V

    .line 214
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Decompressor;->namekeep:Lcom/netflix/android/org/json/zip/MapKeep;

    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/zip/MapKeep;->register(Ljava/lang/Object;)V

    .line 215
    invoke-virtual {v2}, Lcom/netflix/android/org/json/Kim;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    int-to-byte v2, v2

    .line 207
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Decompressor;->namekeep:Lcom/netflix/android/org/json/zip/MapKeep;

    iget-object v1, p0, Lcom/netflix/android/org/json/zip/Decompressor;->bitreader:Lcom/netflix/android/org/json/zip/BitReader;

    invoke-direct {p0, v0, v1}, Lcom/netflix/android/org/json/zip/Decompressor;->getAndTick(Lcom/netflix/android/org/json/zip/Keep;Lcom/netflix/android/org/json/zip/BitReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readObject()Lcom/netflix/android/org/json/JSONObject;
    .locals 3

    .line 221
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Decompressor;->readName()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Decompressor;->bit()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Decompressor;->readString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Decompressor;->readValue()Ljava/lang/Object;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 228
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Decompressor;->bit()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0
.end method

.method private readString()Ljava/lang/String;
    .locals 8

    .line 240
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Decompressor;->bit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Decompressor;->stringkeep:Lcom/netflix/android/org/json/zip/MapKeep;

    iget-object v1, p0, Lcom/netflix/android/org/json/zip/Decompressor;->bitreader:Lcom/netflix/android/org/json/zip/BitReader;

    invoke-direct {p0, v0, v1}, Lcom/netflix/android/org/json/zip/Decompressor;->getAndTick(Lcom/netflix/android/org/json/zip/Keep;Lcom/netflix/android/org/json/zip/BitReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 244
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Decompressor;->bit()Z

    move-result v1

    .line 245
    iget-object v2, p0, Lcom/netflix/android/org/json/zip/Decompressor;->substringkeep:Lcom/netflix/android/org/json/zip/TrieKeep;

    invoke-virtual {v2}, Lcom/netflix/android/org/json/zip/TrieKeep;->reserve()V

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 249
    iget-object v1, p0, Lcom/netflix/android/org/json/zip/Decompressor;->substringkeep:Lcom/netflix/android/org/json/zip/TrieKeep;

    iget-object v6, p0, Lcom/netflix/android/org/json/zip/Decompressor;->bitreader:Lcom/netflix/android/org/json/zip/BitReader;

    invoke-direct {p0, v1, v6}, Lcom/netflix/android/org/json/zip/Decompressor;->getAndTick(Lcom/netflix/android/org/json/zip/Keep;Lcom/netflix/android/org/json/zip/BitReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/android/org/json/Kim;

    .line 250
    invoke-virtual {v1, v0, v2}, Lcom/netflix/android/org/json/Kim;->copy([BI)I

    move-result v1

    if-eq v4, v3, :cond_1

    .line 252
    iget-object v6, p0, Lcom/netflix/android/org/json/zip/Decompressor;->substringkeep:Lcom/netflix/android/org/json/zip/TrieKeep;

    new-instance v7, Lcom/netflix/android/org/json/Kim;

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v7, v0, v4, v5}, Lcom/netflix/android/org/json/Kim;-><init>([BII)V

    invoke-virtual {v6, v7}, Lcom/netflix/android/org/json/zip/TrieKeep;->registerOne(Lcom/netflix/android/org/json/Kim;)V

    .line 257
    :cond_1
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Decompressor;->bit()Z

    move-result v4

    move v5, v1

    move v1, v4

    move v4, v2

    move v2, v5

    goto :goto_0

    .line 261
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/netflix/android/org/json/zip/Decompressor;->substringhuff:Lcom/netflix/android/org/json/zip/Huff;

    iget-object v6, p0, Lcom/netflix/android/org/json/zip/Decompressor;->bitreader:Lcom/netflix/android/org/json/zip/BitReader;

    invoke-virtual {v1, v6}, Lcom/netflix/android/org/json/zip/Huff;->read(Lcom/netflix/android/org/json/zip/BitReader;)I

    move-result v1

    const/16 v6, 0x100

    if-ne v1, v6, :cond_5

    .line 273
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Decompressor;->bit()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v2, :cond_3

    const-string v0, ""

    return-object v0

    .line 282
    :cond_3
    new-instance v1, Lcom/netflix/android/org/json/Kim;

    invoke-direct {v1, v0, v2}, Lcom/netflix/android/org/json/Kim;-><init>([BI)V

    .line 283
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Decompressor;->stringkeep:Lcom/netflix/android/org/json/zip/MapKeep;

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/zip/MapKeep;->register(Ljava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Decompressor;->substringkeep:Lcom/netflix/android/org/json/zip/TrieKeep;

    invoke-virtual {v0, v1}, Lcom/netflix/android/org/json/zip/TrieKeep;->registerMany(Lcom/netflix/android/org/json/Kim;)V

    .line 285
    invoke-virtual {v1}, Lcom/netflix/android/org/json/Kim;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    int-to-byte v1, v1

    .line 265
    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    if-eq v4, v3, :cond_2

    .line 268
    iget-object v1, p0, Lcom/netflix/android/org/json/zip/Decompressor;->substringkeep:Lcom/netflix/android/org/json/zip/TrieKeep;

    new-instance v6, Lcom/netflix/android/org/json/Kim;

    add-int/lit8 v7, v5, 0x1

    invoke-direct {v6, v0, v4, v7}, Lcom/netflix/android/org/json/Kim;-><init>([BII)V

    invoke-virtual {v1, v6}, Lcom/netflix/android/org/json/zip/TrieKeep;->registerOne(Lcom/netflix/android/org/json/Kim;)V

    const/4 v4, -0x1

    goto :goto_1
.end method

.method private readValue()Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x2

    .line 289
    invoke-direct {p0, v0}, Lcom/netflix/android/org/json/zip/Decompressor;->read(I)I

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Decompressor;->readJSON()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 317
    :cond_0
    new-instance v0, Lcom/netflix/android/org/json/JSONException;

    const-string v1, "Impossible."

    invoke-direct {v0, v1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Decompressor;->values:Lcom/netflix/android/org/json/zip/MapKeep;

    iget-object v1, p0, Lcom/netflix/android/org/json/zip/Decompressor;->bitreader:Lcom/netflix/android/org/json/zip/BitReader;

    invoke-direct {p0, v0, v1}, Lcom/netflix/android/org/json/zip/Decompressor;->getAndTick(Lcom/netflix/android/org/json/zip/Keep;Lcom/netflix/android/org/json/zip/BitReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 296
    :goto_0
    invoke-direct {p0, v2}, Lcom/netflix/android/org/json/zip/Decompressor;->read(I)I

    move-result v4

    .line 297
    sget v5, Lcom/netflix/android/org/json/zip/Decompressor;->endOfNumber:I

    if-ne v4, v5, :cond_3

    .line 305
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v4, "US-ASCII"

    invoke-direct {v2, v0, v1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v2}, Lcom/netflix/android/org/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    iget-object v1, p0, Lcom/netflix/android/org/json/zip/Decompressor;->values:Lcom/netflix/android/org/json/zip/MapKeep;

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/zip/MapKeep;->register(Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception v0

    .line 308
    new-instance v1, Lcom/netflix/android/org/json/JSONException;

    invoke-direct {v1, v0}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 300
    :cond_3
    sget-object v5, Lcom/netflix/android/org/json/zip/Decompressor;->bcd:[B

    aget-byte v4, v5, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 291
    :cond_4
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Decompressor;->bit()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Decompressor;->bit()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v2, 0x7

    goto :goto_1

    :cond_6
    const/16 v2, 0xe

    :goto_1
    invoke-direct {p0, v2}, Lcom/netflix/android/org/json/zip/Decompressor;->read(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public pad(I)Z
    .locals 1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Decompressor;->bitreader:Lcom/netflix/android/org/json/zip/BitReader;

    invoke-interface {v0, p1}, Lcom/netflix/android/org/json/zip/BitReader;->pad(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 121
    new-instance v0, Lcom/netflix/android/org/json/JSONException;

    invoke-direct {v0, p1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public unzip()Ljava/lang/Object;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/netflix/android/org/json/zip/Decompressor;->begin()V

    .line 323
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Decompressor;->readJSON()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
