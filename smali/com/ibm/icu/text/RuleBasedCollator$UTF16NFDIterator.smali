.class Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;
.super Lcom/ibm/icu/text/RuleBasedCollator$NFDIterator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/RuleBasedCollator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UTF16NFDIterator"
.end annotation


# instance fields
.field protected pos:I

.field protected s:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1547
    invoke-direct {p0}, Lcom/ibm/icu/text/RuleBasedCollator$NFDIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected nextRawCodePoint()I
    .locals 3

    .line 1556
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;->pos:I

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1557
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;->pos:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1558
    iget v1, p0, Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;->pos:I

    return v0
.end method

.method setText(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1549
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;->reset()V

    .line 1550
    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;->s:Ljava/lang/CharSequence;

    .line 1551
    iput p2, p0, Lcom/ibm/icu/text/RuleBasedCollator$UTF16NFDIterator;->pos:I

    return-void
.end method
