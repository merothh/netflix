.class final Lcom/ibm/icu/util/StringTrieBuilder$IntermediateValueNode;
.super Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntermediateValueNode"
.end annotation


# instance fields
.field private next:Lcom/ibm/icu/util/StringTrieBuilder$Node;


# direct methods
.method public constructor <init>(ILcom/ibm/icu/util/StringTrieBuilder$Node;)V
    .locals 0

    .line 318
    invoke-direct {p0}, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;-><init>()V

    .line 319
    iput-object p2, p0, Lcom/ibm/icu/util/StringTrieBuilder$IntermediateValueNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    .line 320
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/StringTrieBuilder$IntermediateValueNode;->setValue(I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 331
    :cond_0
    invoke-super {p0, p1}, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 334
    :cond_1
    check-cast p1, Lcom/ibm/icu/util/StringTrieBuilder$IntermediateValueNode;

    .line 335
    iget-object v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$IntermediateValueNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    iget-object p1, p1, Lcom/ibm/icu/util/StringTrieBuilder$IntermediateValueNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 324
    iget v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$IntermediateValueNode;->value:I

    const v1, 0x4eeeeea

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$IntermediateValueNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v1}, Lcom/ibm/icu/util/StringTrieBuilder$Node;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public markRightEdgesFirst(I)I
    .locals 1

    .line 339
    iget v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$IntermediateValueNode;->offset:I

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$IntermediateValueNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/util/StringTrieBuilder$IntermediateValueNode;->offset:I

    :cond_0
    return p1
.end method

.method public write(Lcom/ibm/icu/util/StringTrieBuilder;)V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$IntermediateValueNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/StringTrieBuilder$Node;->write(Lcom/ibm/icu/util/StringTrieBuilder;)V

    .line 347
    iget v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$IntermediateValueNode;->value:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/ibm/icu/util/StringTrieBuilder;->writeValueAndFinal(IZ)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/util/StringTrieBuilder$IntermediateValueNode;->offset:I

    return-void
.end method
