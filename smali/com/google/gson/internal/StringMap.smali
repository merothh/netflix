.class public final Lcom/google/gson/internal/StringMap;
.super Ljava/util/AbstractMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_TABLE:[Ljava/util/Map$Entry;

.field private static final seed:I


# instance fields
.field private entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private header:Lcom/google/gson/internal/StringMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/StringMap$LinkedEntry",
            "<TV;>;"
        }
    .end annotation
.end field

.field private keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private size:I

.field private table:[Lcom/google/gson/internal/StringMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/gson/internal/StringMap$LinkedEntry",
            "<TV;>;"
        }
    .end annotation
.end field

.field private threshold:I

.field private values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/gson/internal/StringMap$LinkedEntry;

    sput-object v0, Lcom/google/gson/internal/StringMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    sput v0, Lcom/google/gson/internal/StringMap;->seed:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    sget-object v0, Lcom/google/gson/internal/StringMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    check-cast v0, [Lcom/google/gson/internal/StringMap$LinkedEntry;

    check-cast v0, [Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v0, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$LinkedEntry;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/gson/internal/StringMap;->threshold:I

    new-instance v0, Lcom/google/gson/internal/StringMap$LinkedEntry;

    invoke-direct {v0}, Lcom/google/gson/internal/StringMap$LinkedEntry;-><init>()V

    iput-object v0, p0, Lcom/google/gson/internal/StringMap;->header:Lcom/google/gson/internal/StringMap$LinkedEntry;

    return-void
.end method

.method static synthetic access$300(Lcom/google/gson/internal/StringMap;)Lcom/google/gson/internal/StringMap$LinkedEntry;
    .locals 1

    iget-object v0, p0, Lcom/google/gson/internal/StringMap;->header:Lcom/google/gson/internal/StringMap$LinkedEntry;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/gson/internal/StringMap;)I
    .locals 1

    iget v0, p0, Lcom/google/gson/internal/StringMap;->size:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/gson/internal/StringMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/gson/internal/StringMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private addNewEntry(Ljava/lang/String;Ljava/lang/Object;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;II)V"
        }
    .end annotation

    iget-object v5, p0, Lcom/google/gson/internal/StringMap;->header:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iget-object v6, v5, Lcom/google/gson/internal/StringMap$LinkedEntry;->prv:Lcom/google/gson/internal/StringMap$LinkedEntry;

    new-instance v0, Lcom/google/gson/internal/StringMap$LinkedEntry;

    iget-object v1, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$LinkedEntry;

    aget-object v4, v1, p4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/gson/internal/StringMap$LinkedEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;ILcom/google/gson/internal/StringMap$LinkedEntry;Lcom/google/gson/internal/StringMap$LinkedEntry;Lcom/google/gson/internal/StringMap$LinkedEntry;)V

    iget-object v1, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v0, v5, Lcom/google/gson/internal/StringMap$LinkedEntry;->prv:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v0, v6, Lcom/google/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/google/gson/internal/StringMap$LinkedEntry;

    aput-object v0, v1, p4

    return-void
.end method

.method private doubleCapacity()[Lcom/google/gson/internal/StringMap$LinkedEntry;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/google/gson/internal/StringMap$LinkedEntry",
            "<TV;>;"
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$LinkedEntry;

    array-length v9, v4

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v9, v0, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    mul-int/lit8 v0, v9, 0x2

    invoke-direct {p0, v0}, Lcom/google/gson/internal/StringMap;->makeTable(I)[Lcom/google/gson/internal/StringMap$LinkedEntry;

    move-result-object v5

    iget v0, p0, Lcom/google/gson/internal/StringMap;->size:I

    if-nez v0, :cond_1

    move-object v0, v5

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, v9, :cond_6

    aget-object v6, v4, v8

    if-nez v6, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_3
    iget v0, v6, Lcom/google/gson/internal/StringMap$LinkedEntry;->hash:I

    and-int v3, v0, v9

    or-int v0, v8, v3

    aput-object v6, v5, v0

    iget-object v0, v6, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    move-object v1, v7

    move-object v10, v0

    move-object v0, v6

    move-object v6, v10

    :goto_3
    if-eqz v6, :cond_5

    iget v2, v6, Lcom/google/gson/internal/StringMap$LinkedEntry;->hash:I

    and-int/2addr v2, v9

    if-eq v2, v3, :cond_7

    if-nez v1, :cond_4

    or-int v1, v8, v2

    aput-object v6, v5, v1

    :goto_4
    move v1, v2

    :goto_5
    iget-object v2, v6, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    move v3, v1

    move-object v1, v0

    move-object v0, v6

    move-object v6, v2

    goto :goto_3

    :cond_4
    iput-object v6, v1, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    goto :goto_4

    :cond_5
    if-eqz v1, :cond_2

    iput-object v7, v1, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    goto :goto_2

    :cond_6
    move-object v0, v5

    goto :goto_0

    :cond_7
    move-object v0, v1

    move v1, v3

    goto :goto_5
.end method

.method private getEntry(Ljava/lang/String;)Lcom/google/gson/internal/StringMap$LinkedEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/gson/internal/StringMap$LinkedEntry",
            "<TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/google/gson/internal/StringMap;->hash(Ljava/lang/String;)I

    move-result v2

    iget-object v1, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$LinkedEntry;

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v2

    aget-object v1, v1, v3

    :goto_1
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/google/gson/internal/StringMap$LinkedEntry;->key:Ljava/lang/String;

    if-eq v3, p1, :cond_2

    iget v4, v1, Lcom/google/gson/internal/StringMap$LinkedEntry;->hash:I

    if-ne v4, v2, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    goto :goto_1
.end method

.method private static hash(Ljava/lang/String;)I
    .locals 3

    sget v1, Lcom/google/gson/internal/StringMap;->seed:I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v1

    shl-int/lit8 v1, v1, 0xa

    ushr-int/lit8 v2, v1, 0x6

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, v1, 0x14

    ushr-int/lit8 v2, v1, 0xc

    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x7

    xor-int/2addr v1, v0

    ushr-int/lit8 v0, v0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method

.method private makeTable(I)[Lcom/google/gson/internal/StringMap$LinkedEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/gson/internal/StringMap$LinkedEntry",
            "<TV;>;"
        }
    .end annotation

    new-array v0, p1, [Lcom/google/gson/internal/StringMap$LinkedEntry;

    check-cast v0, [Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v0, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$LinkedEntry;

    shr-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/internal/StringMap;->threshold:I

    return-object v0
.end method

.method private removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/gson/internal/StringMap;->hash(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$LinkedEntry;

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    and-int v5, v3, v0

    aget-object v2, v4, v5

    const/4 v0, 0x0

    :goto_1
    if-eqz v2, :cond_7

    iget v6, v2, Lcom/google/gson/internal/StringMap$LinkedEntry;->hash:I

    if-ne v6, v3, :cond_6

    iget-object v6, v2, Lcom/google/gson/internal/StringMap$LinkedEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez p2, :cond_3

    iget-object v3, v2, Lcom/google/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    if-eqz v3, :cond_4

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v3, v2, Lcom/google/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_4
    if-nez v0, :cond_5

    iget-object v0, v2, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    aput-object v0, v4, v5

    :goto_2
    iget v0, p0, Lcom/google/gson/internal/StringMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/internal/StringMap;->size:I

    invoke-direct {p0, v2}, Lcom/google/gson/internal/StringMap;->unlink(Lcom/google/gson/internal/StringMap$LinkedEntry;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v1, v2, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v1, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    goto :goto_2

    :cond_6
    iget-object v0, v2, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method private unlink(Lcom/google/gson/internal/StringMap$LinkedEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/StringMap$LinkedEntry",
            "<TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/gson/internal/StringMap$LinkedEntry;->prv:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iget-object v1, p1, Lcom/google/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v1, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iget-object v0, p1, Lcom/google/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iget-object v1, p1, Lcom/google/gson/internal/StringMap$LinkedEntry;->prv:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v1, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->prv:Lcom/google/gson/internal/StringMap$LinkedEntry;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/gson/internal/StringMap$LinkedEntry;->prv:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v0, p1, Lcom/google/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/google/gson/internal/StringMap$LinkedEntry;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/gson/internal/StringMap;->size:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$LinkedEntry;

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/internal/StringMap;->size:I

    :cond_0
    iget-object v2, p0, Lcom/google/gson/internal/StringMap;->header:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iget-object v0, v2, Lcom/google/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/google/gson/internal/StringMap$LinkedEntry;

    :goto_0
    if-eq v0, v2, :cond_1

    iget-object v1, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v3, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->prv:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v3, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/google/gson/internal/StringMap$LinkedEntry;

    move-object v0, v1

    goto :goto_0

    :cond_1
    iput-object v2, v2, Lcom/google/gson/internal/StringMap$LinkedEntry;->prv:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v2, v2, Lcom/google/gson/internal/StringMap$LinkedEntry;->nxt:Lcom/google/gson/internal/StringMap$LinkedEntry;

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/gson/internal/StringMap;->getEntry(Ljava/lang/String;)Lcom/google/gson/internal/StringMap$LinkedEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/internal/StringMap;->entrySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/gson/internal/StringMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/gson/internal/StringMap$EntrySet;-><init>(Lcom/google/gson/internal/StringMap;Lcom/google/gson/internal/StringMap$1;)V

    iput-object v0, p0, Lcom/google/gson/internal/StringMap;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/gson/internal/StringMap;->getEntry(Ljava/lang/String;)Lcom/google/gson/internal/StringMap$LinkedEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/google/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/internal/StringMap;->keySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/gson/internal/StringMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/gson/internal/StringMap$KeySet;-><init>(Lcom/google/gson/internal/StringMap;Lcom/google/gson/internal/StringMap$1;)V

    iput-object v0, p0, Lcom/google/gson/internal/StringMap;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/google/gson/internal/StringMap;->hash(Ljava/lang/String;)I

    move-result v2

    iget-object v1, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$LinkedEntry;

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    aget-object v1, v1, v0

    :goto_0
    if-eqz v1, :cond_2

    iget v3, v1, Lcom/google/gson/internal/StringMap$LinkedEntry;->hash:I

    if-ne v3, v2, :cond_1

    iget-object v3, v1, Lcom/google/gson/internal/StringMap$LinkedEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v1, Lcom/google/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    iput-object p2, v1, Lcom/google/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    :goto_1
    return-object v0

    :cond_1
    iget-object v1, v1, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/google/gson/internal/StringMap;->size:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/google/gson/internal/StringMap;->size:I

    iget v3, p0, Lcom/google/gson/internal/StringMap;->threshold:I

    if-le v1, v3, :cond_3

    invoke-direct {p0}, Lcom/google/gson/internal/StringMap;->doubleCapacity()[Lcom/google/gson/internal/StringMap$LinkedEntry;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    :cond_3
    invoke-direct {p0, p1, p2, v2, v0}, Lcom/google/gson/internal/StringMap;->addNewEntry(Ljava/lang/String;Ljava/lang/Object;II)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/gson/internal/StringMap;->hash(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/google/gson/internal/StringMap;->table:[Lcom/google/gson/internal/StringMap$LinkedEntry;

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    and-int v5, v3, v0

    aget-object v2, v4, v5

    move-object v0, v1

    :goto_1
    if-eqz v2, :cond_4

    iget v6, v2, Lcom/google/gson/internal/StringMap$LinkedEntry;->hash:I

    if-ne v6, v3, :cond_3

    iget-object v6, v2, Lcom/google/gson/internal/StringMap$LinkedEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v0, :cond_2

    iget-object v0, v2, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    aput-object v0, v4, v5

    :goto_2
    iget v0, p0, Lcom/google/gson/internal/StringMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/internal/StringMap;->size:I

    invoke-direct {p0, v2}, Lcom/google/gson/internal/StringMap;->unlink(Lcom/google/gson/internal/StringMap$LinkedEntry;)V

    iget-object v0, v2, Lcom/google/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v1, v2, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    iput-object v1, v0, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    goto :goto_2

    :cond_3
    iget-object v0, v2, Lcom/google/gson/internal/StringMap$LinkedEntry;->next:Lcom/google/gson/internal/StringMap$LinkedEntry;

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/gson/internal/StringMap;->size:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/internal/StringMap;->values:Ljava/util/Collection;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/gson/internal/StringMap$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/gson/internal/StringMap$Values;-><init>(Lcom/google/gson/internal/StringMap;Lcom/google/gson/internal/StringMap$1;)V

    iput-object v0, p0, Lcom/google/gson/internal/StringMap;->values:Ljava/util/Collection;

    goto :goto_0
.end method
