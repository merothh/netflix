.class public final Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ibm/icu/impl/UCaseProps$ContextIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/CaseMapImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringContextIterator"
.end annotation


# instance fields
.field protected cpLimit:I

.field protected cpStart:I

.field protected dir:I

.field protected index:I

.field protected limit:I

.field protected s:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->s:Ljava/lang/CharSequence;

    .line 24
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->limit:I

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpStart:I

    .line 26
    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->dir:I

    return-void
.end method


# virtual methods
.method public getCPLength()I
    .locals 2

    .line 93
    iget v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    iget v1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCPLimit()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    return v0
.end method

.method public getCPStart()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpStart:I

    return v0
.end method

.method public moveToLimit()V
    .locals 1

    .line 51
    iget v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->limit:I

    iput v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    iput v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpStart:I

    return-void
.end method

.method public next()I
    .locals 3

    .line 119
    iget v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->dir:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    iget-object v1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 121
    iget v1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    return v0

    .line 123
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->dir:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    if-lez v0, :cond_1

    .line 124
    iget-object v1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->s:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 125
    iget v1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public nextCaseMapCP()I
    .locals 3

    .line 66
    iget v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    iput v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpStart:I

    .line 67
    iget v1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->limit:I

    if-ge v0, v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->s:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 69
    iget v1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public reset(I)V
    .locals 0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 102
    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->dir:I

    .line 103
    iget p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, -0x1

    .line 106
    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->dir:I

    .line 107
    iget p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpStart:I

    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 110
    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->dir:I

    .line 111
    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    :goto_0
    return-void
.end method

.method public setLimit(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 41
    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->limit:I

    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->limit:I

    :goto_0
    return-void
.end method
