.class final Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/MeasureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnitDataSink"
.end annotation


# instance fields
.field cacheData:Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

.field patterns:[Ljava/lang/String;

.field sb:Ljava/lang/StringBuilder;

.field type:Ljava/lang/String;

.field unit:Lcom/ibm/icu/util/MeasureUnit;

.field width:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;


# direct methods
.method constructor <init>(Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;)V
    .locals 1

    .line 887
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->sb:Ljava/lang/StringBuilder;

    .line 888
    iput-object p1, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->cacheData:Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

    return-void
.end method

.method static widthFromAlias(Lcom/ibm/icu/impl/UResource$Value;)Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
    .locals 2

    .line 937
    invoke-virtual {p0}, Lcom/ibm/icu/impl/UResource$Value;->getAliasString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/LOCALE/units"

    .line 939
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 940
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 941
    sget-object p0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->WIDE:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    return-object p0

    .line 942
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    const-string v0, "Short"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 943
    sget-object p0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->SHORT:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    return-object p0

    .line 944
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_2

    const-string v0, "Narrow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 945
    sget-object p0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->NARROW:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static widthFromKey(Lcom/ibm/icu/impl/UResource$Key;)Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
    .locals 2

    const-string v0, "units"

    .line 924
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/UResource$Key;->startsWith(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 925
    invoke-virtual {p0}, Lcom/ibm/icu/impl/UResource$Key;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 926
    sget-object p0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->WIDE:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    return-object p0

    :cond_0
    const-string v0, "Short"

    .line 927
    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/impl/UResource$Key;->regionMatches(ILjava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 928
    sget-object p0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->SHORT:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    return-object p0

    :cond_1
    const-string v0, "Narrow"

    .line 929
    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/impl/UResource$Key;->regionMatches(ILjava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 930
    sget-object p0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->NARROW:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method consumeAlias(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V
    .locals 5

    .line 895
    invoke-static {p1}, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->widthFromKey(Lcom/ibm/icu/impl/UResource$Key;)Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 900
    :cond_0
    invoke-static {p2}, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->widthFromAlias(Lcom/ibm/icu/impl/UResource$Value;)Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object v1

    const-string v2, "Units data fallback from "

    if-eqz v1, :cond_2

    .line 907
    iget-object v3, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->cacheData:Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v3, v3, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;->widthFallback:[Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v1}, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    if-nez v3, :cond_1

    .line 911
    iget-object p1, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->cacheData:Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

    iget-object p1, p1, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;->widthFallback:[Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->ordinal()I

    move-result p2

    aput-object v1, p1, p2

    return-void

    .line 908
    :cond_1
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getAliasString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " which falls back to something else"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 903
    :cond_2
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to unknown "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getAliasString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method consumeCompoundPattern(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V
    .locals 3

    const-string v0, "per"

    .line 854
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 855
    iget-object p1, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->cacheData:Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

    iget-object p1, p1, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;->styleToPerPattern:Ljava/util/EnumMap;

    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->width:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    .line 857
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->sb:Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    .line 856
    invoke-static {p2, v1, v2, v2}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p2

    .line 855
    invoke-virtual {p1, v0, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method consumePattern(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V
    .locals 1

    const-string v0, "dnam"

    .line 814
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    invoke-virtual {p0, p2}, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->setDnamIfAbsent(Lcom/ibm/icu/impl/UResource$Value;)V

    goto :goto_0

    :cond_0
    const-string v0, "per"

    .line 817
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    sget p1, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;->PER_UNIT_INDEX:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->setFormatterIfAbsent(ILcom/ibm/icu/impl/UResource$Value;I)V

    goto :goto_0

    .line 824
    :cond_1
    invoke-static {p1}, Lcom/ibm/icu/impl/StandardPlural;->indexFromString(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->setFormatterIfAbsent(ILcom/ibm/icu/impl/UResource$Value;I)V

    :goto_0
    return-void
.end method

.method consumeSubtypeTable(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V
    .locals 3

    .line 833
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->type:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->unit:Lcom/ibm/icu/util/MeasureUnit;

    const/4 v0, 0x0

    .line 835
    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->patterns:[Ljava/lang/String;

    .line 838
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 840
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    .line 841
    :goto_0
    invoke-interface {v0, v1, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 842
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->consumePattern(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 845
    :cond_1
    new-instance p1, Lcom/ibm/icu/util/ICUException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Data for unit \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->unit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' is in an unknown format"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public consumeTable(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V
    .locals 3

    .line 915
    invoke-static {p1}, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->widthFromKey(Lcom/ibm/icu/impl/UResource$Key;)Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->width:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    if-eqz v0, :cond_0

    .line 916
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    .line 917
    :goto_0
    invoke-interface {v0, v1, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 918
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->consumeUnitTypesTable(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method consumeUnitTypesTable(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V
    .locals 3

    const-string v0, "currency"

    .line 867
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "compound"

    .line 869
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 870
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->cacheData:Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v2, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->width:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v0, v2}, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;->hasPerFormatter(Lcom/ibm/icu/text/MeasureFormat$FormatWidth;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 871
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v0

    .line 872
    :goto_0
    invoke-interface {v0, v1, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 873
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->consumeCompoundPattern(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "coordinate"

    .line 876
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 879
    :cond_2
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->type:Ljava/lang/String;

    .line 880
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v0

    .line 881
    :goto_1
    invoke-interface {v0, v1, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 882
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->consumeSubtypeTable(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 3

    .line 954
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    .line 955
    :goto_0
    invoke-interface {p3, v0, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 956
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 957
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->consumeAlias(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V

    goto :goto_1

    .line 959
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->consumeTable(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method setDnamIfAbsent(Lcom/ibm/icu/impl/UResource$Value;)V
    .locals 3

    .line 799
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->cacheData:Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v0, v0, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;->unitToStyleToDnam:Ljava/util/Map;

    iget-object v1, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->unit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    if-nez v0, :cond_0

    .line 801
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 802
    iget-object v1, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->cacheData:Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v1, v1, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;->unitToStyleToDnam:Ljava/util/Map;

    iget-object v2, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->unit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->width:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 805
    iget-object v1, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->width:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method setFormatterIfAbsent(ILcom/ibm/icu/impl/UResource$Value;I)V
    .locals 3

    .line 777
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->patterns:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 778
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->cacheData:Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v0, v0, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;->unitToStyleToPatterns:Ljava/util/Map;

    iget-object v1, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->unit:Lcom/ibm/icu/util/MeasureUnit;

    .line 779
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    if-nez v0, :cond_0

    .line 781
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 783
    iget-object v1, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->cacheData:Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v1, v1, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;->unitToStyleToPatterns:Ljava/util/Map;

    iget-object v2, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->unit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 785
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->width:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->patterns:[Ljava/lang/String;

    .line 787
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->patterns:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 788
    sget v1, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;->PATTERN_COUNT:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->patterns:[Ljava/lang/String;

    .line 789
    iget-object v1, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->width:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    iget-object v2, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->patterns:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->patterns:[Ljava/lang/String;

    aget-object v1, v0, p1

    if-nez v1, :cond_2

    .line 794
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;->sb:Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 793
    invoke-static {p2, v1, p3, v2}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    :cond_2
    return-void
.end method
