.class public final Lcom/ibm/icu/impl/CharacterIteration;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static current32(Ljava/text/CharacterIterator;)I
    .locals 3

    .line 105
    invoke-interface {p0}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    const v1, 0xd800

    if-ge v0, v1, :cond_0

    return v0

    .line 110
    :cond_0
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v2

    .line 112
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    int-to-char p0, v2

    .line 113
    invoke-static {p0}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result p0

    if-eqz p0, :cond_2

    sub-int/2addr v0, v1

    shl-int/lit8 p0, v0, 0xa

    const v0, 0xdc00

    sub-int/2addr v2, v0

    add-int/2addr p0, v2

    const/high16 v0, 0x10000

    add-int/2addr v0, p0

    goto :goto_0

    :cond_1
    const v1, 0xffff

    if-ne v0, v1, :cond_2

    .line 120
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result p0

    if-lt v1, p0, :cond_2

    const v0, 0x7fffffff

    :cond_2
    :goto_0
    return v0
.end method

.method public static next32(Ljava/text/CharacterIterator;)I
    .locals 3

    .line 34
    invoke-interface {p0}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    const v1, 0xd800

    if-lt v0, v1, :cond_1

    const v2, 0xdbff

    if-gt v0, v2, :cond_1

    .line 36
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    const v2, 0xdc00

    if-lt v0, v2, :cond_0

    const v2, 0xdfff

    if-le v0, v2, :cond_1

    .line 38
    :cond_0
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    .line 43
    :cond_1
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    if-lt v0, v1, :cond_2

    .line 48
    invoke-static {p0, v0}, Lcom/ibm/icu/impl/CharacterIteration;->nextTrail32(Ljava/text/CharacterIterator;I)I

    move-result v0

    :cond_2
    const/high16 v1, 0x10000

    if-lt v0, v1, :cond_3

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    .line 54
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    :cond_3
    return v0
.end method

.method public static nextTrail32(Ljava/text/CharacterIterator;I)I
    .locals 2

    const v0, 0xffff

    if-ne p1, v0, :cond_0

    .line 68
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    if-lt v0, v1, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const v0, 0xdbff

    if-gt p1, v0, :cond_2

    .line 73
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    .line 74
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1

    const p0, 0xd800

    sub-int/2addr p1, p0

    shl-int/lit8 p0, p1, 0xa

    const p1, 0xdc00

    sub-int/2addr v0, p1

    add-int/2addr p0, v0

    const/high16 p1, 0x10000

    add-int/2addr p1, p0

    goto :goto_0

    .line 79
    :cond_1
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    :cond_2
    :goto_0
    return p1
.end method

.method public static previous32(Ljava/text/CharacterIterator;)I
    .locals 3

    .line 86
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    if-gt v0, v1, :cond_0

    const p0, 0x7fffffff

    return p0

    .line 89
    :cond_0
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    move-result v0

    .line 91
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 92
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    move-result v1

    .line 93
    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const p0, 0xd800

    sub-int/2addr v1, p0

    shl-int/lit8 p0, v1, 0xa

    const v1, 0xdc00

    sub-int/2addr v0, v1

    add-int/2addr p0, v0

    const/high16 v0, 0x10000

    add-int/2addr v0, p0

    goto :goto_0

    .line 98
    :cond_1
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    :cond_2
    :goto_0
    return v0
.end method
