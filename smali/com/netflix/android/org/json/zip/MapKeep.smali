.class Lcom/netflix/android/org/json/zip/MapKeep;
.super Lcom/netflix/android/org/json/zip/Keep;
.source "MapKeep.java"


# instance fields
.field private list:[Ljava/lang/Object;

.field private map:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netflix/android/org/json/zip/Keep;-><init>(I)V

    iget v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->capacity:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    iget v1, p0, Lcom/netflix/android/org/json/zip/MapKeep;->capacity:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->map:Ljava/util/HashMap;

    return-void
.end method

.method private compact()V
    .locals 8

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/netflix/android/org/json/zip/MapKeep;->capacity:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/netflix/android/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/netflix/android/org/json/zip/MapKeep;->uses:[J

    aget-wide v4, v4, v2

    invoke-static {v4, v5}, Lcom/netflix/android/org/json/zip/MapKeep;->age(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/netflix/android/org/json/zip/MapKeep;->uses:[J

    aput-wide v4, v6, v0

    iget-object v4, p0, Lcom/netflix/android/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aput-object v3, v4, v0

    iget-object v4, p0, Lcom/netflix/android/org/json/zip/MapKeep;->map:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/netflix/android/org/json/zip/MapKeep;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/netflix/android/org/json/zip/MapKeep;->capacity:I

    if-ge v0, v2, :cond_2

    iput v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->length:I

    :goto_2
    iput v1, p0, Lcom/netflix/android/org/json/zip/MapKeep;->power:I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput v1, p0, Lcom/netflix/android/org/json/zip/MapKeep;->length:I

    goto :goto_2
.end method


# virtual methods
.method public find(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public postMortem(Lcom/netflix/android/org/json/zip/PostMortem;)Z
    .locals 6

    const/4 v2, 0x0

    check-cast p1, Lcom/netflix/android/org/json/zip/MapKeep;

    iget v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->length:I

    iget v1, p1, Lcom/netflix/android/org/json/zip/MapKeep;->length:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/netflix/android/org/json/zip/MapKeep;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/netflix/android/org/json/zip/MapKeep;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/android/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    move v1, v2

    :goto_1
    iget v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->length:I

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aget-object v0, v0, v1

    instance-of v0, v0, Lcom/netflix/android/org/json/Kim;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lcom/netflix/android/org/json/Kim;

    iget-object v3, p1, Lcom/netflix/android/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Lcom/netflix/android/org/json/Kim;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\n["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]\n "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/netflix/android/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\n "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/netflix/android/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\n "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/netflix/android/org/json/zip/MapKeep;->uses:[J

    aget-wide v4, v3, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\n "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/netflix/android/org/json/zip/MapKeep;->uses:[J

    aget-wide v4, v3, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/android/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aget-object v0, v0, v1

    iget-object v3, p1, Lcom/netflix/android/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aget-object v3, v3, v1

    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public register(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->length:I

    iget v1, p0, Lcom/netflix/android/org/json/zip/MapKeep;->capacity:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/MapKeep;->compact()V

    :cond_0
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    iget v1, p0, Lcom/netflix/android/org/json/zip/MapKeep;->length:I

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/netflix/android/org/json/zip/MapKeep;->length:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->uses:[J

    iget v1, p0, Lcom/netflix/android/org/json/zip/MapKeep;->length:I

    const-wide/16 v2, 0x1

    aput-wide v2, v0, v1

    iget v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->length:I

    return-void
.end method

.method public value(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
