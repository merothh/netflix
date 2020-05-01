.class Lcom/ibm/icu/text/BytesDictionaryMatcher;
.super Lcom/ibm/icu/text/DictionaryMatcher;
.source ""


# instance fields
.field private final characters:[B

.field private final transform:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/ibm/icu/text/DictionaryMatcher;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ibm/icu/text/BytesDictionaryMatcher;->characters:[B

    const/high16 p1, 0x7f000000

    and-int/2addr p1, p2

    const/high16 v0, 0x1000000

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    invoke-static {p1}, Lcom/ibm/icu/impl/Assert;->assrt(Z)V

    .line 27
    iput p2, p0, Lcom/ibm/icu/text/BytesDictionaryMatcher;->transform:I

    return-void
.end method

.method private transform(I)I
    .locals 2

    const/16 v0, 0x200d

    if-ne p1, v0, :cond_0

    const/16 p1, 0xff

    return p1

    :cond_0
    const/16 v0, 0x200c

    if-ne p1, v0, :cond_1

    const/16 p1, 0xfe

    return p1

    .line 37
    :cond_1
    iget v0, p0, Lcom/ibm/icu/text/BytesDictionaryMatcher;->transform:I

    const v1, 0x1fffff

    and-int/2addr v0, v1

    sub-int/2addr p1, v0

    if-ltz p1, :cond_3

    const/16 v0, 0xfd

    if-ge v0, p1, :cond_2

    goto :goto_0

    :cond_2
    return p1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public matches(Ljava/text/CharacterIterator;I[I[II[I)I
    .locals 7

    .line 46
    invoke-static {p1}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance(Ljava/text/CharacterIterator;)Lcom/ibm/icu/text/UCharacterIterator;

    move-result-object p1

    .line 47
    new-instance v0, Lcom/ibm/icu/util/BytesTrie;

    iget-object v1, p0, Lcom/ibm/icu/text/BytesDictionaryMatcher;->characters:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/BytesTrie;-><init>([BI)V

    .line 48
    invoke-virtual {p1}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return v2

    .line 52
    :cond_0
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/BytesDictionaryMatcher;->transform(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/BytesTrie;->first(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 57
    :goto_0
    invoke-virtual {v1}, Lcom/ibm/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v6

    if-eqz v6, :cond_3

    if-ge v4, p5, :cond_2

    if-eqz p6, :cond_1

    .line 60
    invoke-virtual {v0}, Lcom/ibm/icu/util/BytesTrie;->getValue()I

    move-result v6

    aput v6, p6, v4

    .line 62
    :cond_1
    aput v5, p3, v4

    add-int/lit8 v4, v4, 0x1

    .line 65
    :cond_2
    sget-object v6, Lcom/ibm/icu/util/BytesTrie$Result;->FINAL_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    if-ne v1, v6, :cond_4

    goto :goto_1

    .line 68
    :cond_3
    sget-object v6, Lcom/ibm/icu/util/BytesTrie$Result;->NO_MATCH:Lcom/ibm/icu/util/BytesTrie$Result;

    if-ne v1, v6, :cond_4

    goto :goto_1

    :cond_4
    if-lt v5, p2, :cond_5

    goto :goto_1

    .line 76
    :cond_5
    invoke-virtual {p1}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 83
    :goto_1
    aput v4, p4, v2

    return v5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 81
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/BytesDictionaryMatcher;->transform(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/BytesTrie;->next(I)Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object v1

    goto :goto_0
.end method
