.class public Lcom/ibm/icu/lang/CharSequences;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static codePoints(Ljava/lang/CharSequence;)[I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 288
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 290
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 291
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const v5, 0xdc00

    if-lt v4, v5, :cond_0

    const v5, 0xdfff

    if-gt v4, v5, :cond_0

    if-eqz v2, :cond_0

    add-int/lit8 v5, v3, -0x1

    .line 293
    aget v6, v0, v5

    int-to-char v6, v6

    const v7, 0xd800

    if-lt v6, v7, :cond_0

    const v7, 0xdbff

    if-gt v6, v7, :cond_0

    .line 296
    invoke-static {v6, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    aput v4, v0, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v3, 0x1

    .line 300
    aput v4, v0, v3

    move v3, v5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    :cond_1
    array-length p0, v0

    if-ne v3, p0, :cond_2

    return-object v0

    .line 305
    :cond_2
    new-array p0, v3, [I

    .line 306
    invoke-static {v0, v1, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public static compare(Ljava/lang/CharSequence;I)I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p1, :cond_5

    const v0, 0x10ffff

    if-gt p1, v0, :cond_5

    .line 136
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v1, 0x0

    .line 140
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/high16 v2, 0x10000

    sub-int v2, p1, v2

    const/4 v3, 0x1

    if-gez v2, :cond_2

    sub-int/2addr v1, p1

    if-eqz v1, :cond_1

    return v1

    :cond_1
    sub-int/2addr v0, v3

    return v0

    :cond_2
    ushr-int/lit8 p1, v2, 0xa

    const v4, 0xd800

    add-int/2addr p1, v4

    int-to-char p1, p1

    sub-int/2addr v1, p1

    if-eqz v1, :cond_3

    return v1

    :cond_3
    if-le v0, v3, :cond_4

    and-int/lit16 p1, v2, 0x3ff

    const v1, 0xdc00

    add-int/2addr p1, v1

    int-to-char p1, p1

    .line 158
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    sub-int/2addr p0, p1

    if-eqz p0, :cond_4

    return p0

    :cond_4
    add-int/lit8 v0, v0, -0x2

    return v0

    .line 134
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static getSingleCodePoint(Ljava/lang/CharSequence;)I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 189
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    if-lt v0, v2, :cond_4

    const/4 v3, 0x2

    if-le v0, v3, :cond_0

    goto :goto_3

    :cond_0
    const/4 v3, 0x0

    .line 193
    invoke-static {p0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p0

    const/high16 v4, 0x10000

    if-ge p0, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ne v4, v2, :cond_3

    goto :goto_2

    :cond_3
    const p0, 0x7fffffff

    :goto_2
    return p0

    :cond_4
    :goto_3
    return v1
.end method
