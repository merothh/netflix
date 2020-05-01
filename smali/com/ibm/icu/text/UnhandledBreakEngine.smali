.class final Lcom/ibm/icu/text/UnhandledBreakEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ibm/icu/text/LanguageBreakEngine;


# instance fields
.field final fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lcom/ibm/icu/text/UnicodeSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lcom/ibm/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x0

    .line 40
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/ibm/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    new-instance v2, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v2}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public findBreaks(Ljava/text/CharacterIterator;IIZILcom/ibm/icu/text/DictionaryBreakEngine$DequeI;)I
    .locals 0

    if-ltz p5, :cond_1

    .line 54
    iget-object p6, p0, Lcom/ibm/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result p6

    if-ge p5, p6, :cond_1

    .line 55
    iget-object p6, p0, Lcom/ibm/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p6, p5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/ibm/icu/text/UnicodeSet;

    .line 56
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result p6

    if-eqz p4, :cond_0

    .line 58
    :goto_0
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result p3

    if-le p3, p2, :cond_1

    invoke-virtual {p5, p6}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 59
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    .line 60
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result p6

    goto :goto_0

    .line 63
    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result p2

    if-ge p2, p3, :cond_1

    invoke-virtual {p5, p6}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 64
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    .line 65
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result p6

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public handleChar(II)V
    .locals 3

    if-ltz p2, :cond_0

    .line 79
    iget-object v0, p0, Lcom/ibm/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/ibm/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/UnicodeSet;

    .line 81
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x100a

    .line 82
    invoke-static {p1, v1}, Lcom/ibm/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result p1

    .line 83
    new-instance v2, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v2}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    .line 84
    invoke-virtual {v2, v1, p1}, Lcom/ibm/icu/text/UnicodeSet;->applyIntPropertyValue(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 85
    invoke-virtual {v2, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 86
    iget-object p1, p0, Lcom/ibm/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p1, p2, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public handles(II)Z
    .locals 1

    if-ltz p2, :cond_0

    .line 47
    iget-object v0, p0, Lcom/ibm/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/UnhandledBreakEngine;->fHandled:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 48
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ibm/icu/text/UnicodeSet;

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
