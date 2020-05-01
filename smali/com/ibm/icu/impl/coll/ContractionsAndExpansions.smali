.class public final Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/coll/ContractionsAndExpansions$CESink;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private addPrefixes:Z

.field private ces:[J

.field private checkTailored:I

.field private contractions:Lcom/ibm/icu/text/UnicodeSet;

.field private data:Lcom/ibm/icu/impl/coll/CollationData;

.field private expansions:Lcom/ibm/icu/text/UnicodeSet;

.field private ranges:Lcom/ibm/icu/text/UnicodeSet;

.field private sink:Lcom/ibm/icu/impl/coll/ContractionsAndExpansions$CESink;

.field private suffix:Ljava/lang/String;

.field private tailored:Lcom/ibm/icu/text/UnicodeSet;

.field private unreversedPrefix:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/impl/coll/ContractionsAndExpansions$CESink;Z)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->checkTailored:I

    .line 31
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->tailored:Lcom/ibm/icu/text/UnicodeSet;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    const/16 v0, 0x1f

    new-array v0, v0, [J

    .line 35
    iput-object v0, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    .line 43
    iput-object p1, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->contractions:Lcom/ibm/icu/text/UnicodeSet;

    .line 44
    iput-object p2, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->expansions:Lcom/ibm/icu/text/UnicodeSet;

    .line 45
    iput-object p3, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->sink:Lcom/ibm/icu/impl/coll/ContractionsAndExpansions$CESink;

    .line 46
    iput-boolean p4, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->addPrefixes:Z

    return-void
.end method

.method private enumCnERange(IIILcom/ibm/icu/impl/coll/ContractionsAndExpansions;)V
    .locals 4

    .line 74
    iget v0, p4, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->checkTailored:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-gez v0, :cond_2

    const/16 v0, 0xc0

    if-ne p3, v0, :cond_1

    return-void

    .line 82
    :cond_1
    iget-object v0, p4, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->tailored:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->add(II)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_1

    :cond_2
    if-ne p1, p2, :cond_3

    .line 86
    iget-object v0, p4, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->tailored:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 89
    :cond_3
    iget-object v0, p4, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->tailored:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->containsSome(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 90
    iget-object v0, p4, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->ranges:Lcom/ibm/icu/text/UnicodeSet;

    if-nez v0, :cond_4

    .line 91
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p4, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->ranges:Lcom/ibm/icu/text/UnicodeSet;

    .line 93
    :cond_4
    iget-object v0, p4, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->ranges:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->set(II)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    iget-object v1, p4, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->tailored:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->removeAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 94
    iget-object v0, p4, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->ranges:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->getRangeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 96
    iget-object v2, p4, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->ranges:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v2

    iget-object v3, p4, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->ranges:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v3, v1}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v3

    invoke-direct {p4, v2, v3, p3}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_5
    :goto_1
    invoke-direct {p4, p1, p2, p3}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    return-void
.end method

.method private handleCE32(III)V
    .locals 7

    :goto_0
    and-int/lit16 v0, p3, 0xff

    const/16 v1, 0xc0

    if-ge v0, v1, :cond_1

    .line 116
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->sink:Lcom/ibm/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz p1, :cond_0

    .line 117
    invoke-static {p3}, Lcom/ibm/icu/impl/coll/Collation;->ceFromSimpleCE32(I)J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions$CESink;->handleCE(J)V

    :cond_0
    return-void

    .line 121
    :cond_1
    invoke-static {p3}, Lcom/ibm/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    .line 196
    :pswitch_1
    iget-object p3, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->sink:Lcom/ibm/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz p3, :cond_2

    .line 199
    new-instance p3, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;

    iget-object v0, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-direct {p3, v0}, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;-><init>(Lcom/ibm/icu/impl/coll/CollationData;)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, p1

    :goto_1
    if-gt v1, p2, :cond_2

    .line 202
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p3, v3, v0, v3}, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 205
    invoke-virtual {p3}, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;->fetchCEs()I

    move-result v4

    .line 208
    iget-object v5, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->sink:Lcom/ibm/icu/impl/coll/ContractionsAndExpansions$CESink;

    invoke-virtual {p3}, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;->getCEs()[J

    move-result-object v6

    sub-int/2addr v4, v2

    invoke-interface {v5, v6, v3, v4}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions$CESink;->handleExpansion([JII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 213
    :cond_2
    iget-object p3, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-nez p3, :cond_3

    .line 214
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->addExpansions(II)V

    :cond_3
    return-void

    .line 193
    :pswitch_2
    iget-object p3, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object p3, p3, Lcom/ibm/icu/impl/coll/CollationData;->ce32s:[I

    aget p3, p3, v3

    goto :goto_0

    .line 188
    :pswitch_3
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v0, v0, Lcom/ibm/icu/impl/coll/CollationData;->ce32s:[I

    invoke-static {p3}, Lcom/ibm/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p3

    aget p3, v0, p3

    goto :goto_0

    .line 184
    :pswitch_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->handleContractions(III)V

    return-void

    .line 181
    :pswitch_5
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->handlePrefixes(III)V

    return-void

    .line 169
    :pswitch_6
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->sink:Lcom/ibm/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz v0, :cond_4

    .line 170
    invoke-static {p3}, Lcom/ibm/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    .line 171
    invoke-static {p3}, Lcom/ibm/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result p3

    .line 172
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->sink:Lcom/ibm/icu/impl/coll/ContractionsAndExpansions$CESink;

    iget-object v2, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v2, v2, Lcom/ibm/icu/impl/coll/CollationData;->ces:[J

    invoke-interface {v1, v2, v0, p3}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions$CESink;->handleExpansion([JII)V

    .line 176
    :cond_4
    iget-object p3, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-nez p3, :cond_5

    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->addExpansions(II)V

    :cond_5
    return-void

    .line 154
    :pswitch_7
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->sink:Lcom/ibm/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz v0, :cond_7

    .line 155
    invoke-static {p3}, Lcom/ibm/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    .line 156
    invoke-static {p3}, Lcom/ibm/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result p3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p3, :cond_6

    .line 158
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    iget-object v4, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v4, v4, Lcom/ibm/icu/impl/coll/CollationData;->ce32s:[I

    add-int v5, v0, v1

    aget v4, v4, v5

    invoke-static {v4}, Lcom/ibm/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v4

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 160
    :cond_6
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->sink:Lcom/ibm/icu/impl/coll/ContractionsAndExpansions$CESink;

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    invoke-interface {v0, v1, v3, p3}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions$CESink;->handleExpansion([JII)V

    .line 164
    :cond_7
    iget-object p3, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-nez p3, :cond_8

    .line 165
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->addExpansions(II)V

    :cond_8
    return-void

    .line 142
    :pswitch_8
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->sink:Lcom/ibm/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz v0, :cond_9

    .line 143
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    invoke-static {p3}, Lcom/ibm/icu/impl/coll/Collation;->latinCE0FromCE32(I)J

    move-result-wide v4

    aput-wide v4, v0, v3

    .line 144
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    invoke-static {p3}, Lcom/ibm/icu/impl/coll/Collation;->latinCE1FromCE32(I)J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 145
    iget-object p3, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->sink:Lcom/ibm/icu/impl/coll/ContractionsAndExpansions$CESink;

    iget-object v0, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    invoke-interface {p3, v0, v3, v1}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions$CESink;->handleExpansion([JII)V

    .line 149
    :cond_9
    iget-object p3, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-nez p3, :cond_a

    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->addExpansions(II)V

    :cond_a
    return-void

    .line 128
    :pswitch_9
    new-instance p1, Ljava/lang/AssertionError;

    new-array p2, v1, [Ljava/lang/Object;

    .line 130
    invoke-static {p3}, Lcom/ibm/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    const-string p3, "Unexpected CE32 tag type %d for ce32=0x%08x"

    .line 129
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 137
    :pswitch_a
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->sink:Lcom/ibm/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz p1, :cond_b

    .line 138
    invoke-static {p3}, Lcom/ibm/icu/impl/coll/Collation;->ceFromLongSecondaryCE32(I)J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions$CESink;->handleCE(J)V

    :cond_b
    return-void

    .line 132
    :pswitch_b
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->sink:Lcom/ibm/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz p1, :cond_c

    .line 133
    invoke-static {p3}, Lcom/ibm/icu/impl/coll/Collation;->ceFromLongPrimaryCE32(I)J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions$CESink;->handleCE(J)V

    :cond_c
    :pswitch_c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handlePrefixes(III)V
    .locals 2

    .line 228
    invoke-static {p3}, Lcom/ibm/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p3

    .line 229
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {v0, p3}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v0

    .line 230
    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    .line 231
    iget-boolean v0, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->addPrefixes:Z

    if-nez v0, :cond_0

    return-void

    .line 234
    :cond_0
    new-instance v0, Lcom/ibm/icu/util/CharsTrie;

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v1, v1, Lcom/ibm/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 p3, p3, 0x2

    invoke-direct {v0, v1, p3}, Lcom/ibm/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0}, Lcom/ibm/icu/util/CharsTrie;->iterator()Lcom/ibm/icu/util/CharsTrie$Iterator;

    move-result-object p3

    .line 235
    :goto_0
    invoke-virtual {p3}, Lcom/ibm/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {p3}, Lcom/ibm/icu/util/CharsTrie$Iterator;->next()Lcom/ibm/icu/util/CharsTrie$Entry;

    move-result-object v0

    .line 237
    iget-object v1, v0, Lcom/ibm/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->setPrefix(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->contractions:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p0, p1, p2, v1}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->addStrings(IILcom/ibm/icu/text/UnicodeSet;)V

    .line 241
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->expansions:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p0, p1, p2, v1}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->addStrings(IILcom/ibm/icu/text/UnicodeSet;)V

    .line 242
    iget v0, v0, Lcom/ibm/icu/util/CharsTrie$Entry;->value:I

    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    goto :goto_0

    .line 244
    :cond_1
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->resetPrefix()V

    return-void
.end method

.method private resetPrefix()V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method private setPrefix(Ljava/lang/CharSequence;)V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 300
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method addExpansions(II)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->suffix:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->expansions:Lcom/ibm/icu/text/UnicodeSet;

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->add(II)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->expansions:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->addStrings(IILcom/ibm/icu/text/UnicodeSet;)V

    :cond_1
    :goto_0
    return-void
.end method

.method addStrings(IILcom/ibm/icu/text/UnicodeSet;)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 288
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 289
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->suffix:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_2
    invoke-virtual {p3, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    .line 293
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 p1, p1, 0x1

    if-le p1, p2, :cond_1

    return-void
.end method

.method public forData(Lcom/ibm/icu/impl/coll/CollationData;)V
    .locals 4

    .line 51
    iget-object v0, p1, Lcom/ibm/icu/impl/coll/CollationData;->base:Lcom/ibm/icu/impl/coll/CollationData;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->checkTailored:I

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->data:Lcom/ibm/icu/impl/coll/CollationData;

    .line 55
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v0, v0, Lcom/ibm/icu/impl/coll/CollationData;->trie:Lcom/ibm/icu/impl/Trie2_32;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/Trie2_32;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 57
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/Trie2$Range;

    iget-boolean v2, v1, Lcom/ibm/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v2, :cond_1

    .line 58
    iget v2, v1, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    iget v3, v1, Lcom/ibm/icu/impl/Trie2$Range;->endCodePoint:I

    iget v1, v1, Lcom/ibm/icu/impl/Trie2$Range;->value:I

    invoke-direct {p0, v2, v3, v1, p0}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->enumCnERange(IIILcom/ibm/icu/impl/coll/ContractionsAndExpansions;)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p1, Lcom/ibm/icu/impl/coll/CollationData;->base:Lcom/ibm/icu/impl/coll/CollationData;

    if-nez v0, :cond_2

    return-void

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->tailored:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    const/4 v0, 0x1

    .line 65
    iput v0, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->checkTailored:I

    .line 66
    iget-object p1, p1, Lcom/ibm/icu/impl/coll/CollationData;->base:Lcom/ibm/icu/impl/coll/CollationData;

    iput-object p1, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->data:Lcom/ibm/icu/impl/coll/CollationData;

    .line 67
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object p1, p1, Lcom/ibm/icu/impl/coll/CollationData;->trie:Lcom/ibm/icu/impl/Trie2_32;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/Trie2_32;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 68
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/Trie2$Range;

    iget-boolean v1, v0, Lcom/ibm/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v1, :cond_3

    .line 69
    iget v1, v0, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    iget v2, v0, Lcom/ibm/icu/impl/Trie2$Range;->endCodePoint:I

    iget v0, v0, Lcom/ibm/icu/impl/Trie2$Range;->value:I

    invoke-direct {p0, v1, v2, v0, p0}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->enumCnERange(IIILcom/ibm/icu/impl/coll/ContractionsAndExpansions;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method handleContractions(III)V
    .locals 2

    .line 248
    invoke-static {p3}, Lcom/ibm/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    and-int/lit16 p3, p3, 0x100

    if-eqz p3, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    iget-object p3, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->data:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {p3, v0}, Lcom/ibm/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result p3

    .line 257
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    .line 259
    :goto_0
    new-instance p3, Lcom/ibm/icu/util/CharsTrie;

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v1, v1, Lcom/ibm/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p3, v1, v0}, Lcom/ibm/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {p3}, Lcom/ibm/icu/util/CharsTrie;->iterator()Lcom/ibm/icu/util/CharsTrie$Iterator;

    move-result-object p3

    .line 260
    :goto_1
    invoke-virtual {p3}, Lcom/ibm/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    invoke-virtual {p3}, Lcom/ibm/icu/util/CharsTrie$Iterator;->next()Lcom/ibm/icu/util/CharsTrie$Entry;

    move-result-object v0

    .line 262
    iget-object v1, v0, Lcom/ibm/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->suffix:Ljava/lang/String;

    .line 263
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->contractions:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p0, p1, p2, v1}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->addStrings(IILcom/ibm/icu/text/UnicodeSet;)V

    .line 264
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->expansions:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p0, p1, p2, v1}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->addStrings(IILcom/ibm/icu/text/UnicodeSet;)V

    .line 267
    :cond_1
    iget v0, v0, Lcom/ibm/icu/util/CharsTrie$Entry;->value:I

    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 269
    iput-object p1, p0, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->suffix:Ljava/lang/String;

    return-void
.end method
