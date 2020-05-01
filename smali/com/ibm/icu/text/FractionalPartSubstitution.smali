.class Lcom/ibm/icu/text/FractionalPartSubstitution;
.super Lcom/ibm/icu/text/NFSubstitution;
.source ""


# instance fields
.field private final byDigits:Z

.field private final useSpaces:Z


# direct methods
.method constructor <init>(ILcom/ibm/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 2

    .line 1204
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/NFSubstitution;-><init>(ILcom/ibm/icu/text/NFRuleSet;Ljava/lang/String;)V

    const-string p1, ">>"

    .line 1205
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, ">>>"

    const/4 v1, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1209
    iput-boolean p1, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->byDigits:Z

    .line 1210
    iput-boolean v1, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->useSpaces:Z

    .line 1211
    iget-object p1, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;

    invoke-virtual {p1}, Lcom/ibm/icu/text/NFRuleSet;->makeIntoFractionRuleSet()V

    goto :goto_1

    .line 1206
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->byDigits:Z

    .line 1207
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->useSpaces:Z

    :goto_1
    return-void
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public composeRuleValue(DD)D
    .locals 0

    add-double/2addr p1, p3

    return-wide p1
.end method

.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;
    .locals 8

    .line 1306
    iget-boolean p5, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->byDigits:Z

    if-nez p5, :cond_0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v7, p7

    .line 1307
    invoke-super/range {v0 .. v7}, Lcom/ibm/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 1315
    :cond_0
    new-instance p5, Ljava/text/ParsePosition;

    const/4 p6, 0x1

    invoke-direct {p5, p6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1319
    new-instance v0, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/FormatQuantity4;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1321
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {p5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-eqz v3, :cond_4

    .line 1322
    invoke-virtual {p5, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1323
    iget-object v3, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-virtual {v3, p1, p5, v4, v5}, Lcom/ibm/icu/text/NFRuleSet;->parse(Ljava/lang/String;Ljava/text/ParsePosition;D)Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-eqz p7, :cond_2

    .line 1324
    invoke-virtual {p5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    if-nez v4, :cond_2

    .line 1325
    iget-object v4, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;

    iget-object v4, v4, Lcom/ibm/icu/text/NFRuleSet;->owner:Lcom/ibm/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v4}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Lcom/ibm/icu/text/DecimalFormat;

    move-result-object v4

    invoke-virtual {v4, p1, p5}, Lcom/ibm/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1327
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 1331
    :cond_2
    invoke-virtual {p5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    int-to-byte v3, v3

    .line 1335
    invoke-virtual {v0, v3, v2, v1}, Lcom/ibm/icu/impl/number/FormatQuantity4;->appendDigit(BIZ)V

    const/4 v2, 0x0

    .line 1339
    :goto_0
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1340
    invoke-virtual {p5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1341
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    .line 1342
    invoke-virtual {p1, p6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1343
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    add-int/2addr v3, p6

    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_1

    .line 1347
    :cond_4
    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->toDouble()D

    move-result-wide p1

    .line 1349
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ibm/icu/text/FractionalPartSubstitution;->composeRuleValue(DD)D

    move-result-wide p1

    .line 1350
    new-instance p3, Ljava/lang/Double;

    invoke-direct {p3, p1, p2}, Ljava/lang/Double;-><init>(D)V

    return-object p3
.end method

.method public doSubstitution(DLjava/lang/StringBuilder;II)V
    .locals 8

    .line 1231
    iget-boolean v0, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->byDigits:Z

    if-nez v0, :cond_0

    .line 1234
    invoke-super/range {p0 .. p5}, Lcom/ibm/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuilder;II)V

    goto :goto_2

    .line 1244
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/impl/number/FormatQuantity4;-><init>(D)V

    .line 1245
    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->roundToInfinity()V

    const/4 p1, 0x0

    .line 1248
    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/FormatQuantity4;->getLowerDisplayMagnitude()I

    move-result p2

    :goto_0
    if-gez p2, :cond_2

    if-eqz p1, :cond_1

    .line 1250
    iget-boolean v1, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->useSpaces:Z

    if-eqz v1, :cond_1

    .line 1251
    iget v1, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->pos:I

    add-int/2addr v1, p4

    const/16 v2, 0x20

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 1255
    :goto_1
    iget-object v1, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->ruleSet:Lcom/ibm/icu/text/NFRuleSet;

    add-int/lit8 v7, p2, 0x1

    invoke-virtual {v0, p2}, Lcom/ibm/icu/impl/number/FormatQuantity4;->getDigit(I)B

    move-result p2

    int-to-long v2, p2

    iget p2, p0, Lcom/ibm/icu/text/FractionalPartSubstitution;->pos:I

    add-int v5, p4, p2

    move-object v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/text/NFRuleSet;->format(JLjava/lang/StringBuilder;II)V

    move p2, v7

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method tokenChar()C
    .locals 1

    const/16 v0, 0x3e

    return v0
.end method

.method public transformNumber(D)D
    .locals 2

    .line 1278
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    sub-double/2addr p1, v0

    return-wide p1
.end method

.method public transformNumber(J)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method
