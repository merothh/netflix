.class public Lcom/ibm/icu/impl/TextTrieMap;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/TextTrieMap$Node;,
        Lcom/ibm/icu/impl/TextTrieMap$LongestMatchHandler;,
        Lcom/ibm/icu/impl/TextTrieMap$ResultHandler;,
        Lcom/ibm/icu/impl/TextTrieMap$CharIterator;,
        Lcom/ibm/icu/impl/TextTrieMap$ParseState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field _ignoreCase:Z

.field private _root:Lcom/ibm/icu/impl/TextTrieMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "TV;>.Node;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/ibm/icu/impl/TextTrieMap$Node;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ibm/icu/impl/TextTrieMap$Node;-><init>(Lcom/ibm/icu/impl/TextTrieMap;Lcom/ibm/icu/impl/TextTrieMap$1;)V

    iput-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap;->_root:Lcom/ibm/icu/impl/TextTrieMap$Node;

    .line 34
    iput-boolean p1, p0, Lcom/ibm/icu/impl/TextTrieMap;->_ignoreCase:Z

    return-void
.end method

.method static synthetic access$300(Ljava/lang/CharSequence;)[C
    .locals 0

    .line 23
    invoke-static {p0}, Lcom/ibm/icu/impl/TextTrieMap;->toCharArray(Ljava/lang/CharSequence;)[C

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400([CI)[C
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/TextTrieMap;->subArray([CI)[C

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500([CII)[C
    .locals 0

    .line 23
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/impl/TextTrieMap;->subArray([CII)[C

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized find(Lcom/ibm/icu/impl/TextTrieMap$Node;Lcom/ibm/icu/impl/TextTrieMap$CharIterator;Lcom/ibm/icu/impl/TextTrieMap$ResultHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "TV;>.Node;",
            "Lcom/ibm/icu/impl/TextTrieMap$CharIterator;",
            "Lcom/ibm/icu/impl/TextTrieMap$ResultHandler<",
            "TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 96
    :try_start_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/TextTrieMap$Node;->values()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p2}, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->processedLength()I

    move-result v1

    invoke-interface {p3, v1, v0}, Lcom/ibm/icu/impl/TextTrieMap$ResultHandler;->handlePrefixMatch(ILjava/util/Iterator;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 99
    monitor-exit p0

    return-void

    .line 103
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/ibm/icu/impl/TextTrieMap$Node;->findMatch(Lcom/ibm/icu/impl/TextTrieMap$CharIterator;)Lcom/ibm/icu/impl/TextTrieMap$Node;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/TextTrieMap;->find(Lcom/ibm/icu/impl/TextTrieMap$Node;Lcom/ibm/icu/impl/TextTrieMap$CharIterator;Lcom/ibm/icu/impl/TextTrieMap$ResultHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static subArray([CI)[C
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 504
    :cond_0
    array-length v0, p0

    sub-int/2addr v0, p1

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 505
    array-length v2, v0

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static subArray([CII)[C
    .locals 2

    if-nez p1, :cond_0

    .line 510
    array-length v0, p0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    sub-int/2addr p2, p1

    .line 513
    new-array v0, p2, [C

    const/4 v1, 0x0

    .line 514
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static toCharArray(Ljava/lang/CharSequence;)[C
    .locals 3

    .line 493
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 494
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 495
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public find(Ljava/lang/CharSequence;ILcom/ibm/icu/impl/TextTrieMap$ResultHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I",
            "Lcom/ibm/icu/impl/TextTrieMap$ResultHandler<",
            "TV;>;)V"
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;

    iget-boolean v1, p0, Lcom/ibm/icu/impl/TextTrieMap;->_ignoreCase:Z

    invoke-direct {v0, p1, p2, v1}, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;-><init>(Ljava/lang/CharSequence;IZ)V

    .line 92
    iget-object p1, p0, Lcom/ibm/icu/impl/TextTrieMap;->_root:Lcom/ibm/icu/impl/TextTrieMap$Node;

    invoke-direct {p0, p1, v0, p3}, Lcom/ibm/icu/impl/TextTrieMap;->find(Lcom/ibm/icu/impl/TextTrieMap$Node;Lcom/ibm/icu/impl/TextTrieMap$CharIterator;Lcom/ibm/icu/impl/TextTrieMap$ResultHandler;)V

    return-void
.end method

.method public get(Ljava/lang/CharSequence;I[I)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I[I)",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/ibm/icu/impl/TextTrieMap$LongestMatchHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/TextTrieMap$LongestMatchHandler;-><init>(Lcom/ibm/icu/impl/TextTrieMap$1;)V

    .line 79
    invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILcom/ibm/icu/impl/TextTrieMap$ResultHandler;)V

    if-eqz p3, :cond_0

    .line 80
    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 81
    invoke-virtual {v0}, Lcom/ibm/icu/impl/TextTrieMap$LongestMatchHandler;->getMatchLength()I

    move-result p2

    aput p2, p3, p1

    .line 83
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/impl/TextTrieMap$LongestMatchHandler;->getMatches()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public openParseState(I)Lcom/ibm/icu/impl/TextTrieMap$ParseState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "TV;>.ParseState;"
        }
    .end annotation

    .line 118
    iget-boolean v0, p0, Lcom/ibm/icu/impl/TextTrieMap;->_ignoreCase:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 119
    invoke-static {p1, v1}, Lcom/ibm/icu/lang/UCharacter;->foldCase(IZ)I

    move-result p1

    .line 121
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    int-to-char p1, p1

    goto :goto_0

    .line 122
    :cond_1
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result p1

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap;->_root:Lcom/ibm/icu/impl/TextTrieMap$Node;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/TextTrieMap$Node;->hasChildFor(C)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 127
    :cond_2
    new-instance p1, Lcom/ibm/icu/impl/TextTrieMap$ParseState;

    iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap;->_root:Lcom/ibm/icu/impl/TextTrieMap$Node;

    invoke-direct {p1, p0, v0}, Lcom/ibm/icu/impl/TextTrieMap$ParseState;-><init>(Lcom/ibm/icu/impl/TextTrieMap;Lcom/ibm/icu/impl/TextTrieMap$Node;)V

    return-object p1
.end method

.method public put(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/ibm/icu/impl/TextTrieMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "TV;)",
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "TV;>;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;

    iget-boolean v1, p0, Lcom/ibm/icu/impl/TextTrieMap;->_ignoreCase:Z

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;-><init>(Ljava/lang/CharSequence;IZ)V

    .line 45
    iget-object p1, p0, Lcom/ibm/icu/impl/TextTrieMap;->_root:Lcom/ibm/icu/impl/TextTrieMap$Node;

    invoke-virtual {p1, v0, p2}, Lcom/ibm/icu/impl/TextTrieMap$Node;->add(Lcom/ibm/icu/impl/TextTrieMap$CharIterator;Ljava/lang/Object;)V

    return-object p0
.end method
