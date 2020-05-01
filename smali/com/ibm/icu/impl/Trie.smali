.class public abstract Lcom/ibm/icu/impl/Trie;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/Trie$DefaultGetFoldingOffset;,
        Lcom/ibm/icu/impl/Trie$DataManipulate;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected m_dataLength_:I

.field protected m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

.field protected m_dataOffset_:I

.field protected m_index_:[C

.field private m_isLatin1Linear_:Z

.field private m_options_:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/ibm/icu/impl/Trie$DataManipulate;)V
    .locals 2

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 153
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/ibm/icu/impl/Trie;->m_options_:I

    .line 155
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/Trie;->checkHeader(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 160
    iput-object p2, p0, Lcom/ibm/icu/impl/Trie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

    goto :goto_0

    .line 162
    :cond_0
    new-instance p2, Lcom/ibm/icu/impl/Trie$DefaultGetFoldingOffset;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/ibm/icu/impl/Trie$DefaultGetFoldingOffset;-><init>(Lcom/ibm/icu/impl/Trie$1;)V

    iput-object p2, p0, Lcom/ibm/icu/impl/Trie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

    .line 164
    :goto_0
    iget p2, p0, Lcom/ibm/icu/impl/Trie;->m_options_:I

    and-int/lit16 p2, p2, 0x200

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lcom/ibm/icu/impl/Trie;->m_isLatin1Linear_:Z

    .line 166
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/ibm/icu/impl/Trie;->m_dataOffset_:I

    .line 167
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/ibm/icu/impl/Trie;->m_dataLength_:I

    .line 168
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Trie;->unserialize(Ljava/nio/ByteBuffer;)V

    return-void

    .line 156
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ICU data file error: Trie header authentication failed, please check if you have the most updated ICU data file"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final checkHeader(I)Z
    .locals 3

    const/4 v0, 0x0

    const v1, 0x54726965

    if-eq p1, v1, :cond_0

    return v0

    .line 449
    :cond_0
    iget p1, p0, Lcom/ibm/icu/impl/Trie;->m_options_:I

    and-int/lit8 v1, p1, 0xf

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    shr-int/lit8 p1, p1, 0x4

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 104
    :cond_0
    instance-of v1, p1, Lcom/ibm/icu/impl/Trie;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 107
    :cond_1
    check-cast p1, Lcom/ibm/icu/impl/Trie;

    .line 108
    iget-boolean v1, p0, Lcom/ibm/icu/impl/Trie;->m_isLatin1Linear_:Z

    iget-boolean v3, p1, Lcom/ibm/icu/impl/Trie;->m_isLatin1Linear_:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/ibm/icu/impl/Trie;->m_options_:I

    iget v3, p1, Lcom/ibm/icu/impl/Trie;->m_options_:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/ibm/icu/impl/Trie;->m_dataLength_:I

    iget v3, p1, Lcom/ibm/icu/impl/Trie;->m_dataLength_:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/ibm/icu/impl/Trie;->m_index_:[C

    iget-object p1, p1, Lcom/ibm/icu/impl/Trie;->m_index_:[C

    .line 111
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final getBMPOffset(C)I
    .locals 1

    const v0, 0xd800

    if-lt p1, v0, :cond_0

    const v0, 0xdbff

    if-gt p1, v0, :cond_0

    const/16 v0, 0x140

    .line 313
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/impl/Trie;->getRawOffset(IC)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 314
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/impl/Trie;->getRawOffset(IC)I

    move-result p1

    :goto_0
    return p1
.end method

.method protected final getCodePointOffset(I)I
    .locals 2

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    const v1, 0xd800

    if-ge p1, v1, :cond_1

    const/4 v0, 0x0

    int-to-char p1, p1

    .line 346
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/impl/Trie;->getRawOffset(IC)I

    move-result p1

    return p1

    :cond_1
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_2

    int-to-char p1, p1

    .line 349
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/Trie;->getBMPOffset(C)I

    move-result p1

    return p1

    :cond_2
    const v1, 0x10ffff

    if-gt p1, v1, :cond_3

    .line 353
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    and-int/lit16 p1, p1, 0x3ff

    int-to-char p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/impl/Trie;->getSurrogateOffset(CC)I

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method protected final getLeadOffset(C)I
    .locals 1

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/impl/Trie;->getRawOffset(IC)I

    move-result p1

    return p1
.end method

.method protected final getRawOffset(IC)I
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie;->m_index_:[C

    shr-int/lit8 v1, p2, 0x5

    add-int/2addr p1, v1

    aget-char p1, v0, p1

    shl-int/lit8 p1, p1, 0x2

    and-int/lit8 p2, p2, 0x1f

    add-int/2addr p1, p2

    return p1
.end method

.method protected abstract getSurrogateOffset(CC)I
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method protected final isCharTrie()Z
    .locals 1

    .line 387
    iget v0, p0, Lcom/ibm/icu/impl/Trie;->m_options_:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected unserialize(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 369
    iget v0, p0, Lcom/ibm/icu/impl/Trie;->m_dataOffset_:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/ibm/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/Trie;->m_index_:[C

    return-void
.end method
