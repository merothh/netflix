.class public Lcom/netflix/android/org/json/zip/Compressor;
.super Lcom/netflix/android/org/json/zip/JSONzip;
.source "Compressor.java"


# instance fields
.field final bitwriter:Lcom/netflix/android/org/json/zip/BitWriter;


# direct methods
.method public constructor <init>(Lcom/netflix/android/org/json/zip/BitWriter;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/JSONzip;-><init>()V

    iput-object p1, p0, Lcom/netflix/android/org/json/zip/Compressor;->bitwriter:Lcom/netflix/android/org/json/zip/BitWriter;

    return-void
.end method

.method private static bcd(C)I
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0

    :cond_0
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0xd

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private one()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    return-void
.end method

.method private write(II)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Compressor;->bitwriter:Lcom/netflix/android/org/json/zip/BitWriter;

    invoke-interface {v0, p1, p2}, Lcom/netflix/android/org/json/zip/BitWriter;->write(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/android/org/json/JSONException;

    invoke-direct {v1, v0}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private write(ILcom/netflix/android/org/json/zip/Huff;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Compressor;->bitwriter:Lcom/netflix/android/org/json/zip/BitWriter;

    invoke-virtual {p2, p1, v0}, Lcom/netflix/android/org/json/zip/Huff;->write(ILcom/netflix/android/org/json/zip/BitWriter;)V

    return-void
.end method

.method private write(Lcom/netflix/android/org/json/Kim;IILcom/netflix/android/org/json/zip/Huff;)V
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_0

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

    const/4 v0, 0x0

    iget v1, p1, Lcom/netflix/android/org/json/Kim;->length:I

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/netflix/android/org/json/zip/Compressor;->write(Lcom/netflix/android/org/json/Kim;IILcom/netflix/android/org/json/zip/Huff;)V

    return-void
.end method

.method private writeAndTick(ILcom/netflix/android/org/json/zip/Keep;)V
    .locals 1

    invoke-virtual {p2}, Lcom/netflix/android/org/json/zip/Keep;->bitsize()I

    move-result v0

    invoke-virtual {p2, p1}, Lcom/netflix/android/org/json/zip/Keep;->tick(I)V

    invoke-direct {p0, p1, v0}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    return-void
.end method

.method private writeArray(Lcom/netflix/android/org/json/JSONArray;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v2, v5}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v1}, Lcom/netflix/android/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/android/org/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_1
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_4

    const/4 v1, 0x6

    invoke-direct {p0, v1, v5}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/android/org/json/zip/Compressor;->writeString(Ljava/lang/String;)V

    move v1, v2

    :goto_1
    if-ge v2, v3, :cond_6

    invoke-virtual {p1, v2}, Lcom/netflix/android/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/netflix/android/org/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_2
    instance-of v4, v0, Ljava/lang/String;

    if-eq v4, v1, :cond_3

    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    :cond_3
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->one()V

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_5

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/android/org/json/zip/Compressor;->writeString(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x7

    invoke-direct {p0, v4, v5}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    invoke-direct {p0, v0}, Lcom/netflix/android/org/json/zip/Compressor;->writeValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v0}, Lcom/netflix/android/org/json/zip/Compressor;->writeValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    goto :goto_0
.end method

.method private writeJSON(Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x3

    sget-object v0, Lcom/netflix/android/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1, v1}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    check-cast p1, Ljava/util/Map;

    invoke-direct {v0, p1}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/util/Map;)V

    :goto_1
    instance-of v1, v0, Lcom/netflix/android/org/json/JSONObject;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/netflix/android/org/json/zip/Compressor;->writeObject(Lcom/netflix/android/org/json/JSONObject;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/netflix/android/org/json/JSONArray;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Lcom/netflix/android/org/json/JSONArray;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v0, p1}, Lcom/netflix/android/org/json/JSONArray;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    instance-of v1, v0, Lcom/netflix/android/org/json/JSONArray;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {p0, v0}, Lcom/netflix/android/org/json/zip/Compressor;->writeArray(Lcom/netflix/android/org/json/JSONArray;)V

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/netflix/android/org/json/JSONException;

    const-string/jumbo v1, "Unrecognized object"

    invoke-direct {v0, v1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v0, p1

    goto :goto_1
.end method

.method private writeName(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/netflix/android/org/json/Kim;

    invoke-direct {v0, p1}, Lcom/netflix/android/org/json/Kim;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/android/org/json/zip/Compressor;->namekeep:Lcom/netflix/android/org/json/zip/MapKeep;

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/zip/MapKeep;->find(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->one()V

    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Compressor;->namekeep:Lcom/netflix/android/org/json/zip/MapKeep;

    invoke-direct {p0, v1, v0}, Lcom/netflix/android/org/json/zip/Compressor;->writeAndTick(ILcom/netflix/android/org/json/zip/Keep;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    iget-object v1, p0, Lcom/netflix/android/org/json/zip/Compressor;->namehuff:Lcom/netflix/android/org/json/zip/Huff;

    invoke-direct {p0, v0, v1}, Lcom/netflix/android/org/json/zip/Compressor;->write(Lcom/netflix/android/org/json/Kim;Lcom/netflix/android/org/json/zip/Huff;)V

    const/16 v1, 0x100

    iget-object v2, p0, Lcom/netflix/android/org/json/zip/Compressor;->namehuff:Lcom/netflix/android/org/json/zip/Huff;

    invoke-direct {p0, v1, v2}, Lcom/netflix/android/org/json/zip/Compressor;->write(ILcom/netflix/android/org/json/zip/Huff;)V

    iget-object v1, p0, Lcom/netflix/android/org/json/zip/Compressor;->namekeep:Lcom/netflix/android/org/json/zip/MapKeep;

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/zip/MapKeep;->register(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private writeObject(Lcom/netflix/android/org/json/JSONObject;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    invoke-direct {p0, v0, v5}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    move v2, v3

    :goto_1
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/android/org/json/zip/Compressor;->writeName(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/netflix/android/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/android/org/json/zip/Compressor;->writeString(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->one()V

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->one()V

    invoke-direct {p0, v0}, Lcom/netflix/android/org/json/zip/Compressor;->writeValue(Ljava/lang/Object;)V

    move v0, v2

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0, v3, v5}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    :goto_2
    return-void

    :cond_4
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    goto :goto_2
.end method

.method private writeString(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    const/16 v0, 0x100

    iget-object v1, p0, Lcom/netflix/android/org/json/zip/Compressor;->substringhuff:Lcom/netflix/android/org/json/zip/Huff;

    invoke-direct {p0, v0, v1}, Lcom/netflix/android/org/json/zip/Compressor;->write(ILcom/netflix/android/org/json/zip/Huff;)V

    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netflix/android/org/json/Kim;

    invoke-direct {v0, p1}, Lcom/netflix/android/org/json/Kim;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/android/org/json/zip/Compressor;->stringkeep:Lcom/netflix/android/org/json/zip/MapKeep;

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/zip/MapKeep;->find(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->one()V

    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Compressor;->stringkeep:Lcom/netflix/android/org/json/zip/MapKeep;

    invoke-direct {p0, v1, v0}, Lcom/netflix/android/org/json/zip/Compressor;->writeAndTick(ILcom/netflix/android/org/json/zip/Keep;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/netflix/android/org/json/zip/Compressor;->writeSubstring(Lcom/netflix/android/org/json/Kim;)V

    iget-object v1, p0, Lcom/netflix/android/org/json/zip/Compressor;->stringkeep:Lcom/netflix/android/org/json/zip/MapKeep;

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/zip/MapKeep;->register(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private writeSubstring(Lcom/netflix/android/org/json/Kim;)V
    .locals 10

    const/16 v9, 0x100

    const/4 v0, 0x0

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/netflix/android/org/json/zip/Compressor;->substringkeep:Lcom/netflix/android/org/json/zip/TrieKeep;

    invoke-virtual {v1}, Lcom/netflix/android/org/json/zip/TrieKeep;->reserve()V

    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    iget v6, p1, Lcom/netflix/android/org/json/Kim;->length:I

    add-int/lit8 v7, v6, -0x3

    move v1, v2

    move v4, v0

    :goto_0
    move v5, v2

    move v3, v4

    :goto_1
    if-gt v3, v7, :cond_0

    iget-object v5, p0, Lcom/netflix/android/org/json/zip/Compressor;->substringkeep:Lcom/netflix/android/org/json/zip/TrieKeep;

    invoke-virtual {v5, p1, v3, v6}, Lcom/netflix/android/org/json/zip/TrieKeep;->match(Lcom/netflix/android/org/json/Kim;II)I

    move-result v5

    if-eq v5, v2, :cond_2

    :cond_0
    if-ne v5, v2, :cond_3

    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    if-ge v4, v6, :cond_1

    iget-object v3, p0, Lcom/netflix/android/org/json/zip/Compressor;->substringhuff:Lcom/netflix/android/org/json/zip/Huff;

    invoke-direct {p0, p1, v4, v6, v3}, Lcom/netflix/android/org/json/zip/Compressor;->write(Lcom/netflix/android/org/json/Kim;IILcom/netflix/android/org/json/zip/Huff;)V

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/netflix/android/org/json/zip/Compressor;->substringkeep:Lcom/netflix/android/org/json/zip/TrieKeep;

    invoke-virtual {v2, p1, v1, v0}, Lcom/netflix/android/org/json/zip/TrieKeep;->registerOne(Lcom/netflix/android/org/json/Kim;II)I

    :cond_1
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Compressor;->substringhuff:Lcom/netflix/android/org/json/zip/Huff;

    invoke-direct {p0, v9, v0}, Lcom/netflix/android/org/json/zip/Compressor;->write(ILcom/netflix/android/org/json/zip/Huff;)V

    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Compressor;->substringkeep:Lcom/netflix/android/org/json/zip/TrieKeep;

    invoke-virtual {v0, p1}, Lcom/netflix/android/org/json/zip/TrieKeep;->registerMany(Lcom/netflix/android/org/json/Kim;)V

    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-eq v4, v3, :cond_5

    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    iget-object v8, p0, Lcom/netflix/android/org/json/zip/Compressor;->substringhuff:Lcom/netflix/android/org/json/zip/Huff;

    invoke-direct {p0, p1, v4, v3, v8}, Lcom/netflix/android/org/json/zip/Compressor;->write(Lcom/netflix/android/org/json/Kim;IILcom/netflix/android/org/json/zip/Huff;)V

    iget-object v4, p0, Lcom/netflix/android/org/json/zip/Compressor;->substringhuff:Lcom/netflix/android/org/json/zip/Huff;

    invoke-direct {p0, v9, v4}, Lcom/netflix/android/org/json/zip/Compressor;->write(ILcom/netflix/android/org/json/zip/Huff;)V

    if-eq v1, v2, :cond_5

    iget-object v4, p0, Lcom/netflix/android/org/json/zip/Compressor;->substringkeep:Lcom/netflix/android/org/json/zip/TrieKeep;

    invoke-virtual {v4, p1, v1, v0}, Lcom/netflix/android/org/json/zip/TrieKeep;->registerOne(Lcom/netflix/android/org/json/Kim;II)I

    move v4, v2

    :goto_2
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->one()V

    iget-object v1, p0, Lcom/netflix/android/org/json/zip/Compressor;->substringkeep:Lcom/netflix/android/org/json/zip/TrieKeep;

    invoke-direct {p0, v5, v1}, Lcom/netflix/android/org/json/zip/Compressor;->writeAndTick(ILcom/netflix/android/org/json/zip/Keep;)V

    iget-object v1, p0, Lcom/netflix/android/org/json/zip/Compressor;->substringkeep:Lcom/netflix/android/org/json/zip/TrieKeep;

    invoke-virtual {v1, v5}, Lcom/netflix/android/org/json/zip/TrieKeep;->length(I)I

    move-result v1

    add-int/2addr v1, v3

    if-eq v4, v2, :cond_4

    iget-object v5, p0, Lcom/netflix/android/org/json/zip/Compressor;->substringkeep:Lcom/netflix/android/org/json/zip/TrieKeep;

    invoke-virtual {v5, p1, v4, v0}, Lcom/netflix/android/org/json/zip/TrieKeep;->registerOne(Lcom/netflix/android/org/json/Kim;II)I

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v4, v1

    move v1, v3

    goto :goto_0

    :cond_5
    move v4, v1

    goto :goto_2
.end method

.method private writeValue(Ljava/lang/Object;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x2

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0}, Lcom/netflix/android/org/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Compressor;->values:Lcom/netflix/android/org/json/zip/MapKeep;

    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/zip/MapKeep;->find(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    invoke-direct {p0, v8, v8}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    iget-object v1, p0, Lcom/netflix/android/org/json/zip/Compressor;->values:Lcom/netflix/android/org/json/zip/MapKeep;

    invoke-direct {p0, v0, v1}, Lcom/netflix/android/org/json/zip/Compressor;->writeAndTick(ILcom/netflix/android/org/json/zip/Keep;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    :cond_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_4

    const-wide/16 v6, 0x4000

    cmp-long v0, v4, v6

    if-gez v0, :cond_4

    invoke-direct {p0, v1, v8}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    const-wide/16 v0, 0x10

    cmp-long v0, v4, v0

    if-gez v0, :cond_2

    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    long-to-int v0, v4

    invoke-direct {p0, v0, v9}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->one()V

    const-wide/16 v0, 0x80

    cmp-long v0, v4, v0

    if-gez v0, :cond_3

    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->zero()V

    long-to-int v0, v4

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/Compressor;->one()V

    long-to-int v0, v4

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0, v8}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    move v0, v1

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/netflix/android/org/json/zip/Compressor;->bcd(C)I

    move-result v1

    invoke-direct {p0, v1, v9}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    sget v0, Lcom/netflix/android/org/json/zip/Compressor;->endOfNumber:I

    invoke-direct {p0, v0, v9}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Compressor;->values:Lcom/netflix/android/org/json/zip/MapKeep;

    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/zip/MapKeep;->register(Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x3

    invoke-direct {p0, v0, v8}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    invoke-direct {p0, p1}, Lcom/netflix/android/org/json/zip/Compressor;->writeJSON(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private zero()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/netflix/android/org/json/zip/Compressor;->write(II)V

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/zip/Compressor;->pad(I)V

    return-void
.end method

.method public pad(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/Compressor;->bitwriter:Lcom/netflix/android/org/json/zip/BitWriter;

    invoke-interface {v0, p1}, Lcom/netflix/android/org/json/zip/BitWriter;->pad(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/android/org/json/JSONException;

    invoke-direct {v1, v0}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zip(Lcom/netflix/android/org/json/JSONArray;)V
    .locals 0

    invoke-virtual {p0}, Lcom/netflix/android/org/json/zip/Compressor;->begin()V

    invoke-direct {p0, p1}, Lcom/netflix/android/org/json/zip/Compressor;->writeJSON(Ljava/lang/Object;)V

    return-void
.end method

.method public zip(Lcom/netflix/android/org/json/JSONObject;)V
    .locals 0

    invoke-virtual {p0}, Lcom/netflix/android/org/json/zip/Compressor;->begin()V

    invoke-direct {p0, p1}, Lcom/netflix/android/org/json/zip/Compressor;->writeJSON(Ljava/lang/Object;)V

    return-void
.end method
