.class public Lcom/ibm/icu/impl/Trie2$Range;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/Trie2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation


# instance fields
.field public endCodePoint:I

.field public leadSurrogate:Z

.field public startCodePoint:I

.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 348
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    check-cast p1, Lcom/ibm/icu/impl/Trie2$Range;

    .line 352
    iget v1, p0, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    iget v2, p1, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/ibm/icu/impl/Trie2$Range;->endCodePoint:I

    iget v2, p1, Lcom/ibm/icu/impl/Trie2$Range;->endCodePoint:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/ibm/icu/impl/Trie2$Range;->value:I

    iget v2, p1, Lcom/ibm/icu/impl/Trie2$Range;->value:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/ibm/icu/impl/Trie2$Range;->leadSurrogate:Z

    iget-boolean p1, p1, Lcom/ibm/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 361
    invoke-static {}, Lcom/ibm/icu/impl/Trie2;->access$000()I

    move-result v0

    .line 362
    iget v1, p0, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/Trie2;->access$100(II)I

    move-result v0

    .line 363
    iget v1, p0, Lcom/ibm/icu/impl/Trie2$Range;->endCodePoint:I

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/Trie2;->access$100(II)I

    move-result v0

    .line 364
    iget v1, p0, Lcom/ibm/icu/impl/Trie2$Range;->value:I

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/Trie2;->access$200(II)I

    move-result v0

    .line 365
    iget-boolean v1, p0, Lcom/ibm/icu/impl/Trie2$Range;->leadSurrogate:Z

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/Trie2;->access$300(II)I

    move-result v0

    return v0
.end method
