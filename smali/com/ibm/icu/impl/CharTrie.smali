.class public Lcom/ibm/icu/impl/CharTrie;
.super Lcom/ibm/icu/impl/Trie;
.source ""


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private m_data_:[C

.field private m_initialValue_:C


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Lcom/ibm/icu/impl/Trie$DataManipulate;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/Trie;-><init>(Ljava/nio/ByteBuffer;Lcom/ibm/icu/impl/Trie$DataManipulate;)V

    .line 40
    invoke-virtual {p0}, Lcom/ibm/icu/impl/CharTrie;->isCharTrie()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Data given does not belong to a char trie."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 219
    invoke-super {p0, p1}, Lcom/ibm/icu/impl/Trie;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 220
    instance-of v0, p1, Lcom/ibm/icu/impl/CharTrie;

    if-eqz v0, :cond_0

    .line 221
    check-cast p1, Lcom/ibm/icu/impl/CharTrie;

    .line 222
    iget-char v0, p0, Lcom/ibm/icu/impl/CharTrie;->m_initialValue_:C

    iget-char p1, p1, Lcom/ibm/icu/impl/CharTrie;->m_initialValue_:C

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final getCodePointValue(I)C
    .locals 2

    if-ltz p1, :cond_0

    const v0, 0xd800

    if-ge p1, v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/ibm/icu/impl/CharTrie;->m_index_:[C

    shr-int/lit8 v1, p1, 0x5

    aget-char v0, v0, v1

    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 p1, p1, 0x1f

    add-int/2addr v0, p1

    .line 123
    iget-object p1, p0, Lcom/ibm/icu/impl/CharTrie;->m_data_:[C

    aget-char p1, p1, v0

    return p1

    .line 127
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/CharTrie;->getCodePointOffset(I)I

    move-result p1

    if-ltz p1, :cond_1

    .line 131
    iget-object v0, p0, Lcom/ibm/icu/impl/CharTrie;->m_data_:[C

    aget-char p1, v0, p1

    goto :goto_0

    :cond_1
    iget-char p1, p0, Lcom/ibm/icu/impl/CharTrie;->m_initialValue_:C

    :goto_0
    return p1
.end method

.method public final getLeadValue(C)C
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/ibm/icu/impl/CharTrie;->m_data_:[C

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/CharTrie;->getLeadOffset(C)I

    move-result p1

    aget-char p1, v0, p1

    return p1
.end method

.method protected final getSurrogateOffset(CC)I
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/ibm/icu/impl/CharTrie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/ibm/icu/impl/CharTrie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/CharTrie;->getLeadValue(C)C

    move-result p1

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    move-result p1

    if-lez p1, :cond_0

    and-int/lit16 p2, p2, 0x3ff

    int-to-char p2, p2

    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/CharTrie;->getRawOffset(IC)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 260
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The field DataManipulate in this Trie is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method protected final unserialize(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 244
    iget v0, p0, Lcom/ibm/icu/impl/CharTrie;->m_dataOffset_:I

    iget v1, p0, Lcom/ibm/icu/impl/CharTrie;->m_dataLength_:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    .line 245
    invoke-static {p1, v0, v1}, Lcom/ibm/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/CharTrie;->m_index_:[C

    .line 246
    iget-object p1, p0, Lcom/ibm/icu/impl/CharTrie;->m_index_:[C

    iput-object p1, p0, Lcom/ibm/icu/impl/CharTrie;->m_data_:[C

    .line 247
    iget-object p1, p0, Lcom/ibm/icu/impl/CharTrie;->m_data_:[C

    iget v0, p0, Lcom/ibm/icu/impl/CharTrie;->m_dataOffset_:I

    aget-char p1, p1, v0

    iput-char p1, p0, Lcom/ibm/icu/impl/CharTrie;->m_initialValue_:C

    return-void
.end method
