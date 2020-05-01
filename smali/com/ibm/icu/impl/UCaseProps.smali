.class public final Lcom/ibm/icu/impl/UCaseProps;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/UCaseProps$ContextIterator;,
        Lcom/ibm/icu/impl/UCaseProps$IsAcceptable;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

.field public static final dummyStringBuilder:Ljava/lang/StringBuilder;

.field private static final flagsOffset:[B


# instance fields
.field private exceptions:Ljava/lang/String;

.field private indexes:[I

.field private trie:Lcom/ibm/icu/impl/Trie2_16;

.field private unfold:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 123
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/impl/UCaseProps;->flagsOffset:[B

    .line 1282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    .line 1456
    :try_start_0
    new-instance v0, Lcom/ibm/icu/impl/UCaseProps;

    invoke-direct {v0}, Lcom/ibm/icu/impl/UCaseProps;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1458
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x2t
        0x1t
        0x2t
        0x2t
        0x3t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x5t
        0x6t
        0x6t
        0x7t
        0x6t
        0x7t
        0x7t
        0x8t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ucase.icu"

    .line 42
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 43
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/UCaseProps;->readData(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static final getCaseLocale(Lcom/ibm/icu/util/ULocale;)I
    .locals 0

    .line 621
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/impl/UCaseProps;->getCaseLocale(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static final getCaseLocale(Ljava/lang/String;)I
    .locals 7

    .line 629
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne v0, v5, :cond_6

    const-string v0, "en"

    .line 630
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x74

    if-le v0, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "tr"

    .line 632
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "az"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "el"

    .line 634
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const-string v0, "lt"

    .line 636
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v4

    :cond_3
    const-string v0, "nl"

    .line 638
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    return v1

    :cond_4
    :goto_0
    return v5

    :cond_5
    :goto_1
    return v3

    .line 641
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_b

    const-string v0, "tur"

    .line 642
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "aze"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const-string v0, "ell"

    .line 644
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    :cond_8
    const-string v0, "lit"

    .line 646
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v4

    :cond_9
    const-string v0, "nld"

    .line 648
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    return v1

    :cond_a
    :goto_2
    return v5

    :cond_b
    return v3
.end method

.method private static final getDelta(I)I
    .locals 0

    int-to-short p0, p0

    shr-int/lit8 p0, p0, 0x7

    return p0
.end method

.method private static final getExceptionsOffset(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x5

    return p0
.end method

.method private final getSlotValue(III)I
    .locals 1

    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_0

    .line 175
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/UCaseProps;->slotOffset(II)B

    move-result p1

    add-int/2addr p3, p1

    .line 176
    iget-object p1, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    goto :goto_0

    .line 178
    :cond_0
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/UCaseProps;->slotOffset(II)B

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p3, p1

    .line 179
    iget-object p1, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 p2, p3, 0x1

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    .line 180
    iget-object p3, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    or-int/2addr p1, p2

    :goto_0
    return p1
.end method

.method private final getSlotValueAndOffset(III)J
    .locals 4

    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_0

    .line 161
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/UCaseProps;->slotOffset(II)B

    move-result p1

    add-int/2addr p3, p1

    .line 162
    iget-object p1, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    int-to-long p1, p1

    goto :goto_0

    .line 164
    :cond_0
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/UCaseProps;->slotOffset(II)B

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p3, p1

    .line 165
    iget-object p1, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 p2, p3, 0x1

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    int-to-long v0, p1

    const/16 p1, 0x10

    shl-long/2addr v0, p1

    .line 166
    iget-object p1, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    int-to-long v2, p1

    or-long/2addr v0, v2

    move p3, p2

    move-wide p1, v0

    :goto_0
    int-to-long v0, p3

    const/16 p3, 0x20

    shl-long/2addr v0, p3

    or-long/2addr p1, v0

    return-wide p1
.end method

.method private static final getTypeAndIgnorableFromProps(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method private static final getTypeFromProps(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x3

    return p0
.end method

.method private static final hasSlot(II)Z
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isFollowedByCasedLetter(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 663
    :cond_0
    invoke-interface {p1, p2}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :goto_0
    invoke-interface {p1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result p2

    if-ltz p2, :cond_2

    .line 664
    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    move-result p2

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method private final isFollowedByDotAbove(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 784
    invoke-interface {p1, v1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :cond_1
    invoke-interface {p1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v2

    if-ltz v2, :cond_3

    const/16 v3, 0x307

    if-ne v2, v3, :cond_2

    return v1

    .line 788
    :cond_2
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/UCaseProps;->getDotType(I)I

    move-result v2

    const/16 v3, 0x60

    if-eq v2, v3, :cond_1

    :cond_3
    return v0
.end method

.method private final isFollowedByMoreAbove(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 763
    invoke-interface {p1, v1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :cond_1
    invoke-interface {p1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v2

    if-ltz v2, :cond_3

    .line 764
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/UCaseProps;->getDotType(I)I

    move-result v2

    const/16 v3, 0x40

    if-ne v2, v3, :cond_2

    return v1

    :cond_2
    const/16 v3, 0x60

    if-eq v2, v3, :cond_1

    :cond_3
    return v0
.end method

.method private final isPrecededBySoftDotted(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 686
    invoke-interface {p1, v1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :cond_1
    invoke-interface {p1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v1

    if-ltz v1, :cond_3

    .line 687
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/UCaseProps;->getDotType(I)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/16 v2, 0x60

    if-eq v1, v2, :cond_1

    :cond_3
    return v0
.end method

.method private final isPrecededBy_I(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 741
    invoke-interface {p1, v1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :cond_1
    invoke-interface {p1}, Lcom/ibm/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v1

    if-ltz v1, :cond_3

    const/16 v2, 0x49

    if-ne v1, v2, :cond_2

    const/4 p1, 0x1

    return p1

    .line 745
    :cond_2
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/UCaseProps;->getDotType(I)I

    move-result v1

    const/16 v2, 0x60

    if-eq v1, v2, :cond_1

    :cond_3
    return v0
.end method

.method private static final propsHasException(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final readData(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 48
    new-instance v0, Lcom/ibm/icu/impl/UCaseProps$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/UCaseProps$IsAcceptable;-><init>(Lcom/ibm/icu/impl/UCaseProps$1;)V

    const v1, 0x63415345

    invoke-static {p1, v1, v0}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)I

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 55
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/ibm/icu/impl/UCaseProps;->indexes:[I

    .line 57
    iget-object v1, p0, Lcom/ibm/icu/impl/UCaseProps;->indexes:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 59
    iget-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->indexes:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/Trie2_16;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    .line 64
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->indexes:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    .line 65
    iget-object v1, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/Trie2_16;->getSerializedLength()I

    move-result v1

    if-gt v1, v0, :cond_3

    sub-int/2addr v0, v1

    .line 70
    invoke-static {p1, v0}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 73
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->indexes:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    if-lez v0, :cond_1

    .line 75
    invoke-static {p1, v0, v2}, Lcom/ibm/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->indexes:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    if-lez v0, :cond_2

    .line 81
    invoke-static {p1, v0, v2}, Lcom/ibm/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C

    :cond_2
    return-void

    .line 67
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "ucase.icu: not enough bytes for the trie"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "indexes[0] too small in ucase.icu"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final slotOffset(II)B
    .locals 2

    .line 146
    sget-object v0, Lcom/ibm/icu/impl/UCaseProps;->flagsOffset:[B

    const/4 v1, 0x1

    shl-int p1, v1, p1

    sub-int/2addr p1, v1

    and-int/2addr p0, p1

    aget-byte p0, v0, p0

    return p0
.end method

.method private final strcmpMax(Ljava/lang/String;II)I
    .locals 6

    .line 367
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p3, v0

    const/4 v1, 0x0

    move v2, v0

    move v0, p2

    const/4 p2, 0x0

    :goto_0
    add-int/lit8 v3, p2, 0x1

    .line 371
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 372
    iget-object v4, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C

    add-int/lit8 v5, v0, 0x1

    aget-char v0, v4, v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    sub-int/2addr p2, v0

    if-eqz p2, :cond_1

    return p2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_4

    if-eqz p3, :cond_3

    .line 383
    aget-char p1, v4, v5

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    neg-int p1, p3

    return p1

    :cond_3
    :goto_1
    return v1

    :cond_4
    move p2, v3

    move v0, v5

    goto :goto_0
.end method

.method private final toUpperOrTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;IZ)I
    .locals 8

    .line 982
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 983
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 984
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result p2

    if-ne p2, v2, :cond_0

    .line 985
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I

    move-result p2

    add-int/2addr p2, p1

    goto/16 :goto_2

    :cond_0
    move p2, p1

    goto/16 :goto_2

    .line 988
    :cond_1
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v0

    .line 989
    iget-object v1, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit16 v1, v0, 0x4000

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v1, :cond_3

    if-ne p4, v5, :cond_2

    const/16 p3, 0x69

    if-ne p1, p3, :cond_2

    const/16 p1, 0x130

    return p1

    :cond_2
    if-ne p4, v4, :cond_5

    const/16 p3, 0x307

    if-ne p1, p3, :cond_5

    .line 1009
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/UCaseProps;->isPrecededBySoftDotted(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    return p1

    :cond_3
    const/4 p2, 0x7

    .line 1023
    invoke-static {v0, p2}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 1024
    invoke-direct {p0, v0, p2, v3}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v6

    long-to-int p2, v6

    const p4, 0xffff

    and-int/2addr p2, p4

    const/16 p4, 0x20

    shr-long/2addr v6, p4

    long-to-int p4, v6

    add-int/2addr p4, v2

    and-int/lit8 v1, p2, 0xf

    add-int/2addr p4, v1

    shr-int/lit8 p2, p2, 0x4

    and-int/lit8 v1, p2, 0xf

    add-int/2addr p4, v1

    shr-int/lit8 p2, p2, 0x4

    if-eqz p5, :cond_4

    goto :goto_0

    :cond_4
    and-int/lit8 v1, p2, 0xf

    add-int/2addr p4, v1

    shr-int/lit8 p2, p2, 0x4

    :goto_0
    and-int/lit8 p2, p2, 0xf

    if-eqz p2, :cond_5

    .line 1047
    :try_start_0
    iget-object p1, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int p5, p4, p2

    invoke-interface {p3, p1, p4, p5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    move-exception p1

    .line 1052
    new-instance p2, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {p2, p1}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_5
    if-nez p5, :cond_6

    .line 1057
    invoke-static {v0, v4}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_1

    .line 1059
    :cond_6
    invoke-static {v0, v5}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result p2

    if-eqz p2, :cond_8

    const/4 v4, 0x2

    .line 1065
    :goto_1
    invoke-direct {p0, v0, v4, v3}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p2

    :goto_2
    if-ne p2, p1, :cond_7

    not-int p2, p2

    :cond_7
    return p2

    :cond_8
    not-int p1, p1

    return p1
.end method


# virtual methods
.method public final addCaseClosure(ILcom/ibm/icu/text/UnicodeSet;)V
    .locals 7

    const/16 v0, 0x69

    const/16 v1, 0x49

    if-eq p1, v1, :cond_9

    if-eq p1, v0, :cond_8

    const/16 v0, 0x130

    if-eq p1, v0, :cond_7

    const/16 v0, 0x131

    if-eq p1, v0, :cond_6

    .line 279
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 280
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v1

    if-eqz v1, :cond_6

    .line 283
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I

    move-result v0

    if-eqz v0, :cond_6

    add-int/2addr p1, v0

    .line 285
    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto/16 :goto_4

    .line 293
    :cond_0
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result p1

    .line 295
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-gt v2, v3, :cond_2

    .line 302
    invoke-static {p1, v2}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 304
    invoke-direct {p0, p1, v2, v1}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v3

    .line 305
    invoke-virtual {p2, v3}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    .line 310
    invoke-static {p1, v2}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v3

    const/16 v4, 0x20

    if-eqz v3, :cond_3

    .line 312
    invoke-direct {p0, p1, v2, v1}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v2

    long-to-int v0, v2

    and-int/lit8 v0, v0, 0xf

    shr-long/2addr v2, v4

    long-to-int v3, v2

    add-int/lit8 v2, v3, 0x1

    move v6, v2

    move v2, v0

    move v0, v6

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x7

    .line 321
    invoke-static {p1, v3}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 323
    invoke-direct {p0, p1, v3, v1}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v0

    long-to-int p1, v0

    shr-long/2addr v0, v4

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1

    const v0, 0xffff

    and-int/2addr p1, v0

    and-int/lit8 v0, p1, 0xf

    add-int/2addr v1, v0

    shr-int/lit8 p1, p1, 0x4

    and-int/lit8 v0, p1, 0xf

    if-eqz v0, :cond_4

    .line 338
    iget-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/2addr v0, v1

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    shr-int/lit8 p1, p1, 0x4

    and-int/lit8 v1, p1, 0xf

    add-int/2addr v0, v1

    shr-int/lit8 p1, p1, 0x4

    add-int/2addr v0, p1

    :cond_5
    add-int/2addr v2, v0

    :goto_3
    if-ge v0, v2, :cond_6

    .line 354
    iget-object p1, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    .line 355
    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 353
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result p1

    add-int/2addr v0, p1

    goto :goto_3

    :cond_6
    :goto_4
    return-void

    :cond_7
    const-string p1, "i\u0307"

    .line 269
    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    return-void

    .line 265
    :cond_8
    invoke-virtual {p2, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    return-void

    .line 262
    :cond_9
    invoke-virtual {p2, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method public final addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 99
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/Trie2$Range;

    iget-boolean v2, v1, Lcom/ibm/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v2, :cond_0

    .line 100
    iget v1, v1, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-virtual {p1, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final addStringCaseClosure(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeSet;)Z
    .locals 11

    .line 404
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    .line 407
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    return v1

    .line 419
    :cond_1
    iget-object v3, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C

    aget-char v4, v3, v1

    .line 420
    aget-char v5, v3, v2

    const/4 v6, 0x2

    .line 421
    aget-char v3, v3, v6

    if-le v0, v3, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_6

    add-int v7, v0, v4

    .line 433
    div-int/2addr v7, v6

    add-int/lit8 v8, v7, 0x1

    mul-int v9, v8, v5

    .line 435
    invoke-direct {p0, p1, v9, v3}, Lcom/ibm/icu/impl/UCaseProps;->strcmpMax(Ljava/lang/String;II)I

    move-result v10

    if-nez v10, :cond_4

    :goto_1
    if-ge v3, v5, :cond_3

    .line 441
    iget-object p1, p0, Lcom/ibm/icu/impl/UCaseProps;->unfold:[C

    add-int v0, v9, v3

    aget-char v0, p1, v0

    if-eqz v0, :cond_3

    .line 442
    array-length v0, p1

    invoke-static {p1, v9, v0, v3}, Lcom/ibm/icu/text/UTF16;->charAt([CIII)I

    move-result p1

    .line 443
    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 444
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/UCaseProps;->addCaseClosure(ILcom/ibm/icu/text/UnicodeSet;)V

    .line 441
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result p1

    add-int/2addr v3, p1

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    if-gez v10, :cond_5

    move v4, v7

    goto :goto_0

    :cond_5
    move v0, v8

    goto :goto_0

    :cond_6
    :goto_2
    return v1
.end method

.method public final fold(II)I
    .locals 5

    .line 1133
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 1134
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1135
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result p2

    const/4 v1, 0x2

    if-lt p2, v1, :cond_6

    .line 1136
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I

    move-result p2

    add-int/2addr p1, p2

    goto :goto_1

    .line 1139
    :cond_0
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v0

    .line 1140
    iget-object v1, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_4

    and-int/lit16 p2, p2, 0xff

    const/16 v1, 0x69

    const/16 v3, 0x130

    const/16 v4, 0x49

    if-nez p2, :cond_2

    if-ne p1, v4, :cond_1

    return v1

    :cond_1
    if-ne p1, v3, :cond_4

    return p1

    :cond_2
    if-ne p1, v4, :cond_3

    const/16 p1, 0x131

    return p1

    :cond_3
    if-ne p1, v3, :cond_4

    return v1

    :cond_4
    const/4 p2, 0x1

    .line 1164
    invoke-static {v0, p2}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    goto :goto_0

    .line 1166
    :cond_5
    invoke-static {v0, v3}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    .line 1171
    :goto_0
    invoke-direct {p0, v0, p2, v2}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p1

    :cond_6
    :goto_1
    return p1
.end method

.method public final getDotType(I)I
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result p1

    .line 470
    invoke-static {p1}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 p1, p1, 0x60

    return p1

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-static {p1}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    shr-int/lit8 p1, p1, 0x7

    and-int/lit8 p1, p1, 0x60

    return p1
.end method

.method public final getType(I)I
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result p1

    invoke-static {p1}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result p1

    return p1
.end method

.method public final getTypeOrIgnorable(I)I
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result p1

    invoke-static {p1}, Lcom/ibm/icu/impl/UCaseProps;->getTypeAndIgnorableFromProps(I)I

    move-result p1

    return p1
.end method

.method public final hasBinaryProperty(II)Z
    .locals 5

    const/16 v0, 0x16

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_c

    const/16 v0, 0x1b

    if-eq p2, v0, :cond_b

    const/16 v0, 0x1e

    const/4 v3, 0x2

    if-eq p2, v0, :cond_9

    const/16 v0, 0x22

    if-eq p2, v0, :cond_8

    const/16 v0, 0x37

    const/4 v4, 0x0

    if-eq p2, v0, :cond_5

    packed-switch p2, :pswitch_data_0

    return v1

    .line 1317
    :pswitch_0
    sget-object p2, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1318
    sget-object p2, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v4, p2, v2}, Lcom/ibm/icu/impl/UCaseProps;->toFullTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1314
    :pswitch_1
    sget-object p2, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1315
    sget-object p2, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v4, p2, v2}, Lcom/ibm/icu/impl/UCaseProps;->toFullUpper(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 1311
    :pswitch_2
    sget-object p2, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1312
    sget-object p2, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v4, p2, v2}, Lcom/ibm/icu/impl/UCaseProps;->toFullLower(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result p1

    if-ltz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 1297
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    move-result p1

    shr-int/2addr p1, v3

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 1295
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCaseProps;->getType(I)I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    .line 1321
    :cond_5
    sget-object p2, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1322
    sget-object p2, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    .line 1323
    invoke-virtual {p0, p1, v4, p2, v2}, Lcom/ibm/icu/impl/UCaseProps;->toFullLower(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result p2

    if-gez p2, :cond_6

    sget-object p2, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    .line 1324
    invoke-virtual {p0, p1, v4, p2, v2}, Lcom/ibm/icu/impl/UCaseProps;->toFullUpper(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result p2

    if-gez p2, :cond_6

    sget-object p2, Lcom/ibm/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    .line 1325
    invoke-virtual {p0, p1, v4, p2, v2}, Lcom/ibm/icu/impl/UCaseProps;->toFullTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result p1

    if-ltz p1, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    return v1

    .line 1293
    :cond_8
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCaseProps;->isCaseSensitive(I)Z

    move-result p1

    return p1

    .line 1289
    :cond_9
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCaseProps;->getType(I)I

    move-result p1

    if-ne v3, p1, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1

    .line 1291
    :cond_b
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCaseProps;->isSoftDotted(I)Z

    move-result p1

    return p1

    .line 1287
    :cond_c
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCaseProps;->getType(I)I

    move-result p1

    if-ne v2, p1, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isCaseSensitive(I)Z
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isSoftDotted(I)Z
    .locals 1

    .line 478
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCaseProps;->getDotType(I)I

    move-result p1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final toFullFolding(ILjava/lang/Appendable;I)I
    .locals 7

    .line 1196
    iget-object v0, p0, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 1197
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_1

    .line 1198
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result p2

    if-lt p2, v2, :cond_0

    .line 1199
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I

    move-result p2

    add-int/2addr p2, p1

    goto/16 :goto_1

    :cond_0
    move p2, p1

    goto/16 :goto_1

    .line 1202
    :cond_1
    invoke-static {v0}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v0

    .line 1203
    iget-object v1, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v1, 0x8000

    and-int/2addr v1, v0

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    and-int/lit16 p3, p3, 0xff

    const/16 v1, 0x69

    const/16 v5, 0x130

    const/16 v6, 0x49

    if-nez p3, :cond_3

    if-ne p1, v6, :cond_2

    return v1

    :cond_2
    if-ne p1, v5, :cond_6

    :try_start_0
    const-string p1, "i\u0307"

    .line 1218
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 1221
    new-instance p2, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {p2, p1}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    if-ne p1, v6, :cond_4

    const/16 p1, 0x131

    return p1

    :cond_4
    if-ne p1, v5, :cond_6

    return v1

    :cond_5
    const/4 p3, 0x7

    .line 1234
    invoke-static {v0, p3}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1235
    invoke-direct {p0, v0, p3, v3}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v1

    long-to-int p3, v1

    const v5, 0xffff

    and-int/2addr p3, v5

    const/16 v5, 0x20

    shr-long/2addr v1, v5

    long-to-int v2, v1

    add-int/2addr v2, v4

    and-int/lit8 v1, p3, 0xf

    add-int/2addr v2, v1

    shr-int/lit8 p3, p3, 0x4

    and-int/lit8 p3, p3, 0xf

    if-eqz p3, :cond_6

    .line 1248
    :try_start_1
    iget-object p1, p0, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int v0, v2, p3

    invoke-interface {p2, p1, v2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return p3

    :catch_1
    move-exception p1

    .line 1253
    new-instance p2, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {p2, p1}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1258
    :cond_6
    invoke-static {v0, v4}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_7

    const/4 p3, 0x1

    goto :goto_0

    .line 1260
    :cond_7
    invoke-static {v0, p3}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1265
    :goto_0
    invoke-direct {p0, v0, p3, v3}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p2

    :goto_1
    if-ne p2, p1, :cond_8

    not-int p2, p2

    :cond_8
    return p2

    :cond_9
    not-int p1, p1

    return p1
.end method

.method public final toFullLower(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 824
    iget-object v5, v1, Lcom/ibm/icu/impl/UCaseProps;->trie:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v5, v0}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v5

    .line 825
    invoke-static {v5}, Lcom/ibm/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v6

    const/4 v7, 0x2

    if-nez v6, :cond_0

    .line 826
    invoke-static {v5}, Lcom/ibm/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v2

    if-lt v2, v7, :cond_11

    .line 827
    invoke-static {v5}, Lcom/ibm/icu/impl/UCaseProps;->getDelta(I)I

    move-result v2

    add-int/2addr v2, v0

    goto/16 :goto_1

    .line 830
    :cond_0
    invoke-static {v5}, Lcom/ibm/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v5

    .line 831
    iget-object v6, v1, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v6, v5, 0x4000

    const/4 v10, 0x0

    if-eqz v6, :cond_f

    const-string v6, "i\u0307"

    const/16 v11, 0x49

    const/4 v12, 0x3

    if-ne v4, v12, :cond_a

    const/16 v13, 0x12e

    const/16 v14, 0x128

    const/16 v15, 0xcd

    const/16 v9, 0xcc

    const/16 v12, 0x4a

    if-eq v0, v11, :cond_1

    if-eq v0, v12, :cond_1

    if-ne v0, v13, :cond_2

    .line 847
    :cond_1
    invoke-direct {v1, v2}, Lcom/ibm/icu/impl/UCaseProps;->isFollowedByMoreAbove(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z

    move-result v16

    if-nez v16, :cond_3

    :cond_2
    if-eq v0, v9, :cond_3

    if-eq v0, v15, :cond_3

    if-ne v0, v14, :cond_a

    :cond_3
    if-eq v0, v11, :cond_9

    if-eq v0, v12, :cond_8

    if-eq v0, v9, :cond_7

    if-eq v0, v15, :cond_6

    if-eq v0, v14, :cond_5

    if-eq v0, v13, :cond_4

    return v10

    :cond_4
    :try_start_0
    const-string v0, "\u012f\u0307"

    .line 876
    invoke-interface {v3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return v7

    :cond_5
    const-string v0, "i\u0307\u0303"

    .line 885
    invoke-interface {v3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const/4 v0, 0x3

    return v0

    :cond_6
    const/4 v0, 0x3

    const-string v2, "i\u0307\u0301"

    .line 882
    invoke-interface {v3, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return v0

    :cond_7
    const/4 v0, 0x3

    const-string v2, "i\u0307\u0300"

    .line 879
    invoke-interface {v3, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return v0

    :cond_8
    const-string v0, "j\u0307"

    .line 873
    invoke-interface {v3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return v7

    :catch_0
    move-exception v0

    goto :goto_0

    .line 870
    :cond_9
    invoke-interface {v3, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    .line 891
    :goto_0
    new-instance v2, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v2, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_a
    const/16 v9, 0x130

    if-ne v4, v7, :cond_b

    if-ne v0, v9, :cond_b

    const/16 v0, 0x69

    return v0

    :cond_b
    if-ne v4, v7, :cond_c

    const/16 v12, 0x307

    if-ne v0, v12, :cond_c

    .line 903
    invoke-direct {v1, v2}, Lcom/ibm/icu/impl/UCaseProps;->isPrecededBy_I(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z

    move-result v12

    if-eqz v12, :cond_c

    return v10

    :cond_c
    if-ne v4, v7, :cond_d

    if-ne v0, v11, :cond_d

    .line 912
    invoke-direct {v1, v2}, Lcom/ibm/icu/impl/UCaseProps;->isFollowedByDotAbove(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;)Z

    move-result v4

    if-nez v4, :cond_d

    const/16 v0, 0x131

    return v0

    :cond_d
    if-ne v0, v9, :cond_e

    .line 927
    :try_start_1
    invoke-interface {v3, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return v7

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 930
    new-instance v0, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v0, v2}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    const/16 v3, 0x3a3

    if-ne v0, v3, :cond_10

    const/4 v3, 0x1

    .line 933
    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/impl/UCaseProps;->isFollowedByCasedLetter(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;I)Z

    move-result v3

    if-nez v3, :cond_10

    const/4 v3, -0x1

    .line 934
    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/impl/UCaseProps;->isFollowedByCasedLetter(Lcom/ibm/icu/impl/UCaseProps$ContextIterator;I)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v0, 0x3c2

    return v0

    :cond_f
    const/4 v2, 0x7

    .line 946
    invoke-static {v5, v2}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 947
    invoke-direct {v1, v5, v2, v8}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v6

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    if-eqz v2, :cond_10

    const/16 v0, 0x20

    shr-long v4, v6, v0

    long-to-int v0, v4

    const/4 v4, 0x1

    add-int/2addr v0, v4

    .line 955
    :try_start_2
    iget-object v4, v1, Lcom/ibm/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int v5, v0, v2

    invoke-interface {v3, v4, v0, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return v2

    :catch_2
    move-exception v0

    .line 960
    new-instance v2, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v2, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 965
    :cond_10
    invoke-static {v5, v10}, Lcom/ibm/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 966
    invoke-direct {v1, v5, v10, v8}, Lcom/ibm/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v2

    goto :goto_1

    :cond_11
    move v2, v0

    :goto_1
    if-ne v2, v0, :cond_12

    not-int v2, v2

    :cond_12
    return v2
.end method

.method public final toFullTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1080
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/UCaseProps;->toUpperOrTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;IZ)I

    move-result p1

    return p1
.end method

.method public final toFullUpper(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1074
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/UCaseProps;->toUpperOrTitle(ILcom/ibm/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;IZ)I

    move-result p1

    return p1
.end method
