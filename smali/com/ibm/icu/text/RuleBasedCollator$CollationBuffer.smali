.class final Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/RuleBasedCollator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CollationBuffer"
.end annotation


# instance fields
.field leftFCDUTF16Iter:Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;

.field leftFCDUTF16NFDIter:Lcom/ibm/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

.field leftUTF16CollIter:Lcom/ibm/icu/impl/coll/UTF16CollationIterator;

.field leftUTF16NFDIter:Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;

.field rightFCDUTF16Iter:Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;

.field rightFCDUTF16NFDIter:Lcom/ibm/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

.field rightUTF16CollIter:Lcom/ibm/icu/impl/coll/UTF16CollationIterator;

.field rightUTF16NFDIter:Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/impl/coll/CollationData;)V
    .locals 1

    .line 1761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1762
    new-instance v0, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;-><init>(Lcom/ibm/icu/impl/coll/CollationData;)V

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Lcom/ibm/icu/impl/coll/UTF16CollationIterator;

    .line 1763
    new-instance v0, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/coll/UTF16CollationIterator;-><init>(Lcom/ibm/icu/impl/coll/CollationData;)V

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16CollIter:Lcom/ibm/icu/impl/coll/UTF16CollationIterator;

    .line 1764
    new-instance v0, Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;-><init>(Lcom/ibm/icu/impl/coll/CollationData;)V

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;

    .line 1765
    new-instance v0, Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;-><init>(Lcom/ibm/icu/impl/coll/CollationData;)V

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16Iter:Lcom/ibm/icu/impl/coll/FCDUTF16CollationIterator;

    .line 1766
    new-instance p1, Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;

    invoke-direct {p1}, Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16NFDIter:Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;

    .line 1767
    new-instance p1, Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;

    invoke-direct {p1}, Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16NFDIter:Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;

    .line 1768
    new-instance p1, Lcom/ibm/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    invoke-direct {p1}, Lcom/ibm/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16NFDIter:Lcom/ibm/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    .line 1769
    new-instance p1, Lcom/ibm/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    invoke-direct {p1}, Lcom/ibm/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16NFDIter:Lcom/ibm/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/coll/CollationData;Lcom/ibm/icu/text/RuleBasedCollator$1;)V
    .locals 0

    .line 1760
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RuleBasedCollator$CollationBuffer;-><init>(Lcom/ibm/icu/impl/coll/CollationData;)V

    return-void
.end method
