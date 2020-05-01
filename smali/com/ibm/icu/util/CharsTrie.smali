.class public final Lcom/ibm/icu/util/CharsTrie;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/util/CharsTrie$Iterator;,
        Lcom/ibm/icu/util/CharsTrie$Entry;,
        Lcom/ibm/icu/util/CharsTrie$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Iterable<",
        "Lcom/ibm/icu/util/CharsTrie$Entry;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;


# instance fields
.field private chars_:Ljava/lang/CharSequence;

.field private pos_:I

.field private remainingMatchLength_:I

.field private root_:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ibm/icu/util/BytesTrie$Result;

    const/4 v1, 0x0

    .line 728
    sget-object v2, Lcom/ibm/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/ibm/icu/util/BytesTrie$Result;->FINAL_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/util/CharsTrie;->valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    .line 50
    iput p2, p0, Lcom/ibm/icu/util/CharsTrie;->root_:I

    iput p2, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    const/4 p1, -0x1

    .line 51
    iput p1, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    return-void
.end method

.method static synthetic access$1000(II)I
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/ibm/icu/util/CharsTrie;->skipValue(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(II)I
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/ibm/icu/util/CharsTrie;->skipNodeValue(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Ljava/lang/CharSequence;II)I
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/util/CharsTrie;->readValue(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Ljava/lang/CharSequence;II)I
    .locals 0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/util/CharsTrie;->readNodeValue(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Ljava/lang/CharSequence;I)I
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/ibm/icu/util/CharsTrie;->skipDelta(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Ljava/lang/CharSequence;I)I
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/ibm/icu/util/CharsTrie;->jumpByDelta(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method private branchNext(III)Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 3

    if-nez p2, :cond_0

    .line 734
    iget-object p2, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v0, p1, 0x1

    invoke-interface {p2, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    move p1, v0

    :cond_0
    const/4 v0, 0x1

    add-int/2addr p2, v0

    :goto_0
    const/4 v1, 0x5

    if-le p2, v1, :cond_2

    .line 740
    iget-object v1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-ge p3, p1, :cond_1

    shr-int/lit8 p2, p2, 0x1

    .line 742
    iget-object p1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lcom/ibm/icu/util/CharsTrie;->jumpByDelta(Ljava/lang/CharSequence;I)I

    move-result p1

    goto :goto_0

    :cond_1
    shr-int/lit8 p1, p2, 0x1

    sub-int/2addr p2, p1

    .line 745
    iget-object p1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lcom/ibm/icu/util/CharsTrie;->skipDelta(Ljava/lang/CharSequence;I)I

    move-result p1

    goto :goto_0

    .line 752
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 v1, 0x40

    if-ne p3, p1, :cond_7

    .line 754
    iget-object p1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const p2, 0x8000

    and-int/2addr p2, p1

    if-eqz p2, :cond_3

    .line 757
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->FINAL_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    const/16 p2, 0x4000

    if-ge p1, p2, :cond_4

    goto :goto_1

    :cond_4
    const/16 p2, 0x7fff

    if-ge p1, p2, :cond_5

    add-int/lit16 p1, p1, -0x4000

    shl-int/lit8 p1, p1, 0x10

    .line 766
    iget-object p2, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 p3, v2, 0x1

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    or-int/2addr p1, p2

    move v2, p3

    goto :goto_1

    .line 768
    :cond_5
    iget-object p1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    iget-object p2, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 p3, v2, 0x1

    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    or-int/2addr p1, p2

    add-int/lit8 v2, v2, 0x2

    :goto_1
    add-int/2addr v2, p1

    .line 773
    iget-object p1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-lt p1, v1, :cond_6

    .line 774
    sget-object p2, Lcom/ibm/icu/util/CharsTrie;->valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;

    shr-int/lit8 p1, p1, 0xf

    aget-object p1, p2, p1

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    .line 776
    :goto_2
    iput v2, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    return-object p1

    :cond_7
    add-int/lit8 p2, p2, -0x1

    .line 780
    iget-object p1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lcom/ibm/icu/util/CharsTrie;->skipValue(Ljava/lang/CharSequence;I)I

    move-result p1

    if-gt p2, v0, :cond_2

    .line 782
    iget-object p2, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v0, p1, 0x1

    invoke-interface {p2, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-ne p3, p1, :cond_9

    .line 783
    iput v0, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    .line 784
    iget-object p1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-lt p1, v1, :cond_8

    .line 785
    sget-object p2, Lcom/ibm/icu/util/CharsTrie;->valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;

    shr-int/lit8 p1, p1, 0xf

    aget-object p1, p2, p1

    goto :goto_3

    :cond_8
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    :goto_3
    return-object p1

    .line 787
    :cond_9
    invoke-direct {p0}, Lcom/ibm/icu/util/CharsTrie;->stop()V

    .line 788
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    return-object p1
.end method

.method private static jumpByDelta(Ljava/lang/CharSequence;I)I
    .locals 3

    add-int/lit8 v0, p1, 0x1

    .line 704
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const v1, 0xfc00

    if-lt p1, v1, :cond_1

    const v2, 0xffff

    if-ne p1, v2, :cond_0

    .line 707
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    or-int/2addr p1, p0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v1

    shl-int/lit8 p1, p1, 0x10

    add-int/lit8 v1, v0, 0x1

    .line 710
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    or-int/2addr p1, p0

    move v0, v1

    :cond_1
    :goto_0
    add-int/2addr v0, p1

    return v0
.end method

.method private nextImpl(II)Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 4

    .line 794
    iget-object v0, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    :goto_0
    const/16 v0, 0x30

    if-ge p1, v0, :cond_0

    .line 797
    invoke-direct {p0, v1, p1, p2}, Lcom/ibm/icu/util/CharsTrie;->branchNext(III)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v2, 0x40

    if-ge p1, v2, :cond_2

    sub-int/2addr p1, v0

    .line 801
    iget-object v0, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne p2, v0, :cond_3

    add-int/lit8 p1, p1, -0x1

    .line 802
    iput p1, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    .line 803
    iput v3, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    if-gez p1, :cond_1

    .line 804
    iget-object p1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-lt p1, v2, :cond_1

    sget-object p2, Lcom/ibm/icu/util/CharsTrie;->valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;

    shr-int/lit8 p1, p1, 0xf

    aget-object p1, p2, p1

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    :goto_1
    return-object p1

    :cond_2
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_4

    .line 819
    :cond_3
    invoke-direct {p0}, Lcom/ibm/icu/util/CharsTrie;->stop()V

    .line 820
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    return-object p1

    .line 815
    :cond_4
    invoke-static {v1, p1}, Lcom/ibm/icu/util/CharsTrie;->skipNodeValue(II)I

    move-result v1

    and-int/lit8 p1, p1, 0x3f

    goto :goto_0
.end method

.method private static readNodeValue(Ljava/lang/CharSequence;II)I
    .locals 2

    const/16 v0, 0x4040

    if-ge p2, v0, :cond_0

    shr-int/lit8 p0, p2, 0x6

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_0
    const/16 v1, 0x7fc0

    if-ge p2, v1, :cond_1

    and-int/2addr p2, v1

    sub-int/2addr p2, v0

    shl-int/lit8 p2, p2, 0xa

    .line 685
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    goto :goto_0

    .line 687
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    shl-int/lit8 p2, p2, 0x10

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    :goto_0
    or-int/2addr p0, p2

    :goto_1
    return p0
.end method

.method private static readValue(Ljava/lang/CharSequence;II)I
    .locals 1

    const/16 v0, 0x4000

    if-ge p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x7fff

    if-ge p2, v0, :cond_1

    add-int/lit16 p2, p2, -0x4000

    shl-int/lit8 p2, p2, 0x10

    .line 658
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    goto :goto_0

    .line 660
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    shl-int/lit8 p2, p2, 0x10

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    :goto_0
    or-int/2addr p2, p0

    :goto_1
    return p2
.end method

.method private static skipDelta(Ljava/lang/CharSequence;I)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 717
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const p1, 0xfc00

    if-lt p0, p1, :cond_1

    const p1, 0xffff

    if-ne p0, p1, :cond_0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private static skipNodeValue(II)I
    .locals 1

    const/16 v0, 0x4040

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7fc0

    if-ge p1, v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x2

    :cond_1
    :goto_0
    return p0
.end method

.method private static skipValue(II)I
    .locals 1

    const/16 v0, 0x4000

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7fff

    if-ge p1, v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x2

    :cond_1
    :goto_0
    return p0
.end method

.method private static skipValue(Ljava/lang/CharSequence;I)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 675
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    and-int/lit16 p0, p0, 0x7fff

    .line 676
    invoke-static {v0, p0}, Lcom/ibm/icu/util/CharsTrie;->skipValue(II)I

    move-result p0

    return p0
.end method

.method private stop()V
    .locals 1

    const/4 v0, -0x1

    .line 648
    iput v0, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 62
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public first(I)Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 1

    const/4 v0, -0x1

    .line 153
    iput v0, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    .line 154
    iget v0, p0, Lcom/ibm/icu/util/CharsTrie;->root_:I

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/util/CharsTrie;->nextImpl(II)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p1

    return-object p1
.end method

.method public firstForCodePoint(I)Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 1

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 167
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/CharsTrie;->first(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p1

    goto :goto_0

    .line 168
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/CharsTrie;->first(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/CharsTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    :goto_0
    return-object p1
.end method

.method public getValue()I
    .locals 3

    .line 318
    iget v0, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    .line 319
    iget-object v1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    and-int/lit16 v0, v0, 0x7fff

    .line 322
    invoke-static {v1, v2, v0}, Lcom/ibm/icu/util/CharsTrie;->readValue(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Lcom/ibm/icu/util/CharsTrie;->readNodeValue(Ljava/lang/CharSequence;II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public iterator()Lcom/ibm/icu/util/CharsTrie$Iterator;
    .locals 7

    .line 390
    new-instance v6, Lcom/ibm/icu/util/CharsTrie$Iterator;

    iget-object v1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    iget v3, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/util/CharsTrie$Iterator;-><init>(Ljava/lang/CharSequence;IIILcom/ibm/icu/util/CharsTrie$1;)V

    return-object v6
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/ibm/icu/util/CharsTrie;->iterator()Lcom/ibm/icu/util/CharsTrie$Iterator;

    move-result-object v0

    return-object v0
.end method

.method public next(I)Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 4

    .line 180
    iget v0, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    if-gez v0, :cond_0

    .line 182
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    return-object p1

    .line 184
    :cond_0
    iget v1, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    if-ltz v1, :cond_3

    .line 187
    iget-object v2, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne p1, v0, :cond_2

    add-int/lit8 v1, v1, -0x1

    .line 188
    iput v1, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    .line 189
    iput v3, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    if-gez v1, :cond_1

    .line 191
    iget-object p1, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 v0, 0x40

    if-lt p1, v0, :cond_1

    sget-object v0, Lcom/ibm/icu/util/CharsTrie;->valueResults_:[Lcom/ibm/icu/util/BytesTrie$Result;

    shr-int/lit8 p1, p1, 0xf

    aget-object p1, v0, p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    :goto_0
    return-object p1

    .line 194
    :cond_2
    invoke-direct {p0}, Lcom/ibm/icu/util/CharsTrie;->stop()V

    .line 195
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    return-object p1

    .line 198
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/util/CharsTrie;->nextImpl(II)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p1

    return-object p1
.end method

.method public nextForCodePoint(I)Lcom/ibm/icu/util/BytesTrie$Result;
    .locals 1

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 210
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/CharsTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p1

    goto :goto_0

    .line 211
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/CharsTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/CharsTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    :goto_0
    return-object p1
.end method

.method public reset()Lcom/ibm/icu/util/CharsTrie;
    .locals 1

    .line 71
    iget v0, p0, Lcom/ibm/icu/util/CharsTrie;->root_:I

    iput v0, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    return-object p0
.end method

.method public resetToState(Lcom/ibm/icu/util/CharsTrie$State;)Lcom/ibm/icu/util/CharsTrie;
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/ibm/icu/util/CharsTrie$State;->access$000(Lcom/ibm/icu/util/CharsTrie$State;)Ljava/lang/CharSequence;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/util/CharsTrie;->root_:I

    invoke-static {p1}, Lcom/ibm/icu/util/CharsTrie$State;->access$100(Lcom/ibm/icu/util/CharsTrie$State;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 120
    invoke-static {p1}, Lcom/ibm/icu/util/CharsTrie$State;->access$200(Lcom/ibm/icu/util/CharsTrie$State;)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    .line 121
    invoke-static {p1}, Lcom/ibm/icu/util/CharsTrie$State;->access$300(Lcom/ibm/icu/util/CharsTrie$State;)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    return-object p0

    .line 123
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incompatible trie state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveState(Lcom/ibm/icu/util/CharsTrie$State;)Lcom/ibm/icu/util/CharsTrie;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/ibm/icu/util/CharsTrie;->chars_:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lcom/ibm/icu/util/CharsTrie$State;->access$002(Lcom/ibm/icu/util/CharsTrie$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 102
    iget v0, p0, Lcom/ibm/icu/util/CharsTrie;->root_:I

    invoke-static {p1, v0}, Lcom/ibm/icu/util/CharsTrie$State;->access$102(Lcom/ibm/icu/util/CharsTrie$State;I)I

    .line 103
    iget v0, p0, Lcom/ibm/icu/util/CharsTrie;->pos_:I

    invoke-static {p1, v0}, Lcom/ibm/icu/util/CharsTrie$State;->access$202(Lcom/ibm/icu/util/CharsTrie$State;I)I

    .line 104
    iget v0, p0, Lcom/ibm/icu/util/CharsTrie;->remainingMatchLength_:I

    invoke-static {p1, v0}, Lcom/ibm/icu/util/CharsTrie$State;->access$302(Lcom/ibm/icu/util/CharsTrie$State;I)I

    return-object p0
.end method
