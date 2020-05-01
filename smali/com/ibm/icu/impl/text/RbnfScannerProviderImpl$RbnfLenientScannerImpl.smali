.class Lcom/ibm/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ibm/icu/text/RbnfLenientScanner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/text/RbnfScannerProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RbnfLenientScannerImpl"
.end annotation


# instance fields
.field private final collator:Lcom/ibm/icu/text/RuleBasedCollator;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/text/RuleBasedCollator;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/ibm/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Lcom/ibm/icu/text/RuleBasedCollator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/RuleBasedCollator;Lcom/ibm/icu/impl/text/RbnfScannerProviderImpl$1;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;-><init>(Lcom/ibm/icu/text/RuleBasedCollator;)V

    return-void
.end method


# virtual methods
.method public allIgnorable(Ljava/lang/String;)Z
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/ibm/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Lcom/ibm/icu/text/CollationElementIterator;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Lcom/ibm/icu/text/CollationElementIterator;->next()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 136
    invoke-static {v0}, Lcom/ibm/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 137
    invoke-virtual {p1}, Lcom/ibm/icu/text/CollationElementIterator;->next()I

    move-result v0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public findText(Ljava/lang/String;Ljava/lang/String;I)[I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 153
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge p3, v2, :cond_1

    if-nez v1, :cond_1

    .line 154
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/ibm/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->prefixLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-array p1, v3, [I

    aput p3, p1, v0

    const/4 p2, 0x1

    aput v1, p1, p2

    return-object p1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v3, [I

    .line 163
    fill-array-data p1, :array_0

    return-object p1

    :array_0
    .array-data 4
        -0x1
        0x0
    .end array-data
.end method

.method public prefixLength(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/ibm/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Lcom/ibm/icu/text/CollationElementIterator;

    move-result-object p1

    .line 230
    iget-object v0, p0, Lcom/ibm/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {v0, p2}, Lcom/ibm/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Lcom/ibm/icu/text/CollationElementIterator;

    move-result-object p2

    .line 233
    invoke-virtual {p1}, Lcom/ibm/icu/text/CollationElementIterator;->next()I

    move-result v0

    .line 234
    invoke-virtual {p2}, Lcom/ibm/icu/text/CollationElementIterator;->next()I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 238
    :goto_1
    invoke-static {v0}, Lcom/ibm/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v3

    if-nez v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 240
    invoke-virtual {p1}, Lcom/ibm/icu/text/CollationElementIterator;->next()I

    move-result v0

    goto :goto_1

    .line 244
    :cond_0
    :goto_2
    invoke-static {v1}, Lcom/ibm/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v3

    if-nez v3, :cond_1

    if-eq v1, v2, :cond_1

    .line 246
    invoke-virtual {p2}, Lcom/ibm/icu/text/CollationElementIterator;->next()I

    move-result v1

    goto :goto_2

    :cond_1
    if-ne v1, v2, :cond_2

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    return v3

    .line 264
    :cond_3
    invoke-static {v0}, Lcom/ibm/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v0

    .line 265
    invoke-static {v1}, Lcom/ibm/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v1

    if-eq v0, v1, :cond_4

    return v3

    .line 273
    :cond_4
    invoke-virtual {p1}, Lcom/ibm/icu/text/CollationElementIterator;->next()I

    move-result v0

    .line 274
    invoke-virtual {p2}, Lcom/ibm/icu/text/CollationElementIterator;->next()I

    move-result v1

    goto :goto_0

    .line 277
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/ibm/icu/text/CollationElementIterator;->getOffset()I

    move-result p1

    if-eq v0, v2, :cond_6

    add-int/lit8 p1, p1, -0x1

    :cond_6
    return p1
.end method
