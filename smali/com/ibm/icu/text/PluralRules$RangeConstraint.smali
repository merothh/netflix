.class Lcom/ibm/icu/text/PluralRules$RangeConstraint;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ibm/icu/text/PluralRules$Constraint;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RangeConstraint"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final inRange:Z

.field private final integersOnly:Z

.field private final lowerBound:D

.field private final mod:I

.field private final operand:Lcom/ibm/icu/text/PluralRules$Operand;

.field private final range_list:[J

.field private final upperBound:D


# direct methods
.method constructor <init>(IZLcom/ibm/icu/text/PluralRules$Operand;ZDD[J)V
    .locals 0

    .line 1579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1580
    iput p1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->mod:I

    .line 1581
    iput-boolean p2, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->inRange:Z

    .line 1582
    iput-boolean p4, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    .line 1583
    iput-wide p5, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    .line 1584
    iput-wide p7, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->upperBound:D

    .line 1585
    iput-object p9, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->range_list:[J

    .line 1586
    iput-object p3, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->operand:Lcom/ibm/icu/text/PluralRules$Operand;

    return-void
.end method


# virtual methods
.method public isFulfilled(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Z
    .locals 8

    .line 1591
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->operand:Lcom/ibm/icu/text/PluralRules$Operand;

    invoke-interface {p1, v0}, Lcom/ibm/icu/text/PluralRules$IFixedDecimal;->getPluralOperand(Lcom/ibm/icu/text/PluralRules$Operand;)D

    move-result-wide v0

    .line 1592
    iget-boolean v2, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    double-to-long v6, v0

    long-to-double v6, v6

    sub-double v6, v0, v6

    cmpl-double v2, v6, v3

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->operand:Lcom/ibm/icu/text/PluralRules$Operand;

    sget-object v6, Lcom/ibm/icu/text/PluralRules$Operand;->j:Lcom/ibm/icu/text/PluralRules$Operand;

    if-ne v2, v6, :cond_2

    sget-object v2, Lcom/ibm/icu/text/PluralRules$Operand;->v:Lcom/ibm/icu/text/PluralRules$Operand;

    .line 1593
    invoke-interface {p1, v2}, Lcom/ibm/icu/text/PluralRules$IFixedDecimal;->getPluralOperand(Lcom/ibm/icu/text/PluralRules$Operand;)D

    move-result-wide v6

    cmpl-double p1, v6, v3

    if-eqz p1, :cond_2

    .line 1594
    :cond_1
    iget-boolean p1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->inRange:Z

    xor-int/2addr p1, v5

    return p1

    .line 1596
    :cond_2
    iget p1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->mod:I

    if-eqz p1, :cond_3

    int-to-double v2, p1

    rem-double/2addr v0, v2

    .line 1599
    :cond_3
    iget-wide v2, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    const/4 p1, 0x0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_4

    iget-wide v2, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->upperBound:D

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_6

    .line 1600
    iget-object v3, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->range_list:[J

    if-eqz v3, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-nez v2, :cond_6

    .line 1602
    iget-object v4, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->range_list:[J

    array-length v6, v4

    if-ge v3, v6, :cond_6

    .line 1603
    aget-wide v6, v4, v3

    long-to-double v6, v6

    cmpl-double v2, v0, v6

    if-ltz v2, :cond_5

    add-int/lit8 v2, v3, 0x1

    aget-wide v6, v4, v2

    long-to-double v6, v6

    cmpg-double v2, v0, v6

    if-gtz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 1606
    :cond_6
    iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-ne v0, v2, :cond_7

    const/4 p1, 0x1

    :cond_7
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1633
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1634
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->operand:Lcom/ibm/icu/text/PluralRules$Operand;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1635
    iget v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->mod:I

    if-eqz v0, :cond_0

    const-string v0, " % "

    .line 1636
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->mod:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1638
    :cond_0
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    iget-wide v2, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->upperBound:D

    const/4 v7, 0x1

    const/4 v8, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, " = "

    const-string v2, " != "

    if-nez v0, :cond_3

    .line 1639
    iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eqz v0, :cond_5

    const-string v1, " within "

    goto :goto_1

    :cond_5
    const-string v1, " not within "

    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->range_list:[J

    if-eqz v0, :cond_7

    const/4 v9, 0x0

    .line 1645
    :goto_2
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->range_list:[J

    array-length v1, v0

    if-ge v9, v1, :cond_8

    .line 1646
    aget-wide v1, v0, v9

    long-to-double v1, v1

    add-int/lit8 v3, v9, 0x1

    aget-wide v3, v0, v3

    long-to-double v3, v3

    if-eqz v9, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/text/PluralRules;->access$500(Ljava/lang/StringBuilder;DDZ)V

    add-int/lit8 v9, v9, 0x2

    goto :goto_2

    .line 1649
    :cond_7
    iget-wide v1, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    iget-wide v3, p0, Lcom/ibm/icu/text/PluralRules$RangeConstraint;->upperBound:D

    const/4 v5, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/text/PluralRules;->access$500(Ljava/lang/StringBuilder;DDZ)V

    .line 1651
    :cond_8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
