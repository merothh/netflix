.class public final Lcom/ibm/icu/impl/Normalizer2Impl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/Normalizer2Impl$IsAcceptable;,
        Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;,
        Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;,
        Lcom/ibm/icu/impl/Normalizer2Impl$Hangul;
    }
.end annotation


# static fields
.field private static final IS_ACCEPTABLE:Lcom/ibm/icu/impl/Normalizer2Impl$IsAcceptable;

.field private static final segmentStarterMapper:Lcom/ibm/icu/impl/Trie2$ValueMapper;


# instance fields
.field private canonIterData:Lcom/ibm/icu/impl/Trie2_32;

.field private canonStartSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ibm/icu/text/UnicodeSet;",
            ">;"
        }
    .end annotation
.end field

.field private dataVersion:Lcom/ibm/icu/util/VersionInfo;

.field private extraData:Ljava/lang/String;

.field private limitNoNo:I

.field private maybeYesCompositions:Ljava/lang/String;

.field private minCompNoMaybeCP:I

.field private minDecompNoCP:I

.field private minMaybeYes:I

.field private minNoNo:I

.field private minYesNo:I

.field private minYesNoMappingsOnly:I

.field private normTrie:Lcom/ibm/icu/impl/Trie2_16;

.field private smallFCD:[B

.field private tccc180:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 424
    new-instance v0, Lcom/ibm/icu/impl/Normalizer2Impl$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl$IsAcceptable;-><init>(Lcom/ibm/icu/impl/Normalizer2Impl$1;)V

    sput-object v0, Lcom/ibm/icu/impl/Normalizer2Impl;->IS_ACCEPTABLE:Lcom/ibm/icu/impl/Normalizer2Impl$IsAcceptable;

    .line 566
    new-instance v0, Lcom/ibm/icu/impl/Normalizer2Impl$1;

    invoke-direct {v0}, Lcom/ibm/icu/impl/Normalizer2Impl$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/Normalizer2Impl;->segmentStarterMapper:Lcom/ibm/icu/impl/Trie2$ValueMapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addToStartSet(Lcom/ibm/icu/impl/Trie2Writable;II)V
    .locals 4

    .line 2169
    invoke-virtual {p1, p3}, Lcom/ibm/icu/impl/Trie2Writable;->get(I)I

    move-result v0

    const v1, 0x3fffff

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    or-int/2addr p2, v0

    .line 2173
    invoke-virtual {p1, p3, p2}, Lcom/ibm/icu/impl/Trie2Writable;->set(II)Lcom/ibm/icu/impl/Trie2Writable;

    goto :goto_1

    :cond_0
    const/high16 v1, 0x200000

    and-int v2, v0, v1

    const v3, 0x1fffff

    if-nez v2, :cond_1

    and-int v2, v0, v3

    const/high16 v3, -0x200000

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    .line 2179
    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    or-int/2addr v0, v1

    .line 2180
    invoke-virtual {p1, p3, v0}, Lcom/ibm/icu/impl/Trie2Writable;->set(II)Lcom/ibm/icu/impl/Trie2Writable;

    .line 2181
    iget-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    new-instance p3, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {p3}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_2

    .line 2183
    invoke-virtual {p3, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 2186
    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    and-int p3, v0, v3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lcom/ibm/icu/text/UnicodeSet;

    .line 2188
    :cond_2
    :goto_0
    invoke-virtual {p3, p2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    :goto_1
    return-void
.end method

.method private static combine(Ljava/lang/String;II)I
    .locals 3

    const/16 v0, 0x3400

    if-ge p2, v0, :cond_2

    shl-int/lit8 p2, p2, 0x1

    .line 1832
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-le p2, v0, :cond_0

    and-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v0, 0x7ffe

    if-ne p2, v1, :cond_6

    and-int/lit8 p2, v0, 0x1

    if-eqz p2, :cond_1

    add-int/lit8 p2, p1, 0x1

    .line 1837
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    shl-int/lit8 p2, p2, 0x10

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    or-int/2addr p0, p2

    return p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 1839
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_2
    shr-int/lit8 v1, p2, 0x9

    and-int/lit8 v1, v1, -0x2

    add-int/2addr v1, v0

    shl-int/lit8 p2, p2, 0x6

    const v0, 0xffff

    and-int/2addr p2, v0

    .line 1849
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-le v1, v0, :cond_3

    and-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    goto :goto_1

    :cond_3
    and-int/lit16 v2, v0, 0x7ffe

    if-ne v1, v2, :cond_6

    add-int/lit8 v2, p1, 0x1

    .line 1852
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-le p2, v2, :cond_5

    const v2, 0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 p1, p1, 0x3

    goto :goto_1

    :cond_5
    const v0, 0xffc0

    and-int/2addr v0, v2

    if-ne p2, v0, :cond_6

    const p2, -0xffc1

    and-int/2addr p2, v2

    shl-int/lit8 p2, p2, 0x10

    add-int/lit8 p1, p1, 0x2

    .line 1859
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    or-int/2addr p0, p2

    return p0

    :cond_6
    :goto_2
    const/4 p0, -0x1

    return p0
.end method

.method private decompose(IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 7

    .line 1774
    :goto_0
    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1776
    invoke-static {p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result p2

    invoke-virtual {p3, p1, p2}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(II)V

    goto :goto_2

    .line 1777
    :cond_0
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->isHangul(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1779
    invoke-static {p1, p3}, Lcom/ibm/icu/impl/Normalizer2Impl$Hangul;->decompose(ILjava/lang/Appendable;)I

    goto :goto_2

    .line 1780
    :cond_1
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1781
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result p1

    .line 1782
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p2

    goto :goto_0

    .line 1786
    :cond_2
    iget-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    and-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v6, p1, 0x8

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_3

    .line 1791
    iget-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    shr-int/lit8 p1, p1, 0x8

    move v5, p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v3, p2, 0x1

    .line 1796
    iget-object v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int v4, v3, v0

    move-object v1, p3

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;IIII)V

    :goto_2
    return-void
.end method

.method private enumLcccRange(IIILcom/ibm/icu/text/UnicodeSet;)V
    .locals 1

    .line 500
    invoke-virtual {p0, p3}, Lcom/ibm/icu/impl/Normalizer2Impl;->isAlgorithmicNoNo(I)Z

    move-result p3

    const/16 v0, 0xff

    if-eqz p3, :cond_2

    .line 504
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result p3

    if-le p3, v0, :cond_1

    .line 505
    invoke-virtual {p4, p1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    :cond_1
    add-int/lit8 p1, p1, 0x1

    if-le p1, p2, :cond_0

    goto :goto_0

    .line 508
    :cond_2
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result p3

    if-le p3, v0, :cond_3

    .line 509
    invoke-virtual {p4, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->add(II)Lcom/ibm/icu/text/UnicodeSet;

    :cond_3
    :goto_0
    return-void
.end method

.method private enumNorm16PropertyStartsRange(IIILcom/ibm/icu/text/UnicodeSet;)V
    .locals 1

    .line 515
    invoke-virtual {p4, p1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    if-eq p1, p2, :cond_1

    .line 516
    invoke-virtual {p0, p3}, Lcom/ibm/icu/impl/Normalizer2Impl;->isAlgorithmicNoNo(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 519
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result p3

    :cond_0
    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-gt p1, p2, :cond_1

    .line 521
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 523
    invoke-virtual {p4, p1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move p3, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private findNextCompBoundary(Ljava/lang/CharSequence;II)I
    .locals 2

    :goto_0
    if-ge p2, p3, :cond_1

    .line 2137
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 2138
    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v1

    .line 2139
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2142
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method private findNextFCDBoundary(Ljava/lang/CharSequence;II)I
    .locals 3

    :goto_0
    if-ge p2, p3, :cond_1

    .line 2159
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    const/16 v1, 0x300

    if-lt v0, v1, :cond_1

    .line 2160
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_0

    goto :goto_1

    .line 2163
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method private findPreviousCompBoundary(Ljava/lang/CharSequence;I)I
    .locals 2

    :cond_0
    if-lez p2, :cond_1

    .line 2125
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 2126
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr p2, v1

    .line 2127
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return p2
.end method

.method private findPreviousFCDBoundary(Ljava/lang/CharSequence;I)I
    .locals 2

    :cond_0
    if-lez p2, :cond_1

    .line 2149
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 2150
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr p2, v1

    const/16 v1, 0x300

    if-lt v0, v1, :cond_1

    .line 2151
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    :cond_1
    return p2
.end method

.method private getCCFromNoNo(I)I
    .locals 1

    .line 1690
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 1691
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static getCCFromYesOrMaybe(I)I
    .locals 1

    const v0, 0xfe00

    if-lt p0, v0, :cond_0

    and-int/lit16 p0, p0, 0xff

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getCompositionsListForComposite(I)I
    .locals 3

    .line 1741
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1742
    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    const v2, 0xfe00

    sub-int/2addr v2, v1

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    and-int/lit8 p1, v0, 0x1f

    add-int/2addr v2, p1

    return v2
.end method

.method private getCompositionsListForDecompYes(I)I
    .locals 2

    if-eqz p1, :cond_2

    const v0, 0xfe00

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 1727
    :cond_0
    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    sub-int/2addr p1, v1

    if-gez p1, :cond_1

    add-int/2addr p1, v0

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method private hasCompBoundaryBefore(II)Z
    .locals 3

    .line 2103
    :goto_0
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2105
    :cond_0
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 2107
    :cond_1
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2108
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result p1

    .line 2109
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p2

    goto :goto_0

    .line 2112
    :cond_2
    iget-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    and-int/lit8 v0, p1, 0x1f

    if-nez v0, :cond_3

    return v2

    :cond_3
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_4

    .line 2116
    iget-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const v0, 0xff00

    and-int/2addr p1, v0

    if-eqz p1, :cond_4

    return v2

    .line 2119
    :cond_4
    iget-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/2addr p2, v1

    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result p1

    return p1
.end method

.method private isCompYesAndZeroCC(I)Z
    .locals 1

    .line 1659
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNo:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isDecompNoAlgorithmic(I)Z
    .locals 1

    .line 1682
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isDecompYesAndZeroCC(I)Z
    .locals 1

    .line 1670
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-lt p1, v0, :cond_1

    const v0, 0xff00

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-gt v0, p1, :cond_0

    const v0, 0xfe00

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isHangul(I)Z
    .locals 1

    .line 1658
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static isInert(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isJamoVT(I)Z
    .locals 1

    const v0, 0xff00

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMaybe(I)Z
    .locals 1

    .line 1653
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-gt v0, p1, :cond_0

    const v0, 0xff00

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isMaybeOrNonZeroCC(I)Z
    .locals 1

    .line 1654
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isMostDecompYesAndZeroCC(I)Z
    .locals 1

    .line 1680
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-lt p1, v0, :cond_1

    const v0, 0xfe00

    if-eq p1, v0, :cond_1

    const v0, 0xff00

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private mapAlgorithmic(II)I
    .locals 0

    add-int/2addr p1, p2

    .line 1714
    iget p2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    add-int/lit8 p2, p2, -0x40

    add-int/lit8 p2, p2, -0x1

    sub-int/2addr p1, p2

    return p1
.end method

.method private recompose(Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;IZ)V
    .locals 15

    move-object v0, p0

    .line 1905
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1907
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    move/from16 v3, p2

    if-ne v3, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 1926
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v10

    .line 1927
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    add-int/2addr v3, v11

    .line 1928
    invoke-virtual {p0, v10}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v11

    .line 1929
    invoke-static {v11}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result v12

    .line 1931
    invoke-direct {p0, v11}, Lcom/ibm/icu/impl/Normalizer2Impl;->isMaybe(I)Z

    move-result v13

    const v14, 0xffff

    if-eqz v13, :cond_9

    if-ltz v6, :cond_9

    if-lt v7, v12, :cond_1

    if-nez v7, :cond_9

    .line 1937
    :cond_1
    invoke-static {v11}, Lcom/ibm/icu/impl/Normalizer2Impl;->isJamoVT(I)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v6, 0x11a7

    if-ge v10, v6, :cond_3

    .line 1941
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    add-int/lit16 v11, v11, -0x1100

    int-to-char v11, v11

    const/16 v12, 0x13

    if-ge v11, v12, :cond_3

    add-int/lit8 v12, v3, -0x1

    const v13, 0xac00

    mul-int/lit8 v11, v11, 0x15

    add-int/lit16 v10, v10, -0x1161

    add-int/2addr v11, v10

    const/16 v10, 0x1c

    mul-int/lit8 v11, v11, 0x1c

    add-int/2addr v11, v13

    int-to-char v11, v11

    .line 1949
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-eq v3, v13, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    sub-int/2addr v13, v6

    int-to-char v6, v13

    if-ge v6, v10, :cond_2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v11, v6

    int-to-char v11, v11

    .line 1953
    :cond_2
    invoke-virtual {v1, v9, v11}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1955
    invoke-virtual {v1, v12, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v3, v12

    .line 1965
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ne v3, v6, :cond_d

    goto/16 :goto_3

    .line 1970
    :cond_4
    iget-object v13, v0, Lcom/ibm/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    invoke-static {v13, v6, v10}, Lcom/ibm/icu/impl/Normalizer2Impl;->combine(Ljava/lang/String;II)I

    move-result v13

    if-ltz v13, :cond_9

    shr-int/lit8 v6, v13, 0x1

    .line 1975
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    sub-int v11, v3, v11

    .line 1976
    invoke-virtual {v1, v11, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_6

    if-le v6, v14, :cond_5

    .line 1982
    invoke-static {v6}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v3

    invoke-virtual {v1, v9, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v3, v9, 0x1

    .line 1983
    invoke-static {v6}, Lcom/ibm/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v10

    invoke-virtual {v1, v3, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    :cond_5
    int-to-char v3, v10

    .line 1985
    invoke-virtual {v1, v9, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v3, v9, 0x1

    .line 1986
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, -0x1

    move v3, v11

    const/4 v8, 0x0

    goto :goto_2

    :cond_6
    if-le v6, v14, :cond_7

    .line 1996
    invoke-static {v6}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v3

    invoke-virtual {v1, v9, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v3, v9, 0x1

    .line 1997
    invoke-static {v6}, Lcom/ibm/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v8

    invoke-virtual {v1, v3, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    move v3, v11

    const/4 v8, 0x1

    goto :goto_2

    :cond_7
    int-to-char v3, v6

    .line 2001
    invoke-virtual {v1, v9, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_1
    move v3, v11

    .line 2006
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-ne v3, v10, :cond_8

    goto :goto_3

    :cond_8
    and-int/lit8 v10, v13, 0x1

    if-eqz v10, :cond_d

    .line 2012
    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCompositionsListForComposite(I)I

    move-result v6

    goto/16 :goto_0

    .line 2024
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ne v3, v7, :cond_a

    .line 2046
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->flush()V

    return-void

    :cond_a
    if-nez v12, :cond_c

    .line 2031
    invoke-direct {p0, v11}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCompositionsListForDecompYes(I)I

    move-result v6

    if-ltz v6, :cond_e

    if-gt v10, v14, :cond_b

    add-int/lit8 v9, v3, -0x1

    move v7, v12

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v9, v3, -0x2

    move v7, v12

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_c
    if-eqz p3, :cond_e

    move v7, v12

    :cond_d
    const/4 v6, -0x1

    goto/16 :goto_0

    :cond_e
    move v7, v12

    goto/16 :goto_0
.end method


# virtual methods
.method public addCanonIterPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 3

    .line 557
    invoke-virtual {p0}, Lcom/ibm/icu/impl/Normalizer2Impl;->ensureCanonIterData()Lcom/ibm/icu/impl/Normalizer2Impl;

    .line 559
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->canonIterData:Lcom/ibm/icu/impl/Trie2_32;

    sget-object v1, Lcom/ibm/icu/impl/Normalizer2Impl;->segmentStarterMapper:Lcom/ibm/icu/impl/Trie2$ValueMapper;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/Trie2_32;->iterator(Lcom/ibm/icu/impl/Trie2$ValueMapper;)Ljava/util/Iterator;

    move-result-object v0

    .line 561
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/Trie2$Range;

    iget-boolean v2, v1, Lcom/ibm/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v2, :cond_0

    .line 563
    iget v1, v1, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-virtual {p1, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addLcccChars(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 4

    .line 532
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 534
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/Trie2$Range;

    iget-boolean v2, v1, Lcom/ibm/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v2, :cond_0

    .line 535
    iget v2, v1, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    iget v3, v1, Lcom/ibm/icu/impl/Trie2$Range;->endCodePoint:I

    iget v1, v1, Lcom/ibm/icu/impl/Trie2$Range;->value:I

    invoke-direct {p0, v2, v3, v1, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->enumLcccRange(IIILcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 4

    .line 541
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 543
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/Trie2$Range;

    iget-boolean v2, v1, Lcom/ibm/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v2, :cond_0

    .line 544
    iget v2, v1, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    iget v3, v1, Lcom/ibm/icu/impl/Trie2$Range;->endCodePoint:I

    iget v1, v1, Lcom/ibm/icu/impl/Trie2$Range;->value:I

    invoke-direct {p0, v2, v3, v1, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->enumNorm16PropertyStartsRange(IIILcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_0

    :cond_0
    const v0, 0xac00

    :goto_1
    const v1, 0xd7a4

    if-ge v0, v1, :cond_1

    .line 549
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    add-int/lit8 v1, v0, 0x1

    .line 550
    invoke-virtual {p1, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    add-int/lit8 v0, v0, 0x1c

    goto :goto_1

    .line 552
    :cond_1
    invoke-virtual {p1, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method public compose(Ljava/lang/CharSequence;IIZZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    .line 1054
    iget v5, v0, Lcom/ibm/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    const/4 v6, 0x0

    move/from16 v7, p2

    move v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x0

    :goto_1
    move v12, v10

    move v10, v9

    move v9, v7

    :goto_2
    if-eq v9, v2, :cond_5

    .line 1079
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_4

    iget-object v12, v0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/impl/Trie2_16;

    int-to-char v13, v10

    .line 1080
    invoke-virtual {v12, v13}, Lcom/ibm/icu/impl/Trie2_16;->getFromU16SingleLead(C)I

    move-result v12

    invoke-direct {v0, v12}, Lcom/ibm/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v14

    if-eqz v14, :cond_0

    goto :goto_4

    .line 1083
    :cond_0
    invoke-static {v13}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result v14

    if-nez v14, :cond_1

    goto :goto_5

    .line 1087
    :cond_1
    invoke-static {v10}, Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v12

    if-eqz v12, :cond_2

    add-int/lit8 v12, v9, 0x1

    if-eq v12, v2, :cond_3

    .line 1088
    invoke-interface {v1, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1089
    invoke-static {v13, v12}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v10

    goto :goto_3

    :cond_2
    if-ge v7, v9, :cond_3

    add-int/lit8 v12, v9, -0x1

    .line 1092
    invoke-interface {v1, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v14

    if-eqz v14, :cond_3

    add-int/lit8 v9, v9, -0x1

    .line 1094
    invoke-static {v12, v13}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v10

    .line 1097
    :cond_3
    :goto_3
    invoke-virtual {v0, v10}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v12

    invoke-direct {v0, v12}, Lcom/ibm/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1098
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v13

    add-int/2addr v9, v13

    goto :goto_2

    :cond_4
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    :goto_5
    const/4 v13, 0x1

    if-eq v9, v7, :cond_9

    if-ne v9, v2, :cond_6

    if-eqz p5, :cond_a

    .line 1108
    invoke-virtual {v4, v1, v7, v9}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    goto :goto_7

    :cond_6
    add-int/lit8 v8, v9, -0x1

    .line 1114
    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v14

    if-eqz v14, :cond_7

    if-ge v7, v8, :cond_7

    add-int/lit8 v14, v8, -0x1

    .line 1115
    invoke-interface {v1, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v14

    if-eqz v14, :cond_7

    add-int/lit8 v8, v8, -0x1

    :cond_7
    if-eqz p5, :cond_8

    .line 1122
    invoke-virtual {v4, v1, v7, v8}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1123
    invoke-virtual {v4, v1, v8, v9}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    goto :goto_6

    :cond_8
    const/4 v11, 0x0

    :goto_6
    move v7, v9

    goto :goto_8

    :cond_9
    if-ne v9, v2, :cond_b

    :cond_a
    :goto_7
    return v13

    .line 1133
    :cond_b
    :goto_8
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v14

    add-int/2addr v9, v14

    .line 1141
    invoke-static {v12}, Lcom/ibm/icu/impl/Normalizer2Impl;->isJamoVT(I)Z

    move-result v14

    if-eqz v14, :cond_12

    if-eq v8, v7, :cond_12

    add-int/lit8 v14, v7, -0x1

    .line 1142
    invoke-interface {v1, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    const/16 v15, 0x11a7

    if-ge v10, v15, :cond_e

    add-int/lit16 v14, v14, -0x1100

    int-to-char v14, v14

    const/16 v13, 0x13

    if-ge v14, v13, :cond_10

    if-nez p5, :cond_c

    return v6

    :cond_c
    const v13, 0xac00

    mul-int/lit8 v14, v14, 0x15

    add-int/lit16 v6, v10, -0x1161

    add-int/2addr v14, v6

    const/16 v6, 0x1c

    mul-int/lit8 v14, v14, 0x1c

    add-int/2addr v14, v13

    int-to-char v13, v14

    if-eq v9, v2, :cond_d

    .line 1156
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    sub-int/2addr v14, v15

    int-to-char v14, v14

    if-ge v14, v6, :cond_d

    add-int/lit8 v8, v9, 0x1

    add-int/2addr v13, v14

    int-to-char v6, v13

    .line 1160
    invoke-virtual {v4, v6}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->setLastChar(C)V

    move v7, v8

    goto :goto_c

    :cond_d
    const/4 v6, 0x1

    goto :goto_9

    .line 1174
    :cond_e
    invoke-static {v14}, Lcom/ibm/icu/impl/Normalizer2Impl$Hangul;->isHangulWithoutJamoT(C)Z

    move-result v6

    if-eqz v6, :cond_10

    if-nez p5, :cond_f

    const/4 v6, 0x0

    return v6

    :cond_f
    add-int/2addr v14, v10

    sub-int/2addr v14, v15

    int-to-char v6, v14

    .line 1180
    invoke-virtual {v4, v6}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->setLastChar(C)V

    move v7, v9

    move v8, v7

    goto :goto_c

    :cond_10
    const/4 v6, 0x0

    :goto_9
    if-nez v6, :cond_12

    if-eqz p5, :cond_11

    int-to-char v6, v10

    .line 1187
    invoke-virtual {v4, v6}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(C)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    goto :goto_b

    :cond_11
    move v7, v9

    move v9, v10

    move v10, v12

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_12
    const v6, 0xff01

    if-lt v12, v6, :cond_17

    and-int/lit16 v6, v12, 0xff

    if-eqz v3, :cond_14

    if-eqz p5, :cond_13

    .line 1219
    invoke-virtual/range {p6 .. p6}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->getLastCC()I

    move-result v13

    goto :goto_a

    :cond_13
    move v13, v11

    :goto_a
    if-nez v13, :cond_14

    if-ge v8, v7, :cond_14

    .line 1228
    invoke-virtual {v0, v1, v8, v7}, Lcom/ibm/icu/impl/Normalizer2Impl;->getTrailCCFromCompYesAndZeroCC(Ljava/lang/CharSequence;II)I

    move-result v13

    if-le v13, v6, :cond_14

    if-nez p5, :cond_18

    const/4 v6, 0x0

    return v6

    :cond_14
    if-eqz p5, :cond_15

    .line 1235
    invoke-virtual {v4, v10, v6}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(II)V

    :goto_b
    move v7, v9

    :goto_c
    move v9, v10

    move v10, v12

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_15
    if-gt v11, v6, :cond_16

    move v11, v6

    goto :goto_b

    :cond_16
    const/4 v6, 0x0

    return v6

    :cond_17
    const/4 v6, 0x0

    if-nez p5, :cond_18

    .line 1243
    invoke-direct {v0, v12}, Lcom/ibm/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    move-result v13

    if-nez v13, :cond_18

    return v6

    .line 1262
    :cond_18
    invoke-direct {v0, v10, v12}, Lcom/ibm/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(II)Z

    move-result v6

    if-eqz v6, :cond_19

    goto :goto_d

    :cond_19
    if-eqz p5, :cond_1a

    sub-int/2addr v7, v8

    .line 1265
    invoke-virtual {v4, v7}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    :cond_1a
    move v7, v8

    .line 1270
    :goto_d
    invoke-direct {v0, v1, v9, v2}, Lcom/ibm/icu/impl/Normalizer2Impl;->findNextCompBoundary(Ljava/lang/CharSequence;II)I

    move-result v8

    .line 1273
    invoke-virtual/range {p6 .. p6}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v6

    .line 1274
    invoke-virtual {v0, v1, v7, v8, v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->decomposeShort(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    .line 1275
    invoke-direct {v0, v4, v6, v3}, Lcom/ibm/icu/impl/Normalizer2Impl;->recompose(Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;IZ)V

    if-nez p5, :cond_1c

    .line 1277
    invoke-virtual {v4, v1, v7, v8}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->equals(Ljava/lang/CharSequence;II)Z

    move-result v6

    if-nez v6, :cond_1b

    const/4 v6, 0x0

    return v6

    :cond_1b
    const/4 v6, 0x0

    .line 1280
    invoke-virtual/range {p6 .. p6}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->remove()V

    const/4 v11, 0x0

    goto :goto_e

    :cond_1c
    const/4 v6, 0x0

    :goto_e
    move v7, v8

    move v9, v10

    move v10, v12

    goto/16 :goto_1
.end method

.method public composeAndAppend(Ljava/lang/CharSequence;ZZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 11

    .line 1397
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 1398
    invoke-virtual {p4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1399
    invoke-direct {p0, p1, v1, v3}, Lcom/ibm/icu/impl/Normalizer2Impl;->findNextCompBoundary(Ljava/lang/CharSequence;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1401
    invoke-virtual {p4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1402
    invoke-virtual {p4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v4

    .line 1401
    invoke-direct {p0, v2, v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->findPreviousCompBoundary(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1403
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v4

    sub-int/2addr v4, v2

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x10

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1405
    invoke-virtual {p4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v6

    invoke-virtual {v5, v4, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1406
    invoke-virtual {p4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p4, v4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    .line 1407
    invoke-virtual {v5, p1, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    .line 1408
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/4 v9, 0x1

    move-object v4, p0

    move v8, p3

    move-object v10, p4

    invoke-virtual/range {v4 .. v10}, Lcom/ibm/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v6, p4

    .line 1413
    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    goto :goto_1

    .line 1415
    :cond_1
    invoke-virtual {p4, p1, v2, v3}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :goto_1
    return-void
.end method

.method public composeQuickCheck(Ljava/lang/CharSequence;IIZZ)I
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 1300
    iget v3, v0, Lcom/ibm/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move/from16 v6, p2

    move v9, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    move v10, v6

    :goto_1
    if-ne v10, v2, :cond_0

    shl-int/lit8 v1, v10, 0x1

    or-int/2addr v1, v7

    return v1

    .line 1318
    :cond_0
    invoke-interface {v1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-lt v11, v3, :cond_d

    iget-object v12, v0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/impl/Trie2_16;

    int-to-char v13, v11

    .line 1319
    invoke-virtual {v12, v13}, Lcom/ibm/icu/impl/Trie2_16;->getFromU16SingleLead(C)I

    move-result v12

    invoke-direct {p0, v12}, Lcom/ibm/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v14

    if-eqz v14, :cond_1

    goto/16 :goto_5

    .line 1322
    :cond_1
    invoke-static {v13}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_3

    .line 1326
    :cond_2
    invoke-static {v11}, Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v12

    if-eqz v12, :cond_3

    add-int/lit8 v12, v10, 0x1

    if-eq v12, v2, :cond_4

    .line 1327
    invoke-interface {v1, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1328
    invoke-static {v13, v12}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v11

    goto :goto_2

    :cond_3
    if-ge v6, v10, :cond_4

    add-int/lit8 v12, v10, -0x1

    .line 1331
    invoke-interface {v1, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v14

    if-eqz v14, :cond_4

    add-int/lit8 v10, v10, -0x1

    .line 1333
    invoke-static {v12, v13}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v11

    .line 1336
    :cond_4
    :goto_2
    invoke-virtual {p0, v11}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v12

    invoke-direct {p0, v12}, Lcom/ibm/icu/impl/Normalizer2Impl;->isCompYesAndZeroCC(I)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1337
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    add-int/2addr v10, v11

    goto :goto_1

    :cond_5
    :goto_3
    if-eq v10, v6, :cond_7

    add-int/lit8 v8, v10, -0x1

    .line 1346
    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_6

    if-ge v6, v8, :cond_6

    add-int/lit8 v6, v8, -0x1

    .line 1347
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_6

    add-int/lit8 v8, v8, -0x1

    :cond_6
    move v9, v8

    move v6, v10

    const/4 v8, 0x0

    .line 1356
    :cond_7
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    add-int/2addr v10, v11

    .line 1362
    invoke-direct {p0, v12}, Lcom/ibm/icu/impl/Normalizer2Impl;->isMaybeOrNonZeroCC(I)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1363
    invoke-static {v12}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result v11

    if-eqz p4, :cond_8

    if-eqz v11, :cond_8

    if-nez v8, :cond_8

    if-ge v9, v6, :cond_8

    .line 1375
    invoke-virtual {p0, v1, v9, v6}, Lcom/ibm/icu/impl/Normalizer2Impl;->getTrailCCFromCompYesAndZeroCC(Ljava/lang/CharSequence;II)I

    move-result v6

    if-le v6, v11, :cond_8

    goto :goto_4

    :cond_8
    if-le v8, v11, :cond_9

    if-nez v11, :cond_c

    :cond_9
    const v6, 0xff01

    if-ge v12, v6, :cond_b

    if-nez p5, :cond_a

    move v6, v10

    move v8, v11

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_a
    shl-int/lit8 v1, v9, 0x1

    return v1

    :cond_b
    move v6, v10

    move v8, v11

    goto/16 :goto_0

    :cond_c
    :goto_4
    shl-int/lit8 v1, v9, 0x1

    return v1

    :cond_d
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1
.end method

.method public decompose(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I
    .locals 9

    .line 950
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    const/4 v1, 0x0

    move v4, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    move v6, v3

    move v3, v2

    move v2, p2

    :goto_1
    if-eq v2, p3, :cond_5

    .line 963
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-lt v3, v0, :cond_4

    iget-object v6, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/impl/Trie2_16;

    int-to-char v7, v3

    .line 964
    invoke-virtual {v6, v7}, Lcom/ibm/icu/impl/Trie2_16;->getFromU16SingleLead(C)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/ibm/icu/impl/Normalizer2Impl;->isMostDecompYesAndZeroCC(I)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_3

    .line 967
    :cond_0
    invoke-static {v7}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_4

    .line 971
    :cond_1
    invoke-static {v3}, Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v6, v2, 0x1

    if-eq v6, p3, :cond_3

    .line 972
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 973
    invoke-static {v7, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    goto :goto_2

    :cond_2
    if-ge p2, v2, :cond_3

    add-int/lit8 v6, v2, -0x1

    .line 976
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v2, v2, -0x1

    .line 978
    invoke-static {v6, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    .line 981
    :cond_3
    :goto_2
    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/ibm/icu/impl/Normalizer2Impl;->isMostDecompYesAndZeroCC(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 982
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v2, v7

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    if-eq v2, p2, :cond_7

    if-eqz p4, :cond_6

    .line 991
    invoke-virtual {p4, p1, p2, v2}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    goto :goto_5

    :cond_6
    move v4, v2

    const/4 v5, 0x0

    :cond_7
    :goto_5
    if-ne v2, p3, :cond_8

    return v2

    .line 1002
    :cond_8
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result p2

    add-int/2addr p2, v2

    if-eqz p4, :cond_9

    .line 1004
    invoke-direct {p0, v3, v6, p4}, Lcom/ibm/icu/impl/Normalizer2Impl;->decompose(IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    :goto_6
    move v2, v3

    move v3, v6

    goto :goto_0

    .line 1006
    :cond_9
    invoke-virtual {p0, v6}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1007
    invoke-static {v6}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCCFromYesOrMaybe(I)I

    move-result v2

    if-le v5, v2, :cond_a

    if-nez v2, :cond_c

    :cond_a
    const/4 v5, 0x1

    if-gt v2, v5, :cond_b

    move v4, p2

    :cond_b
    move v5, v2

    goto :goto_6

    :cond_c
    return v4
.end method

.method public decompose(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)V
    .locals 1

    if-gez p5, :cond_0

    sub-int p5, p3, p2

    :cond_0
    const/4 v0, 0x0

    .line 940
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 941
    new-instance v0, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    invoke-direct {v0, p0, p4, p5}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Lcom/ibm/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    .line 942
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    return-void
.end method

.method public decomposeAndAppend(Ljava/lang/CharSequence;ZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 10

    .line 1022
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 1027
    invoke-virtual {p0, p1, v1, v0, p3}, Lcom/ibm/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    return-void

    .line 1031
    :cond_1
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p2

    .line 1034
    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCC(I)I

    move-result v7

    move v2, p2

    move p2, v7

    move v3, p2

    :goto_0
    if-eqz p2, :cond_3

    .line 1037
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    if-lt v1, v0, :cond_2

    move v8, p2

    goto :goto_1

    .line 1041
    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1042
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCC(I)I

    move-result v3

    move v9, v3

    move v3, p2

    move p2, v9

    goto :goto_0

    :cond_3
    move v8, v3

    :goto_1
    const/4 v5, 0x0

    move-object v3, p3

    move-object v4, p1

    move v6, v1

    .line 1044
    invoke-virtual/range {v3 .. v8}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;IIII)V

    .line 1045
    invoke-virtual {p3, p1, v1, v0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    return-void
.end method

.method public decomposeShort(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 2

    :goto_0
    if-ge p2, p3, :cond_0

    .line 1764
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1765
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    .line 1766
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p4}, Lcom/ibm/icu/impl/Normalizer2Impl;->decompose(IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized ensureCanonIterData()Lcom/ibm/icu/impl/Normalizer2Impl;
    .locals 13

    monitor-enter p0

    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->canonIterData:Lcom/ibm/icu/impl/Trie2_32;

    if-nez v0, :cond_c

    .line 594
    new-instance v0, Lcom/ibm/icu/impl/Trie2Writable;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/ibm/icu/impl/Trie2Writable;-><init>(II)V

    .line 595
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->canonStartSets:Ljava/util/ArrayList;

    .line 596
    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 598
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/impl/Trie2$Range;

    iget-boolean v3, v2, Lcom/ibm/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v3, :cond_b

    .line 599
    iget v3, v2, Lcom/ibm/icu/impl/Trie2$Range;->value:I

    if-eqz v3, :cond_0

    .line 600
    iget v4, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-gt v4, v3, :cond_1

    iget v4, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNo:I

    if-ge v3, v4, :cond_1

    goto :goto_0

    .line 609
    :cond_1
    iget v4, v2, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    :goto_1
    iget v5, v2, Lcom/ibm/icu/impl/Trie2$Range;->endCodePoint:I

    if-gt v4, v5, :cond_0

    .line 610
    invoke-virtual {v0, v4}, Lcom/ibm/icu/impl/Trie2Writable;->get(I)I

    move-result v5

    .line 612
    iget v6, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    if-lt v3, v6, :cond_2

    or-int v6, v5, v8

    const v8, 0xfe00

    if-ge v3, v8, :cond_9

    or-int/2addr v6, v7

    goto/16 :goto_5

    .line 618
    :cond_2
    iget v6, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-ge v3, v6, :cond_3

    or-int v6, v5, v7

    goto/16 :goto_5

    :cond_3
    move v6, v3

    move v7, v4

    .line 624
    :goto_2
    iget v9, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-gt v9, v6, :cond_4

    iget v9, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-ge v6, v9, :cond_4

    .line 625
    invoke-direct {p0, v7, v6}, Lcom/ibm/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result v7

    .line 626
    invoke-virtual {p0, v7}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v6

    goto :goto_2

    .line 628
    :cond_4
    iget v9, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-gt v9, v6, :cond_8

    iget v9, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-ge v6, v9, :cond_8

    .line 630
    iget-object v9, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    and-int/lit8 v10, v9, 0x1f

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_5

    if-ne v4, v7, :cond_5

    .line 633
    iget-object v7, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    and-int/lit16 v7, v7, 0xff

    if-eqz v7, :cond_5

    or-int v7, v5, v8

    goto :goto_3

    :cond_5
    move v7, v5

    :goto_3
    if-eqz v10, :cond_7

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v10, v6

    .line 642
    iget-object v9, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    .line 643
    invoke-direct {p0, v0, v4, v9}, Lcom/ibm/icu/impl/Normalizer2Impl;->addToStartSet(Lcom/ibm/icu/impl/Trie2Writable;II)V

    .line 647
    iget v11, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNo:I

    if-lt v6, v11, :cond_7

    .line 648
    :cond_6
    :goto_4
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v6, v9

    if-ge v6, v10, :cond_7

    .line 649
    iget-object v9, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    .line 650
    invoke-virtual {v0, v9}, Lcom/ibm/icu/impl/Trie2Writable;->get(I)I

    move-result v11

    and-int v12, v11, v8

    if-nez v12, :cond_6

    or-int/2addr v11, v8

    .line 652
    invoke-virtual {v0, v9, v11}, Lcom/ibm/icu/impl/Trie2Writable;->set(II)Lcom/ibm/icu/impl/Trie2Writable;

    goto :goto_4

    :cond_7
    move v6, v7

    goto :goto_5

    .line 659
    :cond_8
    invoke-direct {p0, v0, v4, v7}, Lcom/ibm/icu/impl/Normalizer2Impl;->addToStartSet(Lcom/ibm/icu/impl/Trie2Writable;II)V

    move v6, v5

    :cond_9
    :goto_5
    if-eq v6, v5, :cond_a

    .line 663
    invoke-virtual {v0, v4, v6}, Lcom/ibm/icu/impl/Trie2Writable;->set(II)Lcom/ibm/icu/impl/Trie2Writable;

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 667
    :cond_b
    invoke-virtual {v0}, Lcom/ibm/icu/impl/Trie2Writable;->toTrie2_32()Lcom/ibm/icu/impl/Trie2_32;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->canonIterData:Lcom/ibm/icu/impl/Trie2_32;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    :cond_c
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCC(I)I
    .locals 1

    const v0, 0xfe00

    if-lt p1, v0, :cond_0

    and-int/lit16 p1, p1, 0xff

    return p1

    .line 691
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNo:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-gt v0, p1, :cond_1

    goto :goto_0

    .line 694
    :cond_1
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getCCFromNoNo(I)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCompQuickCheck(I)I
    .locals 1

    .line 675
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNo:I

    if-lt p1, v0, :cond_2

    const v0, 0xff01

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 677
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-gt v0, p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getDecomposition(I)Ljava/lang/String;
    .locals 3

    const/4 v0, -0x1

    .line 769
    :goto_0
    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    if-lt p1, v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 771
    :cond_0
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->isHangul(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 774
    invoke-static {p1, v0}, Lcom/ibm/icu/impl/Normalizer2Impl$Hangul;->decompose(ILjava/lang/Appendable;)I

    .line 775
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 776
    :cond_1
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 777
    invoke-direct {p0, p1, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result v0

    move p1, v0

    goto :goto_0

    .line 781
    :cond_2
    iget-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    and-int/lit8 p1, p1, 0x1f

    .line 782
    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/2addr p1, v0

    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    if-gez v0, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 787
    :cond_4
    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFCD16(I)I
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x180

    if-ge p1, v1, :cond_1

    .line 709
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->tccc180:[I

    aget p1, v0, p1

    return p1

    :cond_1
    const v1, 0xffff

    if-gt p1, v1, :cond_2

    .line 711
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->singleLeadMightHaveNonZeroFCD16(I)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 713
    :cond_2
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result p1

    return p1
.end method

.method public getFCD16FromNormData(I)I
    .locals 3

    .line 729
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    .line 730
    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    :cond_0
    const v1, 0xfe00

    if-lt v0, v1, :cond_1

    and-int/lit16 p1, v0, 0xff

    shl-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    return p1

    .line 737
    :cond_1
    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-lt v0, v1, :cond_2

    return v2

    .line 739
    :cond_2
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 740
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result p1

    goto :goto_0

    .line 743
    :cond_3
    iget-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    and-int/lit8 v1, p1, 0x1f

    if-nez v1, :cond_4

    const/16 p1, 0x1ff

    return p1

    :cond_4
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_5

    .line 752
    iget-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const v0, 0xff00

    and-int/2addr p1, v0

    or-int/2addr v1, p1

    :cond_5
    return v1
.end method

.method public getNorm16(I)I
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result p1

    return p1
.end method

.method getTrailCCFromCompYesAndZeroCC(Ljava/lang/CharSequence;II)I
    .locals 0

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_0

    .line 1700
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    goto :goto_0

    .line 1702
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 1704
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p1

    .line 1705
    iget p2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-gt p1, p2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 1708
    :cond_1
    iget-object p2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    shr-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public hasCompBoundaryAfter(IZZ)Z
    .locals 4

    .line 1616
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    .line 1617
    invoke-static {v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->isInert(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 1619
    :cond_0
    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    const/4 v3, 0x0

    if-gt v0, v1, :cond_2

    .line 1623
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->isHangul(I)Z

    move-result p2

    if-eqz p2, :cond_1

    int-to-char p1, p1

    invoke-static {p1}, Lcom/ibm/icu/impl/Normalizer2Impl$Hangul;->isHangulWithoutJamoT(C)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_2
    if-eqz p3, :cond_3

    .line 1624
    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNo:I

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    :goto_2
    if-lt v0, v1, :cond_4

    return v3

    .line 1626
    :cond_4
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1627
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result p1

    goto :goto_0

    .line 1632
    :cond_5
    iget-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    and-int/lit8 p3, p1, 0x20

    if-nez p3, :cond_6

    if-eqz p2, :cond_7

    const/16 p2, 0x1ff

    if-gt p1, p2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :cond_7
    :goto_3
    return v2
.end method

.method public hasCompBoundaryBefore(I)Z
    .locals 1

    .line 1612
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    if-lt p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hasDecompBoundary(IZ)Z
    .locals 4

    .line 1577
    :goto_0
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    return v1

    .line 1580
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v0

    .line 1581
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->isHangul(I)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompYesAndZeroCC(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const v2, 0xfe00

    const/4 v3, 0x0

    if-le v0, v2, :cond_2

    return v3

    .line 1585
    :cond_2
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompNoAlgorithmic(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1586
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->mapAlgorithmic(II)I

    move-result p1

    goto :goto_0

    .line 1589
    :cond_3
    iget-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    and-int/lit8 v2, p1, 0x1f

    if-nez v2, :cond_4

    return v3

    :cond_4
    if-nez p2, :cond_6

    const/16 p2, 0x1ff

    if-le p1, p2, :cond_5

    return v3

    :cond_5
    const/16 p2, 0xff

    if-gt p1, p2, :cond_6

    return v1

    :cond_6
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_8

    .line 1605
    iget-object p1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const p2, 0xff00

    and-int/2addr p1, p2

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :cond_8
    :goto_1
    return v1
.end method

.method public hasFCDBoundaryBefore(I)Z
    .locals 1

    const/16 v0, 0x300

    if-lt p1, v0, :cond_1

    .line 1646
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result p1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isAlgorithmicNoNo(I)Z
    .locals 1

    .line 683
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->limitNoNo:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isCanonSegmentStarter(I)Z
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->canonIterData:Lcom/ibm/icu/impl/Trie2_32;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_32;->get(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isCompNo(I)Z
    .locals 1

    .line 684
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNo:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isDecompInert(I)Z
    .locals 0

    .line 1609
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->isDecompYesAndZeroCC(I)Z

    move-result p1

    return p1
.end method

.method public isDecompYes(I)Z
    .locals 1

    .line 685
    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    if-gt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isFCDInert(I)Z
    .locals 1

    .line 1651
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public load(Ljava/lang/String;)Lcom/ibm/icu/impl/Normalizer2Impl;
    .locals 0

    .line 496
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Normalizer2Impl;->load(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/Normalizer2Impl;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/Normalizer2Impl;
    .locals 7

    const v0, 0x4e726d32

    .line 429
    :try_start_0
    sget-object v1, Lcom/ibm/icu/impl/Normalizer2Impl;->IS_ACCEPTABLE:Lcom/ibm/icu/impl/Normalizer2Impl$IsAcceptable;

    invoke-static {p1, v0, v1}, Lcom/ibm/icu/impl/ICUBinary;->readHeaderAndDataVersion(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->dataVersion:Lcom/ibm/icu/util/VersionInfo;

    .line 430
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    const/16 v1, 0xd

    if-le v0, v1, :cond_7

    .line 434
    new-array v2, v0, [I

    mul-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    .line 435
    aput v3, v2, v4

    const/4 v3, 0x1

    const/4 v5, 0x1

    :goto_0
    if-ge v5, v0, :cond_0

    .line 437
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 440
    aget v0, v2, v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minDecompNoCP:I

    const/16 v0, 0x9

    .line 441
    aget v0, v2, v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minCompNoMaybeCP:I

    const/16 v0, 0xa

    .line 443
    aget v0, v2, v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNo:I

    const/16 v0, 0xe

    .line 444
    aget v0, v2, v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minYesNoMappingsOnly:I

    const/16 v0, 0xb

    .line 445
    aget v0, v2, v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minNoNo:I

    const/16 v0, 0xc

    .line 446
    aget v0, v2, v0

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->limitNoNo:I

    .line 447
    aget v0, v2, v1

    iput v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    .line 450
    aget v0, v2, v4

    .line 451
    aget v1, v2, v3

    .line 452
    invoke-static {p1}, Lcom/ibm/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/Trie2_16;

    move-result-object v3

    iput-object v3, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/impl/Trie2_16;

    .line 453
    iget-object v3, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->normTrie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v3}, Lcom/ibm/icu/impl/Trie2_16;->getSerializedLength()I

    move-result v3

    sub-int v0, v1, v0

    if-gt v3, v0, :cond_6

    sub-int/2addr v0, v3

    .line 457
    invoke-static {p1, v0}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/4 v0, 0x2

    .line 461
    aget v2, v2, v0

    sub-int/2addr v2, v1

    .line 462
    div-int/2addr v2, v0

    if-eqz v2, :cond_1

    .line 464
    invoke-static {p1, v2, v4}, Lcom/ibm/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    .line 465
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->maybeYesCompositions:Ljava/lang/String;

    const v1, 0xfe00

    iget v2, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->minMaybeYes:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->extraData:Ljava/lang/String;

    :cond_1
    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 470
    iput-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->smallFCD:[B

    .line 471
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->smallFCD:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 p1, 0x180

    new-array v0, p1, [I

    .line 475
    iput-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->tccc180:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v0, p1, :cond_5

    and-int/lit16 v2, v0, 0xff

    if-nez v2, :cond_2

    .line 479
    iget-object v1, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->smallFCD:[B

    shr-int/lit8 v2, v0, 0x8

    aget-byte v1, v1, v2

    :cond_2
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_4

    move v2, v0

    const/4 v0, 0x0

    :goto_2
    const/16 v3, 0x20

    if-ge v0, v3, :cond_3

    .line 483
    iget-object v3, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->tccc180:[I

    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v3, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x20

    :goto_3
    shr-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-object p0

    .line 455
    :cond_6
    new-instance p1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    const-string v0, "Normalizer2 data: not enough bytes for normTrie"

    invoke-direct {p1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 432
    :cond_7
    new-instance p1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    const-string v0, "Normalizer2 data: not enough indexes"

    invoke-direct {p1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 492
    new-instance v0, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v0, p1}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public makeFCD(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I
    .locals 10

    const/4 v0, 0x0

    move v2, p2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    move v5, v4

    move v4, v3

    move v3, v1

    move v1, p2

    :goto_1
    const/16 v6, 0xff

    if-eq v1, p3, :cond_4

    .line 1439
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v7, 0x300

    if-ge v4, v7, :cond_0

    not-int v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1442
    :cond_0
    invoke-virtual {p0, v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->singleLeadMightHaveNonZeroFCD16(I)Z

    move-result v7

    if-nez v7, :cond_1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    int-to-char v5, v4

    .line 1446
    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->isSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1448
    invoke-static {v4}, Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v7, v1, 0x1

    if-eq v7, p3, :cond_3

    .line 1449
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1450
    invoke-static {v5, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    goto :goto_2

    :cond_2
    if-ge p2, v1, :cond_3

    add-int/lit8 v7, v1, -0x1

    .line 1453
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 1455
    invoke-static {v7, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    .line 1459
    :cond_3
    :goto_2
    invoke-virtual {p0, v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result v5

    if-gt v5, v6, :cond_4

    .line 1461
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    move v3, v5

    goto :goto_1

    :cond_4
    const/4 v7, 0x1

    if-eq v1, p2, :cond_c

    if-ne v1, p3, :cond_5

    if-eqz p4, :cond_d

    .line 1471
    invoke-virtual {p4, p1, p2, v1}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    goto :goto_6

    :cond_5
    if-gez v3, :cond_8

    not-int v2, v3

    const/16 v3, 0x180

    if-ge v2, v3, :cond_6

    .line 1480
    iget-object v3, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->tccc180:[I

    aget v2, v3, v2

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result v2

    :goto_3
    if-le v2, v7, :cond_7

    add-int/lit8 v3, v1, -0x1

    goto :goto_4

    :cond_7
    move v3, v1

    :goto_4
    move v9, v3

    move v3, v2

    move v2, v9

    goto :goto_5

    :cond_8
    add-int/lit8 v2, v1, -0x1

    .line 1486
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_9

    if-ge p2, v2, :cond_9

    add-int/lit8 v8, v2, -0x1

    .line 1487
    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_9

    add-int/lit8 v2, v2, -0x1

    .line 1492
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v8, v2, 0x1

    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/Normalizer2Impl;->getFCD16FromNormData(I)I

    move-result v3

    :cond_9
    if-le v3, v7, :cond_a

    goto :goto_5

    :cond_a
    move v2, v1

    :goto_5
    if-eqz p4, :cond_b

    .line 1502
    invoke-virtual {p4, p1, p2, v2}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->flushAndAppendZeroCC(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 1503
    invoke-virtual {p4, p1, v2, v1}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :cond_b
    move p2, v1

    goto :goto_7

    :cond_c
    if-ne v1, p3, :cond_e

    :cond_d
    :goto_6
    return v1

    .line 1511
    :cond_e
    :goto_7
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v1, v8

    and-int/2addr v3, v6

    shr-int/lit8 v6, v5, 0x8

    if-gt v3, v6, :cond_11

    and-int/lit16 p2, v5, 0xff

    if-gt p2, v7, :cond_f

    move v2, v1

    :cond_f
    if-eqz p4, :cond_10

    .line 1520
    invoke-virtual {p4, v4}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->appendZeroCC(I)V

    :cond_10
    move p2, v1

    move v3, v4

    move v1, v5

    move v4, v1

    goto/16 :goto_0

    :cond_11
    if-nez p4, :cond_12

    return v2

    :cond_12
    sub-int/2addr p2, v2

    .line 1532
    invoke-virtual {p4, p2}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    .line 1537
    invoke-direct {p0, p1, v1, p3}, Lcom/ibm/icu/impl/Normalizer2Impl;->findNextFCDBoundary(Ljava/lang/CharSequence;II)I

    move-result p2

    .line 1542
    invoke-virtual {p0, p1, v2, p2, p4}, Lcom/ibm/icu/impl/Normalizer2Impl;->decomposeShort(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    move v2, p2

    move v3, v4

    move v4, v5

    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public makeFCDAndAppend(Ljava/lang/CharSequence;ZLcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 7

    .line 1550
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1551
    invoke-virtual {p3}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1552
    invoke-direct {p0, p1, v2, v0}, Lcom/ibm/icu/impl/Normalizer2Impl;->findNextFCDBoundary(Ljava/lang/CharSequence;II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1554
    invoke-virtual {p3}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1555
    invoke-virtual {p3}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v4

    .line 1554
    invoke-direct {p0, v3, v4}, Lcom/ibm/icu/impl/Normalizer2Impl;->findPreviousFCDBoundary(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1556
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v3

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x10

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1558
    invoke-virtual {p3}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v6

    invoke-virtual {v4, v5, v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1559
    invoke-virtual {p3}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {p3, v5}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->removeSuffix(I)V

    .line 1560
    invoke-virtual {v4, p1, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1561
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p0, v4, v2, v3, p3}, Lcom/ibm/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 1566
    invoke-virtual {p0, p1, v1, v0, p3}, Lcom/ibm/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    goto :goto_1

    .line 1568
    :cond_1
    invoke-virtual {p3, p1, v1, v0}, Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;->append(Ljava/lang/CharSequence;II)Lcom/ibm/icu/impl/Normalizer2Impl$ReorderingBuffer;

    :goto_1
    return-void
.end method

.method public singleLeadMightHaveNonZeroFCD16(I)Z
    .locals 2

    .line 720
    iget-object v0, p0, Lcom/ibm/icu/impl/Normalizer2Impl;->smallFCD:[B

    shr-int/lit8 v1, p1, 0x8

    aget-byte v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    shr-int/lit8 p1, p1, 0x5

    and-int/lit8 p1, p1, 0x7

    shr-int p1, v0, p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
