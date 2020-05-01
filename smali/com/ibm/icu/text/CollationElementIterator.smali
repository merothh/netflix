.class public final Lcom/ibm/icu/text/CollationElementIterator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/CollationElementIterator$MaxExpSink;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private dir_:B

.field private iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

.field private offsets_:Lcom/ibm/icu/impl/coll/UVector32;

.field private otherHalf_:I

.field private rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

.field private string_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/text/RuleBasedCollator;)V
    .locals 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    .line 199
    iput-object p1, p0, Lcom/ibm/icu/text/CollationElementIterator;->rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

    const/4 p1, 0x0

    .line 200
    iput p1, p0, Lcom/ibm/icu/text/CollationElementIterator;->otherHalf_:I

    .line 201
    iput-byte p1, p0, Lcom/ibm/icu/text/CollationElementIterator;->dir_:B

    .line 202
    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->offsets_:Lcom/ibm/icu/impl/coll/UVector32;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/RuleBasedCollator;)V
    .locals 0

    .line 217
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/CollationElementIterator;-><init>(Lcom/ibm/icu/text/RuleBasedCollator;)V

    .line 218
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CollationElementIterator;->setText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(J)Z
    .locals 0

    .line 108
    invoke-static {p0, p1}, Lcom/ibm/icu/text/CollationElementIterator;->ceNeedsTwoParts(J)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(JI)I
    .locals 0

    .line 108
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/CollationElementIterator;->getSecondHalf(JI)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(JI)I
    .locals 0

    .line 108
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/CollationElementIterator;->getFirstHalf(JI)I

    move-result p0

    return p0
.end method

.method private static final ceNeedsTwoParts(J)Z
    .locals 3

    const-wide v0, 0xffff00ff003fL

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static final computeMaxExpansions(Lcom/ibm/icu/impl/coll/CollationData;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/impl/coll/CollationData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 627
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 628
    new-instance v1, Lcom/ibm/icu/text/CollationElementIterator$MaxExpSink;

    invoke-direct {v1, v0}, Lcom/ibm/icu/text/CollationElementIterator$MaxExpSink;-><init>(Ljava/util/Map;)V

    .line 629
    new-instance v2, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v3, v1, v4}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;-><init>(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/impl/coll/ContractionsAndExpansions$CESink;Z)V

    invoke-virtual {v2, p0}, Lcom/ibm/icu/impl/coll/ContractionsAndExpansions;->forData(Lcom/ibm/icu/impl/coll/CollationData;)V

    return-object v0
.end method

.method private static final getFirstHalf(JI)I
    .locals 1

    long-to-int p1, p0

    const/high16 p0, -0x10000

    and-int/2addr p0, p1

    shr-int/lit8 p1, p2, 0x10

    const v0, 0xff00

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    shr-int/lit8 p1, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method private static final getSecondHalf(JI)I
    .locals 1

    long-to-int p1, p0

    shl-int/lit8 p0, p1, 0x10

    shr-int/lit8 p1, p2, 0x8

    const v0, 0xff00

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    and-int/lit8 p1, p2, 0x3f

    or-int/2addr p0, p1

    return p0
.end method

.method private normalizeDir()B
    .locals 2

    .line 665
    iget-byte v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->dir_:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static final primaryOrder(I)I
    .locals 1

    ushr-int/lit8 p0, p0, 0x10

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 681
    :cond_0
    instance-of v1, p1, Lcom/ibm/icu/text/CollationElementIterator;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 682
    check-cast p1, Lcom/ibm/icu/text/CollationElementIterator;

    .line 683
    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v3, p1, Lcom/ibm/icu/text/CollationElementIterator;->rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

    invoke-virtual {v1, v3}, Lcom/ibm/icu/text/RuleBasedCollator;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->otherHalf_:I

    iget v3, p1, Lcom/ibm/icu/text/CollationElementIterator;->otherHalf_:I

    if-ne v1, v3, :cond_1

    .line 685
    invoke-direct {p0}, Lcom/ibm/icu/text/CollationElementIterator;->normalizeDir()B

    move-result v1

    invoke-direct {p1}, Lcom/ibm/icu/text/CollationElementIterator;->normalizeDir()B

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    .line 686
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    iget-object p1, p1, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    .line 687
    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/coll/CollationIterator;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getOffset()I
    .locals 2

    .line 289
    iget-byte v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->dir_:B

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->offsets_:Lcom/ibm/icu/impl/coll/UVector32;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/UVector32;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationIterator;->getCEsLength()I

    move-result v0

    .line 293
    iget v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->otherHalf_:I

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->offsets_:Lcom/ibm/icu/impl/coll/UVector32;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/coll/UVector32;->elementAti(I)I

    move-result v0

    return v0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationIterator;->getOffset()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x2a

    return v0
.end method

.method public next()I
    .locals 5

    .line 322
    iget-byte v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->dir_:B

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 324
    iget v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->otherHalf_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 326
    iput v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->otherHalf_:I

    return v0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    .line 331
    iput-byte v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->dir_:B

    goto :goto_0

    :cond_1
    if-nez v0, :cond_5

    .line 334
    iput-byte v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->dir_:B

    .line 341
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationIterator;->clearCEsIfNoneRemaining()V

    .line 342
    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v0

    const-wide v2, 0x101000100L

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    const/4 v0, -0x1

    return v0

    :cond_3
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    long-to-int v1, v0

    .line 349
    invoke-static {v2, v3, v1}, Lcom/ibm/icu/text/CollationElementIterator;->getFirstHalf(JI)I

    move-result v0

    .line 350
    invoke-static {v2, v3, v1}, Lcom/ibm/icu/text/CollationElementIterator;->getSecondHalf(JI)I

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit16 v1, v1, 0xc0

    .line 352
    iput v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->otherHalf_:I

    :cond_4
    return v0

    .line 337
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal change of direction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4

    .line 508
    iput-object p1, p0, Lcom/ibm/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    .line 510
    iget-object p1, p0, Lcom/ibm/icu/text/CollationElementIterator;->rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object p1, p1, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result p1

    .line 511
    iget-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedCollator;->settings:Lcom/ibm/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/SharedObject$Reference;->readOnly()Lcom/ibm/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 512
    new-instance v0, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;

    iget-object v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v2, v2, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-direct {v0, v2, p1, v3, v1}, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;-><init>(Lcom/ibm/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    goto :goto_0

    .line 514
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;

    iget-object v2, p0, Lcom/ibm/icu/text/CollationElementIterator;->rbc_:Lcom/ibm/icu/text/RuleBasedCollator;

    iget-object v2, v2, Lcom/ibm/icu/text/RuleBasedCollator;->data:Lcom/ibm/icu/impl/coll/CollationData;

    iget-object v3, p0, Lcom/ibm/icu/text/CollationElementIterator;->string_:Ljava/lang/String;

    invoke-direct {v0, v2, p1, v3, v1}, Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;-><init>(Lcom/ibm/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    .line 516
    :goto_0
    iput-object v0, p0, Lcom/ibm/icu/text/CollationElementIterator;->iter_:Lcom/ibm/icu/impl/coll/CollationIterator;

    .line 517
    iput v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->otherHalf_:I

    .line 518
    iput-byte v1, p0, Lcom/ibm/icu/text/CollationElementIterator;->dir_:B

    return-void
.end method
