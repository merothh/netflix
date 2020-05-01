.class final Lcom/ibm/icu/text/PluralRanges$Matrix;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/PluralRanges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Matrix"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/ibm/icu/text/PluralRanges$Matrix;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private data:[B


# direct methods
.method constructor <init>()V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget v0, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    sget v1, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    mul-int v0, v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ibm/icu/text/PluralRanges$Matrix;->data:[B

    const/4 v0, 0x0

    .line 49
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/PluralRanges$Matrix;->data:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, -0x1

    .line 50
    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Lcom/ibm/icu/text/PluralRanges$Matrix;
    .locals 2

    .line 168
    new-instance v0, Lcom/ibm/icu/text/PluralRanges$Matrix;

    invoke-direct {v0}, Lcom/ibm/icu/text/PluralRanges$Matrix;-><init>()V

    .line 169
    iget-object v1, p0, Lcom/ibm/icu/text/PluralRanges$Matrix;->data:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/ibm/icu/text/PluralRanges$Matrix;->data:[B

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/ibm/icu/text/PluralRanges$Matrix;->clone()Lcom/ibm/icu/text/PluralRanges$Matrix;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/ibm/icu/text/PluralRanges$Matrix;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 157
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/text/PluralRanges$Matrix;->data:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 158
    aget-byte v2, v2, v1

    iget-object v3, p1, Lcom/ibm/icu/text/PluralRanges$Matrix;->data:[B

    aget-byte v3, v3, v1

    sub-int/2addr v2, v3

    if-eqz v2, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 46
    check-cast p1, Lcom/ibm/icu/text/PluralRanges$Matrix;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/PluralRanges$Matrix;->compareTo(Lcom/ibm/icu/text/PluralRanges$Matrix;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 149
    instance-of v0, p1, Lcom/ibm/icu/text/PluralRanges$Matrix;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 152
    :cond_0
    check-cast p1, Lcom/ibm/icu/text/PluralRanges$Matrix;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/PluralRanges$Matrix;->compareTo(Lcom/ibm/icu/text/PluralRanges$Matrix;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method get(Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;)Lcom/ibm/icu/impl/StandardPlural;
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRanges$Matrix;->data:[B

    invoke-virtual {p1}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result p1

    sget v1, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    mul-int p1, p1, v1

    invoke-virtual {p2}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result p2

    add-int/2addr p1, p2

    aget-byte p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 85
    :cond_0
    sget-object p2, Lcom/ibm/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/StandardPlural;

    :goto_0
    return-object p1
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 141
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/text/PluralRanges$Matrix;->data:[B

    array-length v3, v2

    if-ge v0, v3, :cond_0

    mul-int/lit8 v1, v1, 0x25

    .line 142
    aget-byte v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method setIfNew(Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;)V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRanges$Matrix;->data:[B

    invoke-virtual {p1}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    sget v2, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    mul-int v1, v1, v2

    invoke-virtual {p2}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v2

    add-int/2addr v1, v2

    aget-byte v0, v0, v1

    if-gez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRanges$Matrix;->data:[B

    invoke-virtual {p1}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result p1

    sget v1, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    mul-int p1, p1, v1

    invoke-virtual {p2}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result p2

    add-int/2addr p1, p2

    if-nez p3, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p3}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result p2

    int-to-byte p2, p2

    :goto_0
    aput-byte p2, v0, p1

    return-void

    .line 73
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Previously set value for <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/ibm/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    .line 74
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    invoke-static {}, Lcom/ibm/icu/impl/StandardPlural;->values()[Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 177
    invoke-static {}, Lcom/ibm/icu/impl/StandardPlural;->values()[Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 178
    invoke-virtual {p0, v5, v9}, Lcom/ibm/icu/text/PluralRanges$Matrix;->get(Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 180
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " & "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " \u2192 "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ";\n"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
