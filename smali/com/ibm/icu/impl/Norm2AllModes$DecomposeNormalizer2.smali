.class public final Lcom/ibm/icu/impl/Norm2AllModes$DecomposeNormalizer2;
.super Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/Norm2AllModes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DecomposeNormalizer2"
.end annotation


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/Normalizer2Impl;)V
    .locals 0

    .line 167
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;-><init>(Lcom/ibm/icu/impl/Normalizer2Impl;)V

    return-void
.end method


# virtual methods
.method public getQuickCheck(I)I
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$DecomposeNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    iget-object v1, p0, Lcom/ibm/icu/impl/Norm2AllModes$DecomposeNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    move-result p1

    return p1
.end method

.method public hasBoundaryBefore(I)Z
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$DecomposeNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->hasDecompBoundary(IZ)Z

    move-result p1

    return p1
.end method

.method public isInert(I)Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$DecomposeNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompInert(I)Z

    move-result p1

    return p1
.end method

.method protected normalize(Ljava/lang/CharSequence;Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$DecomposeNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    return-void
.end method

.method protected normalizeAndAppend(Ljava/lang/CharSequence;ZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$DecomposeNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/impl/Normalizer2Impl;->decomposeAndAppend(Ljava/lang/CharSequence;ZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    return-void
.end method

.method public spanQuickCheckYes(Ljava/lang/CharSequence;)I
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes$DecomposeNormalizer2;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/ibm/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    move-result p1

    return p1
.end method
