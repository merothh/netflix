.class final Lcom/ibm/icu/util/StringTrieBuilder$BranchHeadNode;
.super Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BranchHeadNode"
.end annotation


# instance fields
.field private length:I

.field private next:Lcom/ibm/icu/util/StringTrieBuilder$Node;


# direct methods
.method public constructor <init>(ILcom/ibm/icu/util/StringTrieBuilder$Node;)V
    .locals 0

    .line 768
    invoke-direct {p0}, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;-><init>()V

    .line 769
    iput p1, p0, Lcom/ibm/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    .line 770
    iput-object p2, p0, Lcom/ibm/icu/util/StringTrieBuilder$BranchHeadNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 781
    :cond_0
    invoke-super {p0, p1}, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 784
    :cond_1
    check-cast p1, Lcom/ibm/icu/util/StringTrieBuilder$BranchHeadNode;

    .line 785
    iget v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    iget v3, p1, Lcom/ibm/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$BranchHeadNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    iget-object p1, p1, Lcom/ibm/icu/util/StringTrieBuilder$BranchHeadNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 774
    iget v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    const v1, 0xeccccbe

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$BranchHeadNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v1}, Lcom/ibm/icu/util/StringTrieBuilder$Node;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public markRightEdgesFirst(I)I
    .locals 1

    .line 789
    iget v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$BranchHeadNode;->offset:I

    if-nez v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$BranchHeadNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/util/StringTrieBuilder$BranchHeadNode;->offset:I

    :cond_0
    return p1
.end method

.method public write(Lcom/ibm/icu/util/StringTrieBuilder;)V
    .locals 3

    .line 796
    iget-object v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$BranchHeadNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/StringTrieBuilder$Node;->write(Lcom/ibm/icu/util/StringTrieBuilder;)V

    .line 797
    iget v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    invoke-virtual {p1}, Lcom/ibm/icu/util/StringTrieBuilder;->getMinLinearMatch()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 798
    iget-boolean v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$BranchHeadNode;->hasValue:Z

    iget v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$BranchHeadNode;->value:I

    iget v2, p0, Lcom/ibm/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/ibm/icu/util/StringTrieBuilder;->writeValueAndType(ZII)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/util/StringTrieBuilder$BranchHeadNode;->offset:I

    goto :goto_0

    .line 800
    :cond_0
    iget v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$BranchHeadNode;->length:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/StringTrieBuilder;->write(I)I

    .line 801
    iget-boolean v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$BranchHeadNode;->hasValue:Z

    iget v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$BranchHeadNode;->value:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/ibm/icu/util/StringTrieBuilder;->writeValueAndType(ZII)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/util/StringTrieBuilder$BranchHeadNode;->offset:I

    :goto_0
    return-void
.end method
