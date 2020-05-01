.class Lcom/netflix/android/org/json/zip/MapKeep;
.super Lcom/netflix/android/org/json/zip/Keep;
.source ""


# instance fields
.field private list:[Ljava/lang/Object;

.field private map:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Lcom/netflix/android/org/json/zip/Keep;-><init>(I)V

    .line 50
    iget p1, p0, Lcom/netflix/android/org/json/zip/MapKeep;->capacity:I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/netflix/android/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    .line 51
    new-instance p1, Ljava/util/HashMap;

    iget v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->capacity:I

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/netflix/android/org/json/zip/MapKeep;->map:Ljava/util/HashMap;

    return-void
.end method

.method private compact()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 62
    :goto_0
    iget v3, p0, Lcom/netflix/android/org/json/zip/MapKeep;->capacity:I

    if-ge v1, v3, :cond_1

    .line 63
    iget-object v3, p0, Lcom/netflix/android/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aget-object v3, v3, v1

    .line 64
    iget-object v4, p0, Lcom/netflix/android/org/json/zip/MapKeep;->uses:[J

    aget-wide v5, v4, v1

    invoke-static {v5, v6}, Lcom/netflix/android/org/json/zip/MapKeep;->age(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    .line 66
    iget-object v6, p0, Lcom/netflix/android/org/json/zip/MapKeep;->uses:[J

    aput-wide v4, v6, v2

    .line 67
    iget-object v4, p0, Lcom/netflix/android/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aput-object v3, v4, v2

    .line 68
    iget-object v4, p0, Lcom/netflix/android/org/json/zip/MapKeep;->map:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 71
    :cond_0
    iget-object v4, p0, Lcom/netflix/android/org/json/zip/MapKeep;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_1
    iget v1, p0, Lcom/netflix/android/org/json/zip/MapKeep;->capacity:I

    if-ge v2, v1, :cond_2

    .line 76
    iput v2, p0, Lcom/netflix/android/org/json/zip/MapKeep;->length:I

    goto :goto_2

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/netflix/android/org/json/zip/MapKeep;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 79
    iput v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->length:I

    .line 81
    :goto_2
    iput v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->power:I

    return-void
.end method


# virtual methods
.method public find(Ljava/lang/Object;)I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 94
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public postMortem(Lcom/netflix/android/org/json/zip/PostMortem;)Z
    .locals 7

    .line 98
    check-cast p1, Lcom/netflix/android/org/json/zip/MapKeep;

    .line 99
    iget v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->length:I

    iget v1, p1, Lcom/netflix/android/org/json/zip/MapKeep;->length:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/netflix/android/org/json/zip/MapKeep;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " <> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/netflix/android/org/json/zip/MapKeep;->length:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/android/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    iget v1, p0, Lcom/netflix/android/org/json/zip/MapKeep;->length:I

    if-ge v0, v1, :cond_5

    .line 105
    iget-object v1, p0, Lcom/netflix/android/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aget-object v3, v1, v0

    instance-of v3, v3, Lcom/netflix/android/org/json/Kim;

    if-eqz v3, :cond_1

    .line 106
    aget-object v1, v1, v0

    check-cast v1, Lcom/netflix/android/org/json/Kim;

    iget-object v3, p1, Lcom/netflix/android/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Lcom/netflix/android/org/json/Kim;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    .line 108
    :cond_1
    aget-object v1, v1, v0

    .line 109
    iget-object v3, p1, Lcom/netflix/android/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aget-object v3, v3, v0

    .line 110
    instance-of v4, v1, Ljava/lang/Number;

    if-eqz v4, :cond_2

    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    :cond_2
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_3

    .line 114
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_4

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]\n "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netflix/android/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/netflix/android/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netflix/android/org/json/zip/MapKeep;->uses:[J

    aget-wide v5, v4, v0

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/netflix/android/org/json/zip/MapKeep;->uses:[J

    aget-wide v3, p1, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/android/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public register(Ljava/lang/Object;)V
    .locals 3

    .line 140
    iget v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->length:I

    iget v1, p0, Lcom/netflix/android/org/json/zip/MapKeep;->capacity:I

    if-lt v0, v1, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/netflix/android/org/json/zip/MapKeep;->compact()V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    iget v1, p0, Lcom/netflix/android/org/json/zip/MapKeep;->length:I

    aput-object p1, v0, v1

    .line 144
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/netflix/android/org/json/zip/MapKeep;->length:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object p1, p0, Lcom/netflix/android/org/json/zip/MapKeep;->uses:[J

    iget v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->length:I

    const-wide/16 v1, 0x1

    aput-wide v1, p1, v0

    .line 149
    iget p1, p0, Lcom/netflix/android/org/json/zip/MapKeep;->length:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/netflix/android/org/json/zip/MapKeep;->length:I

    return-void
.end method

.method public value(I)Ljava/lang/Object;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
