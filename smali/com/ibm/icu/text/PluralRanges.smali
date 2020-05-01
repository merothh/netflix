.class public final Lcom/ibm/icu/text/PluralRanges;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ibm/icu/util/Freezable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/PluralRanges$Matrix;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ibm/icu/util/Freezable<",
        "Lcom/ibm/icu/text/PluralRanges;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/ibm/icu/text/PluralRanges;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private explicit:[Z

.field private volatile isFrozen:Z

.field private matrix:Lcom/ibm/icu/text/PluralRanges$Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/ibm/icu/text/PluralRanges$Matrix;

    invoke-direct {v0}, Lcom/ibm/icu/text/PluralRanges$Matrix;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/PluralRanges;->matrix:Lcom/ibm/icu/text/PluralRanges$Matrix;

    .line 31
    sget v0, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/ibm/icu/text/PluralRanges;->explicit:[Z

    return-void
.end method


# virtual methods
.method public add(Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 203
    iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRanges;->isFrozen:Z

    if-nez v0, :cond_5

    .line 206
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRanges;->explicit:[Z

    invoke-virtual {p3}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 208
    invoke-static {}, Lcom/ibm/icu/impl/StandardPlural;->values()[Lcom/ibm/icu/impl/StandardPlural;

    move-result-object p1

    array-length v1, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p1, v3

    if-nez p2, :cond_0

    .line 210
    invoke-static {}, Lcom/ibm/icu/impl/StandardPlural;->values()[Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 211
    iget-object v9, p0, Lcom/ibm/icu/text/PluralRanges;->matrix:Lcom/ibm/icu/text/PluralRanges$Matrix;

    invoke-virtual {v9, v4, v8, p3}, Lcom/ibm/icu/text/PluralRanges$Matrix;->setIfNew(Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 214
    :cond_0
    iget-object v5, p0, Lcom/ibm/icu/text/PluralRanges;->explicit:[Z

    invoke-virtual {p2}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v6

    aput-boolean v2, v5, v6

    .line 215
    iget-object v5, p0, Lcom/ibm/icu/text/PluralRanges;->matrix:Lcom/ibm/icu/text/PluralRanges$Matrix;

    invoke-virtual {v5, v4, p2, p3}, Lcom/ibm/icu/text/PluralRanges$Matrix;->setIfNew(Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 219
    iget-object p2, p0, Lcom/ibm/icu/text/PluralRanges;->explicit:[Z

    invoke-virtual {p1}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    aput-boolean v2, p2, v1

    .line 220
    invoke-static {}, Lcom/ibm/icu/impl/StandardPlural;->values()[Lcom/ibm/icu/impl/StandardPlural;

    move-result-object p2

    array-length v1, p2

    :goto_2
    if-ge v0, v1, :cond_4

    aget-object v2, p2, v0

    .line 221
    iget-object v3, p0, Lcom/ibm/icu/text/PluralRanges;->matrix:Lcom/ibm/icu/text/PluralRanges$Matrix;

    invoke-virtual {v3, p1, v2, p3}, Lcom/ibm/icu/text/PluralRanges$Matrix;->setIfNew(Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRanges;->explicit:[Z

    invoke-virtual {p1}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    aput-boolean v2, v0, v1

    .line 225
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRanges;->explicit:[Z

    invoke-virtual {p2}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    aput-boolean v2, v0, v1

    .line 226
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRanges;->matrix:Lcom/ibm/icu/text/PluralRanges$Matrix;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/text/PluralRanges$Matrix;->setIfNew(Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;)V

    :cond_4
    return-void

    .line 204
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public compareTo(Lcom/ibm/icu/text/PluralRanges;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRanges;->matrix:Lcom/ibm/icu/text/PluralRanges$Matrix;

    iget-object p1, p1, Lcom/ibm/icu/text/PluralRanges;->matrix:Lcom/ibm/icu/text/PluralRanges$Matrix;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/PluralRanges$Matrix;->compareTo(Lcom/ibm/icu/text/PluralRanges$Matrix;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 26
    check-cast p1, Lcom/ibm/icu/text/PluralRanges;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/PluralRanges;->compareTo(Lcom/ibm/icu/text/PluralRanges;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 290
    :cond_0
    instance-of v1, p1, Lcom/ibm/icu/text/PluralRanges;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 293
    :cond_1
    check-cast p1, Lcom/ibm/icu/text/PluralRanges;

    .line 294
    iget-object v1, p0, Lcom/ibm/icu/text/PluralRanges;->matrix:Lcom/ibm/icu/text/PluralRanges$Matrix;

    iget-object v3, p1, Lcom/ibm/icu/text/PluralRanges;->matrix:Lcom/ibm/icu/text/PluralRanges$Matrix;

    invoke-virtual {v1, v3}, Lcom/ibm/icu/text/PluralRanges$Matrix;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ibm/icu/text/PluralRanges;->explicit:[Z

    iget-object p1, p1, Lcom/ibm/icu/text/PluralRanges;->explicit:[Z

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public freeze()Lcom/ibm/icu/text/PluralRanges;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 338
    iput-boolean v0, p0, Lcom/ibm/icu/text/PluralRanges;->isFrozen:Z

    return-object p0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRanges;->matrix:Lcom/ibm/icu/text/PluralRanges$Matrix;

    invoke-virtual {v0}, Lcom/ibm/icu/text/PluralRanges$Matrix;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRanges;->matrix:Lcom/ibm/icu/text/PluralRanges$Matrix;

    invoke-virtual {v0}, Lcom/ibm/icu/text/PluralRanges$Matrix;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
