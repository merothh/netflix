.class public abstract Lcom/ibm/icu/impl/coll/CollationIterator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;,
        Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

.field private cesIndex:I

.field protected final data:Lcom/ibm/icu/impl/coll/CollationData;

.field private isNumeric:Z

.field private numCpFwd:I

.field private skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

.field protected final trie:Lcom/ibm/icu/impl/Trie2_32;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/coll/CollationData;)V
    .locals 1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iget-object v0, p1, Lcom/ibm/icu/impl/coll/CollationData;->trie:Lcom/ibm/icu/impl/Trie2_32;

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->trie:Lcom/ibm/icu/impl/Trie2_32;

    .line 186
    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    const/4 p1, -0x1

    .line 187
    iput p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->numCpFwd:I

    const/4 p1, 0x0

    .line 188
    iput-boolean p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->isNumeric:Z

    const/4 p1, 0x0

    .line 189
    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/coll/CollationData;Z)V
    .locals 1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iget-object v0, p1, Lcom/ibm/icu/impl/coll/CollationData;->trie:Lcom/ibm/icu/impl/Trie2_32;

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->trie:Lcom/ibm/icu/impl/Trie2_32;

    .line 194
    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    const/4 p1, -0x1

    .line 195
    iput p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->numCpFwd:I

    .line 196
    iput-boolean p2, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->isNumeric:Z

    .line 197
    new-instance p1, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-direct {p1}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    return-void
.end method

.method private final appendNumericCEs(IZ)V
    .locals 4

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xa

    const/16 v2, 0xc0

    const/4 v3, 0x1

    if-eqz p2, :cond_5

    .line 975
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/ibm/icu/impl/coll/Collation;->digitFromCE32(I)C

    move-result p1

    .line 976
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 977
    iget p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-nez p1, :cond_1

    goto :goto_4

    .line 978
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextCodePoint()I

    move-result p1

    if-gez p1, :cond_2

    goto :goto_4

    .line 980
    :cond_2
    iget-object p2, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {p2, p1}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p2

    if-ne p2, v2, :cond_3

    .line 982
    iget-object p2, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object p2, p2, Lcom/ibm/icu/impl/coll/CollationData;->base:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {p2, p1}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p1

    goto :goto_1

    :cond_3
    move p1, p2

    .line 984
    :goto_1
    invoke-static {p1, v1}, Lcom/ibm/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result p2

    if-nez p2, :cond_4

    .line 985
    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    goto :goto_4

    .line 988
    :cond_4
    iget p2, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-lez p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->numCpFwd:I

    goto :goto_0

    .line 992
    :cond_5
    invoke-static {p1}, Lcom/ibm/icu/impl/coll/Collation;->digitFromCE32(I)C

    move-result p1

    .line 993
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 994
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->previousCodePoint()I

    move-result p1

    if-gez p1, :cond_6

    goto :goto_3

    .line 996
    :cond_6
    iget-object p2, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {p2, p1}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p2

    if-ne p2, v2, :cond_7

    .line 998
    iget-object p2, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object p2, p2, Lcom/ibm/icu/impl/coll/CollationData;->base:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {p2, p1}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p1

    goto :goto_2

    :cond_7
    move p1, p2

    .line 1000
    :goto_2
    invoke-static {p1, v1}, Lcom/ibm/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result p2

    if-nez p2, :cond_5

    .line 1001
    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/coll/CollationIterator;->forwardNumCodePoints(I)V

    .line 1006
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    :goto_4
    const/4 p1, 0x0

    .line 1011
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v3

    if-ge p1, p2, :cond_8

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p2

    if-nez p2, :cond_8

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 1013
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, p1

    const/16 v1, 0xfe

    if-le p2, v1, :cond_9

    const/16 p2, 0xfe

    :cond_9
    add-int/2addr p2, p1

    .line 1015
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationIterator;->appendNumericSegmentCEs(Ljava/lang/CharSequence;)V

    .line 1017
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lt p2, p1, :cond_a

    return-void

    :cond_a
    move p1, p2

    goto :goto_5
.end method

.method private final appendNumericSegmentCEs(Ljava/lang/CharSequence;)V
    .locals 13

    .line 1025
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1028
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-wide v1, v1, Lcom/ibm/icu/impl/coll/CollationData;->numericPrimary:J

    const/4 v3, 0x7

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-gt v0, v3, :cond_3

    .line 1032
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    move v9, v3

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_0

    mul-int/lit8 v9, v9, 0xa

    .line 1034
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x4a

    if-ge v9, v3, :cond_1

    add-int/2addr v9, v8

    shl-int/lit8 p1, v9, 0x10

    int-to-long v3, p1

    or-long v0, v1, v3

    .line 1046
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void

    :cond_1
    sub-int/2addr v9, v3

    const/16 v3, 0x4c

    const/16 v10, 0x27b0

    if-ge v9, v10, :cond_2

    .line 1054
    div-int/lit16 p1, v9, 0xfe

    add-int/2addr v3, p1

    shl-int/lit8 p1, v3, 0x10

    int-to-long v5, p1

    or-long v0, v1, v5

    rem-int/lit16 v9, v9, 0xfe

    add-int/2addr v9, v8

    shl-int/lit8 p1, v9, 0x8

    int-to-long v2, p1

    or-long/2addr v0, v2

    .line 1056
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void

    :cond_2
    sub-int/2addr v9, v10

    const/16 v3, 0x74

    const v10, 0xfc040

    if-ge v9, v10, :cond_3

    .line 1064
    rem-int/lit16 p1, v9, 0xfe

    add-int/2addr p1, v8

    int-to-long v10, p1

    or-long v0, v1, v10

    .line 1065
    div-int/lit16 v9, v9, 0xfe

    .line 1066
    rem-int/lit16 p1, v9, 0xfe

    add-int/2addr p1, v8

    shl-int/2addr p1, v4

    int-to-long v4, p1

    or-long/2addr v0, v4

    .line 1067
    div-int/lit16 v9, v9, 0xfe

    .line 1068
    rem-int/lit16 v9, v9, 0xfe

    add-int/2addr v3, v9

    shl-int/lit8 p1, v3, 0x10

    int-to-long v2, p1

    or-long/2addr v0, v2

    .line 1069
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void

    :cond_3
    add-int/lit8 v3, v0, 0x1

    .line 1082
    div-int/2addr v3, v8

    add-int/lit16 v3, v3, 0x80

    shl-int/2addr v3, v6

    int-to-long v9, v3

    or-long/2addr v9, v1

    :goto_1
    add-int/lit8 v3, v0, -0x1

    .line 1085
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-nez v3, :cond_4

    add-int/lit8 v3, v0, -0x2

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-nez v3, :cond_4

    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    :cond_4
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_5

    .line 1093
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/4 v5, 0x1

    goto :goto_2

    .line 1096
    :cond_5
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/2addr v3, v5

    const/4 v5, 0x2

    :goto_2
    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0xb

    :goto_3
    if-ge v5, v0, :cond_7

    if-nez v4, :cond_6

    int-to-long v3, v3

    or-long/2addr v3, v9

    .line 1107
    iget-object v9, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {v3, v4}, Lcom/ibm/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v3

    invoke-virtual {v9, v3, v4}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    move-wide v9, v1

    const/16 v4, 0x10

    goto :goto_4

    :cond_6
    shl-int/2addr v3, v4

    int-to-long v11, v3

    or-long/2addr v9, v11

    add-int/lit8 v4, v4, -0x8

    .line 1114
    :goto_4
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v11, v5, 0x1

    invoke-interface {p1, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    add-int/2addr v3, v11

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0xb

    add-int/lit8 v5, v5, 0x2

    goto :goto_3

    :cond_7
    sub-int/2addr v3, v7

    shl-int p1, v3, v4

    int-to-long v0, p1

    or-long/2addr v0, v9

    .line 1118
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void
.end method

.method private final backwardNumSkipped(I)V
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;->backwardNumCodePoints(I)I

    move-result p1

    .line 702
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    .line 703
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-ltz v0, :cond_1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->numCpFwd:I

    :cond_1
    return-void
.end method

.method private final getCE32FromPrefix(Lcom/ibm/icu/impl/coll/CollationData;I)I
    .locals 3

    .line 669
    invoke-static {p2}, Lcom/ibm/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p2

    .line 670
    invoke-virtual {p1, p2}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v0

    add-int/lit8 p2, p2, 0x2

    .line 674
    new-instance v1, Lcom/ibm/icu/util/CharsTrie;

    iget-object p1, p1, Lcom/ibm/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    invoke-direct {v1, p1, p2}, Lcom/ibm/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    const/4 p1, 0x0

    .line 676
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->previousCodePoint()I

    move-result p2

    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 679
    invoke-virtual {v1, p2}, Lcom/ibm/icu/util/CharsTrie;->nextForCodePoint(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p2

    .line 680
    invoke-virtual {p2}, Lcom/ibm/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 681
    invoke-virtual {v1}, Lcom/ibm/icu/util/CharsTrie;->getValue()I

    move-result v0

    .line 683
    :cond_2
    invoke-virtual {p2}, Lcom/ibm/icu/util/BytesTrie$Result;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    .line 685
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/coll/CollationIterator;->forwardNumCodePoints(I)V

    return v0
.end method

.method protected static final isLeadSurrogate(I)Z
    .locals 1

    and-int/lit16 p0, p0, -0x400

    const v0, 0xd800

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final isSurrogate(I)Z
    .locals 1

    and-int/lit16 p0, p0, -0x800

    const v0, 0xd800

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final nextCE32FromContraction(Lcom/ibm/icu/impl/coll/CollationData;ILjava/lang/CharSequence;III)I
    .locals 6

    .line 719
    new-instance v2, Lcom/ibm/icu/util/CharsTrie;

    invoke-direct {v2, p3, p4}, Lcom/ibm/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    .line 720
    iget-object p3, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p3, v2}, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;->saveTrieState(Lcom/ibm/icu/util/CharsTrie;)V

    .line 721
    :cond_0
    invoke-virtual {v2, p6}, Lcom/ibm/icu/util/CharsTrie;->firstForCodePoint(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p3

    const/4 p4, 0x1

    move v3, p5

    move v0, p6

    const/4 p5, 0x1

    const/4 p6, 0x1

    .line 724
    :goto_0
    invoke-virtual {p3}, Lcom/ibm/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 725
    invoke-virtual {v2}, Lcom/ibm/icu/util/CharsTrie;->getValue()I

    move-result p5

    .line 726
    invoke-virtual {p3}, Lcom/ibm/icu/util/BytesTrie$Result;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    move-result p3

    if-gez p3, :cond_1

    goto :goto_1

    .line 729
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;->saveTrieState(Lcom/ibm/icu/util/CharsTrie;)V

    :cond_2
    move v0, p3

    move v3, p5

    const/4 p5, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    return p5

    .line 731
    :cond_4
    sget-object v1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    if-eq p3, v1, :cond_6

    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    move-result p3

    if-gez p3, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 p5, p5, 0x1

    move v0, p3

    :goto_2
    add-int/lit8 p6, p6, 0x1

    .line 766
    invoke-virtual {v2, v0}, Lcom/ibm/icu/util/CharsTrie;->nextForCodePoint(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p3

    goto :goto_0

    :cond_6
    :goto_3
    and-int/lit16 p3, p2, 0x400

    if-eqz p3, :cond_9

    and-int/lit16 p2, p2, 0x100

    if-eqz p2, :cond_7

    if-ge p5, p6, :cond_9

    :cond_7
    if-le p5, p4, :cond_8

    .line 746
    invoke-direct {p0, p5}, Lcom/ibm/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    .line 747
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    move-result p2

    add-int/lit8 p5, p5, -0x1

    sub-int/2addr p6, p5

    move v5, p2

    move v4, p6

    const/4 p5, 0x1

    goto :goto_4

    :cond_8
    move v4, p6

    move v5, v0

    .line 751
    :goto_4
    invoke-virtual {p1, v5}, Lcom/ibm/icu/impl/coll/CollationData;->getFCD16(I)I

    move-result p2

    const/16 p3, 0xff

    if-le p2, p3, :cond_9

    move-object v0, p0

    move-object v1, p1

    .line 752
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextCE32FromDiscontiguousContraction(Lcom/ibm/icu/impl/coll/CollationData;Lcom/ibm/icu/util/CharsTrie;III)I

    move-result p1

    return p1

    .line 768
    :cond_9
    invoke-direct {p0, p5}, Lcom/ibm/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    return v3
.end method

.method private final nextCE32FromDiscontiguousContraction(Lcom/ibm/icu/impl/coll/CollationData;Lcom/ibm/icu/util/CharsTrie;III)I
    .locals 8

    .line 792
    invoke-virtual {p1, p5}, Lcom/ibm/icu/impl/coll/CollationData;->getFCD16(I)I

    move-result v0

    .line 794
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    move-result v1

    const/4 v2, 0x1

    if-gez v1, :cond_0

    .line 797
    invoke-direct {p0, v2}, Lcom/ibm/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    return p3

    :cond_0
    add-int/2addr p4, v2

    const/16 v3, 0xff

    and-int/2addr v0, v3

    .line 802
    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/coll/CollationData;->getFCD16(I)I

    move-result v4

    const/4 v5, 0x2

    if-gt v4, v3, :cond_1

    .line 805
    invoke-direct {p0, v5}, Lcom/ibm/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    return p3

    .line 812
    :cond_1
    iget-object v6, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 830
    :cond_2
    iget-object p4, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p4, p2}, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;->resetToTrieState(Lcom/ibm/icu/util/CharsTrie;)V

    goto :goto_2

    .line 813
    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    if-nez v6, :cond_4

    .line 814
    new-instance v6, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    invoke-direct {v6}, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;-><init>()V

    iput-object v6, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    .line 816
    :cond_4
    invoke-virtual {p2}, Lcom/ibm/icu/util/CharsTrie;->reset()Lcom/ibm/icu/util/CharsTrie;

    if-le p4, v5, :cond_6

    .line 819
    invoke-virtual {p0, p4}, Lcom/ibm/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    .line 820
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextCodePoint()I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/ibm/icu/util/CharsTrie;->firstForCodePoint(I)Lcom/ibm/icu/util/BytesTrie$Result;

    const/4 v6, 0x3

    :goto_1
    if-ge v6, p4, :cond_5

    .line 822
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextCodePoint()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/ibm/icu/util/CharsTrie;->nextForCodePoint(I)Lcom/ibm/icu/util/BytesTrie$Result;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 825
    :cond_5
    invoke-virtual {p0, v5}, Lcom/ibm/icu/impl/coll/CollationIterator;->forwardNumCodePoints(I)V

    .line 827
    :cond_6
    iget-object p4, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p4, p2}, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;->saveTrieState(Lcom/ibm/icu/util/CharsTrie;)V

    .line 833
    :goto_2
    iget-object p4, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p4, p5}, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;->setFirstSkipped(I)V

    :cond_7
    shr-int/lit8 p4, v4, 0x8

    if-ge v0, p4, :cond_9

    .line 840
    invoke-virtual {p2, v1}, Lcom/ibm/icu/util/CharsTrie;->nextForCodePoint(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p4

    invoke-virtual {p4}, Lcom/ibm/icu/util/BytesTrie$Result;->hasValue()Z

    move-result p5

    if-eqz p5, :cond_9

    .line 843
    invoke-virtual {p2}, Lcom/ibm/icu/util/CharsTrie;->getValue()I

    move-result p3

    const/4 v5, 0x0

    .line 845
    iget-object p5, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p5}, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;->recordMatch()V

    .line 846
    invoke-virtual {p4}, Lcom/ibm/icu/util/BytesTrie$Result;->hasNext()Z

    move-result p4

    if-nez p4, :cond_8

    goto :goto_4

    .line 847
    :cond_8
    iget-object p4, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p4, p2}, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;->saveTrieState(Lcom/ibm/icu/util/CharsTrie;)V

    goto :goto_3

    .line 850
    :cond_9
    iget-object p4, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p4, v1}, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;->skip(I)V

    .line 851
    iget-object p4, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p4, p2}, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;->resetToTrieState(Lcom/ibm/icu/util/CharsTrie;)V

    and-int/lit16 p4, v4, 0xff

    move v0, p4

    .line 854
    :goto_3
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    move-result v1

    if-gez v1, :cond_a

    goto :goto_4

    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 856
    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/coll/CollationData;->getFCD16(I)I

    move-result v4

    if-gt v4, v3, :cond_7

    .line 862
    :goto_4
    invoke-direct {p0, v5}, Lcom/ibm/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    .line 863
    iget-object p2, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p2}, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result p2

    .line 864
    iget-object p4, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p4}, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;->replaceMatch()V

    if-eqz p2, :cond_d

    .line 865
    iget-object p2, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p2}, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_d

    const/4 p2, -0x1

    .line 872
    :goto_5
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/ibm/icu/impl/coll/CollationIterator;->appendCEsFromCE32(Lcom/ibm/icu/impl/coll/CollationData;IIZ)V

    .line 875
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;->hasNext()Z

    move-result p1

    if-nez p1, :cond_b

    .line 888
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;->clear()V

    const/4 p3, 0x1

    goto :goto_6

    .line 876
    :cond_b
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;->next()I

    move-result p2

    .line 877
    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/coll/CollationIterator;->getDataCE32(I)I

    move-result p3

    const/16 p1, 0xc0

    if-ne p3, p1, :cond_c

    .line 879
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object p1, p1, Lcom/ibm/icu/impl/coll/CollationData;->base:Lcom/ibm/icu/impl/coll/CollationData;

    .line 880
    invoke-virtual {p1, p2}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p3

    goto :goto_5

    .line 882
    :cond_c
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    goto :goto_5

    :cond_d
    :goto_6
    return p3
.end method

.method private final nextCEFromCE32(Lcom/ibm/icu/impl/coll/CollationData;II)J
    .locals 3

    .line 663
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    iget v1, v0, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    .line 664
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/ibm/icu/impl/coll/CollationIterator;->appendCEsFromCE32(Lcom/ibm/icu/impl/coll/CollationData;IIZ)V

    .line 665
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    iget p2, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->cesIndex:I

    invoke-virtual {p1, p2}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide p1

    return-wide p1
.end method

.method private final nextSkippedCodePoint()I
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;->next()I

    move-result v0

    return v0

    .line 691
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-nez v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 692
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextCodePoint()I

    move-result v0

    .line 693
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;->incBeyond()V

    .line 694
    :cond_2
    iget v1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-lez v1, :cond_3

    if-ltz v0, :cond_3

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->numCpFwd:I

    :cond_3
    return v0
.end method


# virtual methods
.method protected final appendCEsFromCE32(Lcom/ibm/icu/impl/coll/CollationData;IIZ)V
    .locals 8

    :cond_0
    :goto_0
    move v2, p3

    .line 460
    :goto_1
    invoke-static {v2}, Lcom/ibm/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 461
    invoke-static {v2}, Lcom/ibm/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result p3

    const/16 v0, 0xc0

    const/4 v1, 0x2

    const/4 v3, -0x1

    const/4 v7, 0x1

    packed-switch p3, :pswitch_data_0

    goto :goto_1

    .line 631
    :pswitch_0
    invoke-static {p2}, Lcom/ibm/icu/impl/coll/CollationIterator;->isSurrogate(I)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->forbidSurrogateCodePoints()Z

    move-result p3

    if-eqz p3, :cond_1

    const p3, -0x2fafb

    const v2, -0x2fafb

    goto :goto_1

    .line 635
    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {p2}, Lcom/ibm/icu/impl/coll/Collation;->unassignedCEFromCodePoint(I)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void

    .line 627
    :pswitch_1
    iget-object p3, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {p1, p2, v2}, Lcom/ibm/icu/impl/coll/CollationData;->getCEFromOffsetCE32(II)J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void

    .line 608
    :pswitch_2
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->handleGetTrailSurrogate()C

    move-result p3

    invoke-static {p3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_4

    int-to-char p2, p2

    .line 609
    invoke-static {p2, p3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p2

    and-int/lit16 p3, v2, 0x300

    if-nez p3, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x100

    if-eq p3, v1, :cond_3

    .line 614
    invoke-virtual {p1, p2}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32FromSupplementary(I)I

    move-result p3

    if-ne p3, v0, :cond_0

    .line 616
    :cond_3
    iget-object p1, p1, Lcom/ibm/icu/impl/coll/CollationData;->base:Lcom/ibm/icu/impl/coll/CollationData;

    .line 617
    invoke-virtual {p1, p2}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32FromSupplementary(I)I

    move-result p3

    goto :goto_0

    :cond_4
    :goto_2
    const/4 v2, -0x1

    goto :goto_1

    .line 572
    :pswitch_3
    iget-object p3, p1, Lcom/ibm/icu/impl/coll/CollationData;->jamoCE32s:[I

    const v0, 0xac00

    sub-int/2addr p2, v0

    .line 574
    rem-int/lit8 v0, p2, 0x1c

    .line 575
    div-int/lit8 p2, p2, 0x1c

    .line 576
    rem-int/lit8 v4, p2, 0x15

    .line 577
    div-int/lit8 p2, p2, 0x15

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_7

    .line 581
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    if-nez v0, :cond_5

    const/4 p4, 0x2

    goto :goto_3

    :cond_5
    const/4 p4, 0x3

    :goto_3
    invoke-virtual {p1, p4}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    .line 582
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    iget p4, p1, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    aget p2, p3, p2

    invoke-static {p2}, Lcom/ibm/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v2

    invoke-virtual {p1, p4, v2, v3}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    .line 583
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    iget p2, p1, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/2addr p2, v7

    add-int/lit8 v4, v4, 0x13

    aget p4, p3, v4

    invoke-static {p4}, Lcom/ibm/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v2

    invoke-virtual {p1, p2, v2, v3}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    .line 584
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    iget p2, p1, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/2addr p2, v1

    iput p2, p1, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-eqz v0, :cond_6

    .line 586
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    add-int/lit8 v0, v0, 0x27

    aget p2, p3, v0

    invoke-static {p2}, Lcom/ibm/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->appendUnsafe(J)V

    :cond_6
    return-void

    .line 592
    :cond_7
    aget p2, p3, p2

    invoke-virtual {p0, p1, v3, p2, p4}, Lcom/ibm/icu/impl/coll/CollationIterator;->appendCEsFromCE32(Lcom/ibm/icu/impl/coll/CollationData;IIZ)V

    add-int/lit8 v4, v4, 0x13

    .line 593
    aget p2, p3, v4

    invoke-virtual {p0, p1, v3, p2, p4}, Lcom/ibm/icu/impl/coll/CollationIterator;->appendCEsFromCE32(Lcom/ibm/icu/impl/coll/CollationData;IIZ)V

    if-nez v0, :cond_8

    return-void

    :cond_8
    add-int/lit8 v0, v0, 0x27

    .line 599
    aget p2, p3, v0

    move v2, p2

    const/4 p2, -0x1

    goto/16 :goto_1

    .line 569
    :pswitch_4
    iget-object p3, p1, Lcom/ibm/icu/impl/coll/CollationData;->ce32s:[I

    const/4 v0, 0x0

    aget p3, p3, v0

    goto/16 :goto_0

    .line 557
    :pswitch_5
    iget-boolean p3, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->isNumeric:Z

    if-eqz p3, :cond_9

    .line 558
    invoke-direct {p0, v2, p4}, Lcom/ibm/icu/impl/coll/CollationIterator;->appendNumericCEs(IZ)V

    return-void

    .line 562
    :cond_9
    iget-object p3, p1, Lcom/ibm/icu/impl/coll/CollationData;->ce32s:[I

    invoke-static {v2}, Lcom/ibm/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    aget p3, p3, v0

    goto/16 :goto_0

    .line 508
    :pswitch_6
    invoke-static {v2}, Lcom/ibm/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p3

    .line 509
    invoke-virtual {p1, p3}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v5

    if-nez p4, :cond_a

    goto :goto_4

    .line 517
    :cond_a
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    if-nez v0, :cond_c

    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-gez v0, :cond_c

    .line 520
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextCodePoint()I

    move-result v0

    if-gez v0, :cond_b

    goto :goto_4

    :cond_b
    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_e

    .line 526
    invoke-static {v0}, Lcom/ibm/icu/impl/coll/CollationFCD;->mayHaveLccc(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 529
    invoke-virtual {p0, v7}, Lcom/ibm/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    goto :goto_4

    .line 534
    :cond_c
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextSkippedCodePoint()I

    move-result v0

    if-gez v0, :cond_d

    goto :goto_4

    :cond_d
    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_e

    .line 540
    invoke-static {v0}, Lcom/ibm/icu/impl/coll/CollationFCD;->mayHaveLccc(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 543
    invoke-direct {p0, v7}, Lcom/ibm/icu/impl/coll/CollationIterator;->backwardNumSkipped(I)V

    :goto_4
    move v2, v5

    goto/16 :goto_1

    :cond_e
    move v6, v0

    .line 548
    iget-object v3, p1, Lcom/ibm/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v4, p3, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextCE32FromContraction(Lcom/ibm/icu/impl/coll/CollationData;ILjava/lang/CharSequence;III)I

    move-result p3

    if-ne p3, v7, :cond_0

    return-void

    :pswitch_7
    if-eqz p4, :cond_f

    .line 503
    invoke-virtual {p0, v7}, Lcom/ibm/icu/impl/coll/CollationIterator;->backwardNumCodePoints(I)V

    .line 504
    :cond_f
    invoke-direct {p0, p1, v2}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE32FromPrefix(Lcom/ibm/icu/impl/coll/CollationData;I)I

    move-result p3

    if-eqz p4, :cond_0

    .line 505
    invoke-virtual {p0, v7}, Lcom/ibm/icu/impl/coll/CollationIterator;->forwardNumCodePoints(I)V

    goto/16 :goto_0

    .line 496
    :pswitch_8
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCE32FromBuilderData(I)I

    move-result p3

    if-ne p3, v0, :cond_0

    .line 498
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object p1, p1, Lcom/ibm/icu/impl/coll/CollationData;->base:Lcom/ibm/icu/impl/coll/CollationData;

    .line 499
    invoke-virtual {p1, p2}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p3

    goto/16 :goto_0

    .line 487
    :pswitch_9
    invoke-static {v2}, Lcom/ibm/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p2

    .line 488
    invoke-static {v2}, Lcom/ibm/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result p3

    .line 489
    iget-object p4, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {p4, p3}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    .line 491
    :goto_5
    iget-object p4, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    iget-object v0, p1, Lcom/ibm/icu/impl/coll/CollationData;->ces:[J

    add-int/lit8 v1, p2, 0x1

    aget-wide v4, v0, p2

    invoke-virtual {p4, v4, v5}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->appendUnsafe(J)V

    add-int/2addr p3, v3

    if-gtz p3, :cond_10

    return-void

    :cond_10
    move p2, v1

    goto :goto_5

    .line 478
    :pswitch_a
    invoke-static {v2}, Lcom/ibm/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p2

    .line 479
    invoke-static {v2}, Lcom/ibm/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result p3

    .line 480
    iget-object p4, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {p4, p3}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    .line 482
    :goto_6
    iget-object p4, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    iget-object v0, p1, Lcom/ibm/icu/impl/coll/CollationData;->ce32s:[I

    add-int/lit8 v1, p2, 0x1

    aget p2, v0, p2

    invoke-static {p2}, Lcom/ibm/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v4

    invoke-virtual {p4, v4, v5}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->appendUnsafe(J)V

    add-int/2addr p3, v3

    if-gtz p3, :cond_11

    return-void

    :cond_11
    move p2, v1

    goto :goto_6

    .line 472
    :pswitch_b
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    .line 473
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    iget p2, p1, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    invoke-static {v2}, Lcom/ibm/icu/impl/coll/Collation;->latinCE0FromCE32(I)J

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    .line 474
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    iget p2, p1, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/2addr p2, v7

    invoke-static {v2}, Lcom/ibm/icu/impl/coll/Collation;->latinCE1FromCE32(I)J

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    .line 475
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    iget p2, p1, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/2addr p2, v1

    iput p2, p1, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    return-void

    .line 469
    :pswitch_c
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {v2}, Lcom/ibm/icu/impl/coll/Collation;->ceFromLongSecondaryCE32(I)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void

    .line 466
    :pswitch_d
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {v2}, Lcom/ibm/icu/impl/coll/Collation;->ceFromLongPrimaryCE32(I)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void

    .line 464
    :pswitch_e
    new-instance p1, Lcom/ibm/icu/util/ICUException;

    const-string p2, "internal program error: should be unreachable"

    invoke-direct {p1, p2}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 640
    :cond_12
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-static {v2}, Lcom/ibm/icu/impl/coll/Collation;->ceFromSimpleCE32(I)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->append(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract backwardNumCodePoints(I)V
.end method

.method final clearCEs()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    iput v1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->cesIndex:I

    return-void
.end method

.method public final clearCEsIfNoneRemaining()V
    .locals 2

    .line 360
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->cesIndex:I

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    iget v1, v1, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->clearCEs()V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 208
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 209
    :cond_1
    check-cast p1, Lcom/ibm/icu/impl/coll/CollationIterator;

    .line 210
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    iget v1, v1, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    iget-object v2, p1, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    iget v2, v2, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->cesIndex:I

    iget v2, p1, Lcom/ibm/icu/impl/coll/CollationIterator;->cesIndex:I

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->numCpFwd:I

    iget v2, p1, Lcom/ibm/icu/impl/coll/CollationIterator;->numCpFwd:I

    if-ne v1, v2, :cond_5

    iget-boolean v1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->isNumeric:Z

    iget-boolean v2, p1, Lcom/ibm/icu/impl/coll/CollationIterator;->isNumeric:Z

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 216
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    iget v2, v2, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-ge v1, v2, :cond_4

    .line 217
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide v2

    iget-object v4, p1, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {v4, v1}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    return v0
.end method

.method public final fetchCEs()I
    .locals 5

    .line 288
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v0

    const-wide v2, 0x101000100L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 290
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    iget v0, v0, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    iput v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->cesIndex:I

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    iget v0, v0, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    return v0
.end method

.method protected forbidSurrogateCodePoints()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract forwardNumCodePoints(I)V
.end method

.method public final getCE(I)J
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getCE32FromBuilderData(I)I
    .locals 1

    .line 455
    new-instance p1, Lcom/ibm/icu/util/ICUException;

    const-string v0, "internal program error: should be unreachable"

    invoke-direct {p1, v0}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getCEs()[J
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->getCEs()[J

    move-result-object v0

    return-object v0
.end method

.method public final getCEsLength()I
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    iget v0, v0, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    return v0
.end method

.method protected getDataCE32(I)I
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p1

    return p1
.end method

.method public abstract getOffset()I
.end method

.method protected handleGetTrailSurrogate()C
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected handleNextCE32()J
    .locals 2

    .line 405
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextCodePoint()I

    move-result v0

    if-gez v0, :cond_0

    const-wide v0, -0xffffff40L

    return-wide v0

    .line 407
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/impl/coll/CollationIterator;->makeCodePointAndCE32Pair(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected makeCodePointAndCE32Pair(II)J
    .locals 4

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    int-to-long p1, p2

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public final nextCE()J
    .locals 10

    .line 241
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->cesIndex:I

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    iget v1, v1, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    if-ge v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    iget v1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->cesIndex:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->get(I)J

    move-result-wide v0

    return-wide v0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->incLength()V

    .line 247
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->handleNextCE32()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long v3, v0, v2

    long-to-int v4, v3

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    const/16 v3, 0x10

    const v5, 0xff00

    const/high16 v6, -0x10000

    const/16 v7, 0xc0

    if-ge v0, v7, :cond_1

    .line 254
    iget-object v4, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    iget v7, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->cesIndex:I

    and-int/2addr v6, v1

    int-to-long v8, v6

    shl-long/2addr v8, v2

    and-int/2addr v1, v5

    int-to-long v1, v1

    shl-long/2addr v1, v3

    or-long/2addr v1, v8

    shl-int/lit8 v0, v0, 0x8

    int-to-long v5, v0

    or-long v0, v1, v5

    invoke-virtual {v4, v7, v0, v1}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    if-ne v0, v7, :cond_4

    if-gez v4, :cond_2

    .line 262
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    iget v1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->cesIndex:I

    const-wide v2, 0x101000100L

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    move-result-wide v0

    return-wide v0

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v0, v0, Lcom/ibm/icu/impl/coll/CollationData;->base:Lcom/ibm/icu/impl/coll/CollationData;

    .line 265
    invoke-virtual {v0, v4}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v1

    and-int/lit16 v8, v1, 0xff

    if-ge v8, v7, :cond_3

    .line 269
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    iget v4, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->cesIndex:I

    and-int/2addr v6, v1

    int-to-long v6, v6

    shl-long/2addr v6, v2

    and-int/2addr v1, v5

    int-to-long v1, v1

    shl-long/2addr v1, v3

    or-long/2addr v1, v6

    shl-int/lit8 v3, v8, 0x8

    int-to-long v5, v3

    or-long/2addr v1, v5

    invoke-virtual {v0, v4, v1, v2}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    move-result-wide v0

    return-wide v0

    :cond_3
    move-object v3, v0

    move v0, v8

    goto :goto_0

    .line 273
    :cond_4
    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    :goto_0
    const/16 v5, 0xc1

    if-ne v0, v5, :cond_5

    .line 277
    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    iget v4, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->cesIndex:I

    sub-int/2addr v1, v0

    int-to-long v0, v1

    shl-long/2addr v0, v2

    const-wide/32 v5, 0x5000500

    or-long/2addr v0, v5

    invoke-virtual {v3, v4, v0, v1}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    move-result-wide v0

    return-wide v0

    .line 280
    :cond_5
    invoke-direct {p0, v3, v4, v1}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextCEFromCE32(Lcom/ibm/icu/impl/coll/CollationData;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract nextCodePoint()I
.end method

.method public abstract previousCodePoint()I
.end method

.method protected final reset()V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    iput v1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->cesIndex:I

    .line 377
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->skipped:Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationIterator$SkippedState;->clear()V

    :cond_0
    return-void
.end method

.method protected final reset(Z)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    invoke-direct {v0}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/coll/CollationIterator;->reset()V

    .line 391
    iput-boolean p1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->isNumeric:Z

    return-void
.end method

.method final setCurrentCE(J)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->ceBuffer:Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;

    iget v1, p0, Lcom/ibm/icu/impl/coll/CollationIterator;->cesIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/ibm/icu/impl/coll/CollationIterator$CEBuffer;->set(IJ)J

    return-void
.end method
