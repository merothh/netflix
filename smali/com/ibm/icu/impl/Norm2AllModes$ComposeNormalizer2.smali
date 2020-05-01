.class public final Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;
.super Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/Norm2AllModes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComposeNormalizer2"
.end annotation


# instance fields
.field private final onlyContiguous:Z


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/Normalizer2Impl;Z)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;-><init>(Lcom/ibm/icu/impl/Normalizer2Impl;)V

    .line 198
    iput-boolean p2, p0, Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    return-void
.end method


# virtual methods
.method public getQuickCheck(I)I
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    iget-object v1, p0, Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCompQuickCheck(I)I

    move-result p1

    return p1
.end method

.method public hasBoundaryBefore(I)Z
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(I)Z

    move-result p1

    return p1
.end method

.method public isInert(I)Z
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    iget-boolean v1, p0, Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/ibm/icu/impl/Normalizer2Impl;->hasCompBoundaryAfter(IZZ)Z

    move-result p1

    return p1
.end method

.method public isNormalized(Ljava/lang/CharSequence;)Z
    .locals 7

    .line 214
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-boolean v4, p0, Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    new-instance v6, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    iget-object v1, p0, Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x5

    invoke-direct {v6, v1, v2, v5}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Lcom/ibm/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    move-result p1

    return p1
.end method

.method protected normalize(Ljava/lang/CharSequence;Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 7

    .line 203
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-boolean v4, p0, Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    return-void
.end method

.method protected normalizeAndAppend(Ljava/lang/CharSequence;ZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    iget-boolean v1, p0, Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/ibm/icu/impl/Normalizer2Impl;->composeAndAppend(Ljava/lang/CharSequence;ZZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    return-void
.end method

.method public quickCheck(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/Normalizer$QuickCheckResult;
    .locals 6

    .line 220
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-boolean v4, p0, Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/impl/Normalizer2Impl;->composeQuickCheck(Ljava/lang/CharSequence;IIZZ)I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 222
    sget-object p1, Lcom/ibm/icu/text/Normalizer;->MAYBE:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    return-object p1

    :cond_0
    ushr-int/lit8 v0, v0, 0x1

    .line 223
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 224
    sget-object p1, Lcom/ibm/icu/text/Normalizer;->YES:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    return-object p1

    .line 226
    :cond_1
    sget-object p1, Lcom/ibm/icu/text/Normalizer;->NO:Lcom/ibm/icu/text/Normalizer$QuickCheckResult;

    return-object p1
.end method

.method public spanQuickCheckYes(Ljava/lang/CharSequence;)I
    .locals 6

    .line 231
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-boolean v4, p0, Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/impl/Normalizer2Impl;->composeQuickCheck(Ljava/lang/CharSequence;IIZZ)I

    move-result p1

    ushr-int/lit8 p1, p1, 0x1

    return p1
.end method
