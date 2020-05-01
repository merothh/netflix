.class final Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;
.super Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DynamicBranchNode"
.end annotation


# instance fields
.field private chars:Ljava/lang/StringBuilder;

.field private equal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ibm/icu/util/StringTrieBuilder$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 507
    invoke-direct {p0}, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;-><init>()V

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    .line 591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    return-void
.end method

.method private find(C)I
    .locals 4

    .line 575
    iget-object v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    add-int v2, v1, v0

    .line 577
    div-int/lit8 v2, v2, 0x2

    .line 578
    iget-object v3, p0, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ge p1, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    if-ne p1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method private register(Lcom/ibm/icu/util/StringTrieBuilder;II)Lcom/ibm/icu/util/StringTrieBuilder$Node;
    .locals 5

    sub-int v0, p3, p2

    .line 550
    invoke-virtual {p1}, Lcom/ibm/icu/util/StringTrieBuilder;->getMaxBranchLinearSubNodeLength()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 552
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    .line 553
    new-instance v1, Lcom/ibm/icu/util/StringTrieBuilder$SplitBranchNode;

    iget-object v2, p0, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 556
    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->register(Lcom/ibm/icu/util/StringTrieBuilder;II)Lcom/ibm/icu/util/StringTrieBuilder$Node;

    move-result-object p2

    .line 557
    invoke-direct {p0, p1, v0, p3}, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->register(Lcom/ibm/icu/util/StringTrieBuilder;II)Lcom/ibm/icu/util/StringTrieBuilder$Node;

    move-result-object p3

    invoke-direct {v1, v2, p2, p3}, Lcom/ibm/icu/util/StringTrieBuilder$SplitBranchNode;-><init>(CLcom/ibm/icu/util/StringTrieBuilder$Node;Lcom/ibm/icu/util/StringTrieBuilder$Node;)V

    .line 553
    invoke-static {p1, v1}, Lcom/ibm/icu/util/StringTrieBuilder;->access$200(Lcom/ibm/icu/util/StringTrieBuilder;Lcom/ibm/icu/util/StringTrieBuilder$Node;)Lcom/ibm/icu/util/StringTrieBuilder$Node;

    move-result-object p1

    return-object p1

    .line 559
    :cond_0
    new-instance v1, Lcom/ibm/icu/util/StringTrieBuilder$ListBranchNode;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/StringTrieBuilder$ListBranchNode;-><init>(I)V

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 562
    iget-object v2, p0, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/util/StringTrieBuilder$Node;

    .line 563
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;

    if-ne v3, v4, :cond_2

    .line 565
    check-cast v2, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;

    iget v2, v2, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;->value:I

    invoke-virtual {v1, v0, v2}, Lcom/ibm/icu/util/StringTrieBuilder$ListBranchNode;->add(II)V

    goto :goto_0

    .line 567
    :cond_2
    invoke-virtual {v2, p1}, Lcom/ibm/icu/util/StringTrieBuilder$Node;->register(Lcom/ibm/icu/util/StringTrieBuilder;)Lcom/ibm/icu/util/StringTrieBuilder$Node;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ibm/icu/util/StringTrieBuilder$ListBranchNode;->add(ILcom/ibm/icu/util/StringTrieBuilder$Node;)V

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_1

    .line 570
    invoke-static {p1, v1}, Lcom/ibm/icu/util/StringTrieBuilder;->access$200(Lcom/ibm/icu/util/StringTrieBuilder;Lcom/ibm/icu/util/StringTrieBuilder$Node;)Lcom/ibm/icu/util/StringTrieBuilder$Node;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public add(Lcom/ibm/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Lcom/ibm/icu/util/StringTrieBuilder$Node;
    .locals 3

    .line 516
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_1

    .line 517
    iget-boolean p1, p0, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->hasValue:Z

    if-nez p1, :cond_0

    .line 520
    invoke-virtual {p0, p4}, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->setValue(I)V

    return-object p0

    .line 518
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Duplicate string."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int/lit8 v0, p3, 0x1

    .line 524
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    .line 525
    invoke-direct {p0, p3}, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->find(C)I

    move-result v1

    .line 526
    iget-object v2, p0, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne p3, v2, :cond_2

    .line 527
    iget-object p3, p0, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v2, p1, p2, v0, p4}, Lcom/ibm/icu/util/StringTrieBuilder$Node;->add(Lcom/ibm/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Lcom/ibm/icu/util/StringTrieBuilder$Node;

    move-result-object p1

    invoke-virtual {p3, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 529
    :cond_2
    iget-object v2, p0, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1, p3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 530
    iget-object p3, p0, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    invoke-static {p1, p2, v0, p4}, Lcom/ibm/icu/util/StringTrieBuilder;->access$100(Lcom/ibm/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;

    move-result-object p1

    invoke-virtual {p3, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public add(CLcom/ibm/icu/util/StringTrieBuilder$Node;)V
    .locals 2

    .line 510
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->find(C)I

    move-result v0

    .line 511
    iget-object v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 512
    iget-object p1, p0, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public register(Lcom/ibm/icu/util/StringTrieBuilder;)Lcom/ibm/icu/util/StringTrieBuilder$Node;
    .locals 3

    .line 536
    iget-object v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->register(Lcom/ibm/icu/util/StringTrieBuilder;II)Lcom/ibm/icu/util/StringTrieBuilder$Node;

    move-result-object v0

    .line 537
    new-instance v1, Lcom/ibm/icu/util/StringTrieBuilder$BranchHeadNode;

    iget-object v2, p0, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/ibm/icu/util/StringTrieBuilder$BranchHeadNode;-><init>(ILcom/ibm/icu/util/StringTrieBuilder$Node;)V

    .line 539
    iget-boolean v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->hasValue:Z

    if-eqz v0, :cond_1

    .line 540
    invoke-virtual {p1}, Lcom/ibm/icu/util/StringTrieBuilder;->matchNodesCanHaveValues()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->value:I

    invoke-virtual {v1, v0}, Lcom/ibm/icu/util/StringTrieBuilder$BranchHeadNode;->setValue(I)V

    goto :goto_0

    .line 543
    :cond_0
    new-instance v0, Lcom/ibm/icu/util/StringTrieBuilder$IntermediateValueNode;

    iget v2, p0, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->value:I

    invoke-static {p1, v1}, Lcom/ibm/icu/util/StringTrieBuilder;->access$200(Lcom/ibm/icu/util/StringTrieBuilder;Lcom/ibm/icu/util/StringTrieBuilder$Node;)Lcom/ibm/icu/util/StringTrieBuilder$Node;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/util/StringTrieBuilder$IntermediateValueNode;-><init>(ILcom/ibm/icu/util/StringTrieBuilder$Node;)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v1

    .line 546
    :goto_1
    invoke-static {p1, v0}, Lcom/ibm/icu/util/StringTrieBuilder;->access$200(Lcom/ibm/icu/util/StringTrieBuilder;Lcom/ibm/icu/util/StringTrieBuilder$Node;)Lcom/ibm/icu/util/StringTrieBuilder$Node;

    move-result-object p1

    return-object p1
.end method
