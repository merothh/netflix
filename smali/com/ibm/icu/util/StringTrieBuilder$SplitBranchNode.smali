.class final Lcom/ibm/icu/util/StringTrieBuilder$SplitBranchNode;
.super Lcom/ibm/icu/util/StringTrieBuilder$BranchNode;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SplitBranchNode"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private greaterOrEqual:Lcom/ibm/icu/util/StringTrieBuilder$Node;

.field private lessThan:Lcom/ibm/icu/util/StringTrieBuilder$Node;

.field private unit:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 717
    const-class v0, Lcom/ibm/icu/util/StringTrieBuilder;

    return-void
.end method

.method public constructor <init>(CLcom/ibm/icu/util/StringTrieBuilder$Node;Lcom/ibm/icu/util/StringTrieBuilder$Node;)V
    .locals 2

    .line 718
    invoke-direct {p0}, Lcom/ibm/icu/util/StringTrieBuilder$BranchNode;-><init>()V

    const v0, 0xc555549

    add-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x25

    .line 720
    invoke-virtual {p2}, Lcom/ibm/icu/util/StringTrieBuilder$Node;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p3}, Lcom/ibm/icu/util/StringTrieBuilder$Node;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$SplitBranchNode;->hash:I

    .line 721
    iput-char p1, p0, Lcom/ibm/icu/util/StringTrieBuilder$SplitBranchNode;->unit:C

    .line 722
    iput-object p2, p0, Lcom/ibm/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    .line 723
    iput-object p3, p0, Lcom/ibm/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 730
    :cond_0
    invoke-super {p0, p1}, Lcom/ibm/icu/util/StringTrieBuilder$BranchNode;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 733
    :cond_1
    check-cast p1, Lcom/ibm/icu/util/StringTrieBuilder$SplitBranchNode;

    .line 734
    iget-char v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$SplitBranchNode;->unit:C

    iget-char v3, p1, Lcom/ibm/icu/util/StringTrieBuilder$SplitBranchNode;->unit:C

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    iget-object v3, p1, Lcom/ibm/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    iget-object p1, p1, Lcom/ibm/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 738
    invoke-super {p0}, Lcom/ibm/icu/util/StringTrieBuilder$BranchNode;->hashCode()I

    move-result v0

    return v0
.end method

.method public markRightEdgesFirst(I)I
    .locals 1

    .line 742
    iget v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$SplitBranchNode;->offset:I

    if-nez v0, :cond_0

    .line 743
    iput p1, p0, Lcom/ibm/icu/util/StringTrieBuilder$SplitBranchNode;->firstEdgeNumber:I

    .line 744
    iget-object v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    move-result p1

    .line 745
    iget-object v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/util/StringTrieBuilder$SplitBranchNode;->offset:I

    :cond_0
    return p1
.end method

.method public write(Lcom/ibm/icu/util/StringTrieBuilder;)V
    .locals 3

    .line 752
    iget-object v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    iget v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$SplitBranchNode;->firstEdgeNumber:I

    iget-object v2, p0, Lcom/ibm/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v2}, Lcom/ibm/icu/util/StringTrieBuilder$Node;->getOffset()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/ibm/icu/util/StringTrieBuilder$Node;->writeUnlessInsideRightEdge(IILcom/ibm/icu/util/StringTrieBuilder;)V

    .line 754
    iget-object v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/StringTrieBuilder$Node;->write(Lcom/ibm/icu/util/StringTrieBuilder;)V

    .line 757
    iget-object v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0}, Lcom/ibm/icu/util/StringTrieBuilder$Node;->getOffset()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/StringTrieBuilder;->writeDeltaTo(I)I

    .line 758
    iget-char v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$SplitBranchNode;->unit:C

    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/StringTrieBuilder;->write(I)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/util/StringTrieBuilder$SplitBranchNode;->offset:I

    return-void
.end method
