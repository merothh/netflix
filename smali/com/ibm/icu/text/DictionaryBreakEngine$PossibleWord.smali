.class Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DictionaryBreakEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PossibleWord"
.end annotation


# instance fields
.field private count:[I

.field private current:I

.field private lengths:[I

.field private mark:I

.field private offset:I

.field private prefix:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [I

    .line 35
    iput-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->lengths:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 36
    iput-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->count:[I

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->offset:I

    return-void
.end method


# virtual methods
.method public acceptMarked(Ljava/text/CharacterIterator;)I
    .locals 3

    .line 61
    iget v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->offset:I

    iget-object v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->lengths:[I

    iget v2, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->mark:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 62
    iget-object p1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->lengths:[I

    iget v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->mark:I

    aget p1, p1, v0

    return p1
.end method

.method public backUp(Ljava/text/CharacterIterator;)Z
    .locals 4

    .line 68
    iget v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->current:I

    if-lez v0, :cond_0

    .line 69
    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->offset:I

    iget-object v2, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->lengths:[I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->current:I

    aget v0, v2, v0

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    return v3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public candidates(Ljava/text/CharacterIterator;Lcom/ibm/icu/text/DictionaryMatcher;I)I
    .locals 9

    .line 42
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    .line 43
    iget v1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->offset:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 44
    iput v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->offset:I

    sub-int v5, p3, v0

    .line 45
    iget-object v6, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->lengths:[I

    iget-object v7, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->count:[I

    array-length v8, v6

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/ibm/icu/text/DictionaryMatcher;->matches(Ljava/text/CharacterIterator;I[I[II)I

    move-result p2

    iput p2, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->prefix:I

    .line 47
    iget-object p2, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->count:[I

    aget p2, p2, v2

    if-gtz p2, :cond_0

    .line 48
    invoke-interface {p1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 51
    :cond_0
    iget-object p2, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->count:[I

    aget p3, p2, v2

    if-lez p3, :cond_1

    .line 52
    iget-object p3, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->lengths:[I

    aget p2, p2, v2

    add-int/lit8 p2, p2, -0x1

    aget p2, p3, p2

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->count:[I

    aget p2, p1, v2

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->current:I

    .line 55
    iget p2, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->current:I

    iput p2, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->mark:I

    .line 56
    aget p1, p1, v2

    return p1
.end method

.method public longestPrefix()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->prefix:I

    return v0
.end method

.method public markCurrent()V
    .locals 1

    .line 82
    iget v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->current:I

    iput v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;->mark:I

    return-void
.end method
