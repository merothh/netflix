.class public Lcom/netflix/mediaclient/util/AlphanumComparator;
.super Ljava/lang/Object;
.source "AlphanumComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getChunk(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, p3, 0x1

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/util/AlphanumComparator;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/util/AlphanumComparator;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    :cond_3
    if-ge v0, p2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/util/AlphanumComparator;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1
.end method

.method private final isDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/util/AlphanumComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11

    const/4 v1, 0x0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_5

    if-ge v0, v6, :cond_5

    invoke-direct {p0, p1, v5, v2}, Lcom/netflix/mediaclient/util/AlphanumComparator;->getChunk(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    add-int v4, v2, v3

    invoke-direct {p0, p2, v6, v0}, Lcom/netflix/mediaclient/util/AlphanumComparator;->getChunk(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    add-int v3, v0, v2

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/util/AlphanumComparator;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/util/AlphanumComparator;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, v9, v0

    if-nez v0, :cond_4

    move v2, v1

    :goto_2
    if-ge v2, v9, :cond_4

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    sub-int/2addr v0, v10

    if-nez v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_4
    if-nez v0, :cond_1

    move v0, v3

    move v2, v4

    goto :goto_1

    :cond_5
    sub-int v0, v5, v6

    goto :goto_0
.end method
