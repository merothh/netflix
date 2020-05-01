.class final Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;
.super Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LinearMatchNode"
.end annotation


# instance fields
.field private hash:I

.field private length:I

.field private next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

.field private stringOffset:I

.field private strings:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILcom/ibm/icu/util/StringTrieBuilder$Node;)V
    .locals 0

    .line 354
    invoke-direct {p0}, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;-><init>()V

    .line 355
    iput-object p1, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    .line 356
    iput p2, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    .line 357
    iput p3, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    .line 358
    iput-object p4, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    return-void
.end method

.method private setHashCode()V
    .locals 4

    .line 490
    iget v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    const v1, 0x766665f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v1}, Lcom/ibm/icu/util/StringTrieBuilder$Node;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    .line 491
    iget-boolean v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->hasValue:Z

    if-eqz v0, :cond_0

    .line 492
    iget v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->value:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    .line 494
    :cond_0
    iget v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    iget v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int/2addr v1, v0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 495
    iget v2, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    mul-int/lit8 v2, v2, 0x25

    iget-object v3, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lcom/ibm/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Lcom/ibm/icu/util/StringTrieBuilder$Node;
    .locals 9

    .line 383
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_1

    .line 384
    iget-boolean p1, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->hasValue:Z

    if-nez p1, :cond_0

    .line 387
    invoke-virtual {p0, p4}, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->setValue(I)V

    return-object p0

    .line 385
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Duplicate string."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 391
    :cond_1
    iget v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    iget v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int/2addr v1, v0

    :goto_0
    if-ge v0, v1, :cond_8

    .line 393
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne p3, v2, :cond_2

    .line 395
    iget p1, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    sub-int p1, v0, p1

    .line 396
    new-instance p2, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;

    iget-object p3, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    invoke-direct {p2, p3, v0, v1, v2}, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;-><init>(Ljava/lang/CharSequence;IILcom/ibm/icu/util/StringTrieBuilder$Node;)V

    .line 397
    invoke-virtual {p2, p4}, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->setValue(I)V

    .line 398
    iput p1, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    .line 399
    iput-object p2, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    return-object p0

    .line 402
    :cond_2
    iget-object v2, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 403
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_7

    .line 406
    new-instance v4, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;

    invoke-direct {v4}, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;-><init>()V

    .line 409
    iget v5, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    if-ne v0, v5, :cond_5

    .line 411
    iget-boolean v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->hasValue:Z

    if-eqz v0, :cond_3

    .line 413
    iget v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->value:I

    invoke-virtual {v4, v0}, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->setValue(I)V

    const/4 v0, 0x0

    .line 414
    iput v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->value:I

    .line 415
    iput-boolean v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->hasValue:Z

    .line 417
    :cond_3
    iget v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    .line 418
    iget v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    .line 419
    iget v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    if-lez v0, :cond_4

    move-object v0, p0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    :goto_1
    move-object v1, v4

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_6

    .line 424
    iget v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    .line 425
    iget-object v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    .line 426
    iput-object v4, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    move-object v1, p0

    goto :goto_2

    :cond_6
    sub-int v1, v0, v5

    add-int/lit8 v0, v0, 0x1

    .line 432
    new-instance v5, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;

    iget-object v6, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    iget v7, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int/lit8 v8, v1, 0x1

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    invoke-direct {v5, v6, v0, v7, v8}, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;-><init>(Ljava/lang/CharSequence;IILcom/ibm/icu/util/StringTrieBuilder$Node;)V

    .line 434
    iput v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    .line 435
    iput-object v4, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    move-object v1, p0

    move-object v0, v5

    :goto_2
    add-int/lit8 p3, p3, 0x1

    .line 438
    invoke-static {p1, p2, p3, p4}, Lcom/ibm/icu/util/StringTrieBuilder;->access$100(Lcom/ibm/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;

    move-result-object p1

    .line 439
    invoke-virtual {v4, v2, v0}, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->add(CLcom/ibm/icu/util/StringTrieBuilder$Node;)V

    .line 440
    invoke-virtual {v4, v3, p1}, Lcom/ibm/icu/util/StringTrieBuilder$DynamicBranchNode;->add(CLcom/ibm/icu/util/StringTrieBuilder$Node;)V

    return-object v1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    .line 445
    :cond_8
    iget-object v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ibm/icu/util/StringTrieBuilder$Node;->add(Lcom/ibm/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Lcom/ibm/icu/util/StringTrieBuilder$Node;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 367
    :cond_0
    invoke-super {p0, p1}, Lcom/ibm/icu/util/StringTrieBuilder$ValueNode;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 370
    :cond_1
    check-cast p1, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;

    .line 371
    iget v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    iget v3, p1, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    if-ne v1, v3, :cond_5

    iget-object v3, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    iget-object v4, p1, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    if-eq v3, v4, :cond_2

    goto :goto_1

    .line 374
    :cond_2
    iget v3, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    iget p1, p1, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    add-int/2addr v1, v3

    :goto_0
    if-ge v3, v1, :cond_4

    .line 375
    iget-object v4, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 361
    iget v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    return v0
.end method

.method public markRightEdgesFirst(I)I
    .locals 1

    .line 476
    iget v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->offset:I

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->offset:I

    :cond_0
    return p1
.end method

.method public register(Lcom/ibm/icu/util/StringTrieBuilder;)Lcom/ibm/icu/util/StringTrieBuilder$Node;
    .locals 5

    .line 450
    iget-object v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/StringTrieBuilder$Node;->register(Lcom/ibm/icu/util/StringTrieBuilder;)Lcom/ibm/icu/util/StringTrieBuilder$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    .line 452
    invoke-virtual {p1}, Lcom/ibm/icu/util/StringTrieBuilder;->getMaxLinearMatchLength()I

    move-result v0

    .line 453
    :goto_0
    iget v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    if-le v1, v0, :cond_0

    .line 454
    iget v2, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    add-int/2addr v2, v1

    sub-int/2addr v2, v0

    sub-int/2addr v1, v0

    .line 455
    iput v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    .line 456
    new-instance v1, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;

    iget-object v3, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;-><init>(Ljava/lang/CharSequence;IILcom/ibm/icu/util/StringTrieBuilder$Node;)V

    .line 458
    invoke-direct {v1}, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->setHashCode()V

    .line 459
    invoke-static {p1, v1}, Lcom/ibm/icu/util/StringTrieBuilder;->access$200(Lcom/ibm/icu/util/StringTrieBuilder;Lcom/ibm/icu/util/StringTrieBuilder$Node;)Lcom/ibm/icu/util/StringTrieBuilder$Node;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    goto :goto_0

    .line 462
    :cond_0
    iget-boolean v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->hasValue:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ibm/icu/util/StringTrieBuilder;->matchNodesCanHaveValues()Z

    move-result v0

    if-nez v0, :cond_1

    .line 463
    iget v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->value:I

    const/4 v1, 0x0

    .line 464
    iput v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->value:I

    .line 465
    iput-boolean v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->hasValue:Z

    .line 466
    invoke-direct {p0}, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->setHashCode()V

    .line 467
    new-instance v1, Lcom/ibm/icu/util/StringTrieBuilder$IntermediateValueNode;

    invoke-static {p1, p0}, Lcom/ibm/icu/util/StringTrieBuilder;->access$200(Lcom/ibm/icu/util/StringTrieBuilder;Lcom/ibm/icu/util/StringTrieBuilder$Node;)Lcom/ibm/icu/util/StringTrieBuilder$Node;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/ibm/icu/util/StringTrieBuilder$IntermediateValueNode;-><init>(ILcom/ibm/icu/util/StringTrieBuilder$Node;)V

    goto :goto_1

    .line 469
    :cond_1
    invoke-direct {p0}, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->setHashCode()V

    move-object v1, p0

    .line 472
    :goto_1
    invoke-static {p1, v1}, Lcom/ibm/icu/util/StringTrieBuilder;->access$200(Lcom/ibm/icu/util/StringTrieBuilder;Lcom/ibm/icu/util/StringTrieBuilder$Node;)Lcom/ibm/icu/util/StringTrieBuilder$Node;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/ibm/icu/util/StringTrieBuilder;)V
    .locals 4

    .line 483
    iget-object v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->next:Lcom/ibm/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/StringTrieBuilder$Node;->write(Lcom/ibm/icu/util/StringTrieBuilder;)V

    .line 484
    iget v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    iget v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    invoke-virtual {p1, v0, v1}, Lcom/ibm/icu/util/StringTrieBuilder;->write(II)I

    .line 485
    iget-boolean v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->hasValue:Z

    iget v1, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->value:I

    invoke-virtual {p1}, Lcom/ibm/icu/util/StringTrieBuilder;->getMinLinearMatch()I

    move-result v2

    iget v3, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/ibm/icu/util/StringTrieBuilder;->writeValueAndType(ZII)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/util/StringTrieBuilder$LinearMatchNode;->offset:I

    return-void
.end method
