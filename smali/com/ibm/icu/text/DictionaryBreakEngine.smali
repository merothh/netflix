.class abstract Lcom/ibm/icu/text/DictionaryBreakEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ibm/icu/text/LanguageBreakEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;,
        Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;
    }
.end annotation


# instance fields
.field fSet:Lcom/ibm/icu/text/UnicodeSet;

.field private fTypes:Ljava/util/BitSet;


# direct methods
.method public varargs constructor <init>([Ljava/lang/Integer;)V
    .locals 4

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine;->fSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 156
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine;->fTypes:Ljava/util/BitSet;

    .line 163
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 164
    iget-object v3, p0, Lcom/ibm/icu/text/DictionaryBreakEngine;->fTypes:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method abstract divideUpDictionaryRange(Ljava/text/CharacterIterator;IILcom/ibm/icu/text/DictionaryBreakEngine$DequeI;)I
.end method

.method public findBreaks(Ljava/text/CharacterIterator;IIZILcom/ibm/icu/text/DictionaryBreakEngine$DequeI;)I
    .locals 1

    .line 183
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result p5

    .line 187
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v0

    if-eqz p4, :cond_2

    .line 189
    iget-object p3, p0, Lcom/ibm/icu/text/DictionaryBreakEngine;->fSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p3, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p3

    .line 190
    :goto_0
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result p4

    if-le p4, p2, :cond_0

    if-eqz p3, :cond_0

    .line 191
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    move-result p3

    .line 192
    iget-object p4, p0, Lcom/ibm/icu/text/DictionaryBreakEngine;->fSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p4, p3}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p3

    goto :goto_0

    :cond_0
    if-ge p4, p2, :cond_1

    goto :goto_1

    :cond_1
    xor-int/lit8 p2, p3, 0x1

    add-int/2addr p2, p4

    :goto_1
    add-int/lit8 p5, p5, 0x1

    move p3, p4

    move p4, p5

    goto :goto_3

    .line 198
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result p4

    if-ge p4, p3, :cond_3

    iget-object p2, p0, Lcom/ibm/icu/text/DictionaryBreakEngine;->fSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p2, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 199
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    .line 200
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v0

    goto :goto_2

    :cond_3
    move p3, p4

    move p2, p5

    .line 206
    :goto_3
    invoke-virtual {p0, p1, p2, p4, p6}, Lcom/ibm/icu/text/DictionaryBreakEngine;->divideUpDictionaryRange(Ljava/text/CharacterIterator;IILcom/ibm/icu/text/DictionaryBreakEngine$DequeI;)I

    move-result p2

    .line 207
    invoke-interface {p1, p3}, Ljava/text/CharacterIterator;->setIndex(I)C

    return p2
.end method

.method public handles(II)Z
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine;->fTypes:Ljava/util/BitSet;

    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ibm/icu/text/DictionaryBreakEngine;->fSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 171
    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method setCharacters(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 1

    .line 213
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    iput-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine;->fSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 214
    iget-object p1, p0, Lcom/ibm/icu/text/DictionaryBreakEngine;->fSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->compact()Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method
