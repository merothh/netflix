.class public Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;
.super Lcom/ibm/icu/text/UCharacterIterator;
.source ""


# instance fields
.field private currentIndex:I

.field private replaceable:Lcom/ibm/icu/text/Replaceable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/ibm/icu/text/UCharacterIterator;-><init>()V

    if-eqz p1, :cond_0

    .line 50
    new-instance v0, Lcom/ibm/icu/text/ReplaceableString;

    invoke-direct {v0, p1}, Lcom/ibm/icu/text/ReplaceableString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 76
    :try_start_0
    invoke-super {p0}, Lcom/ibm/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;

    invoke-interface {v0}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result v0

    return v0
.end method

.method public next()I
    .locals 3

    .line 150
    iget v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    iget-object v1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;

    invoke-interface {v1}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;

    iget v1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    invoke-interface {v0, v1}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public previous()I
    .locals 2

    .line 167
    iget v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    if-lez v0, :cond_0

    .line 168
    iget-object v1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    invoke-interface {v1, v0}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public setIndex(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->replaceable:Lcom/ibm/icu/text/Replaceable;

    invoke-interface {v0}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 188
    iput p1, p0, Lcom/ibm/icu/impl/ReplaceableUCharacterIterator;->currentIndex:I

    return-void

    .line 186
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
