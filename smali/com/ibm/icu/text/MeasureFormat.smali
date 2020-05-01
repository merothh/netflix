.class public Lcom/ibm/icu/text/MeasureFormat;
.super Lcom/ibm/icu/text/UFormat;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;,
        Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;,
        Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;,
        Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;,
        Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;,
        Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
    }
.end annotation


# static fields
.field private static final hmsTo012:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ibm/icu/util/MeasureUnit;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final localeIdToRangeFormat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ibm/icu/util/ULocale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final localeMeasureFormatData:Lcom/ibm/icu/impl/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/SimpleCache<",
            "Lcom/ibm/icu/util/ULocale;",
            "Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;",
            ">;"
        }
    .end annotation
.end field

.field private static final localeToNumericDurationFormatters:Lcom/ibm/icu/impl/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/SimpleCache<",
            "Lcom/ibm/icu/util/ULocale;",
            "Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = -0x63abaa69b1b00340L


# instance fields
.field private final transient cache:Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

.field private final transient currencyFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

.field private final transient formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

.field private final transient integerFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

.field private final transient numberFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

.field private final transient numericFormatters:Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

.field private final transient rules:Lcom/ibm/icu/text/PluralRules;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 135
    new-instance v0, Lcom/ibm/icu/impl/SimpleCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/MeasureFormat;->localeMeasureFormatData:Lcom/ibm/icu/impl/SimpleCache;

    .line 138
    new-instance v0, Lcom/ibm/icu/impl/SimpleCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/MeasureFormat;->localeToNumericDurationFormatters:Lcom/ibm/icu/impl/SimpleCache;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    .line 145
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/util/MeasureUnit;->HOUR:Lcom/ibm/icu/util/TimeUnit;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/util/MeasureUnit;->MINUTE:Lcom/ibm/icu/util/TimeUnit;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    sget-object v1, Lcom/ibm/icu/util/MeasureUnit;->SECOND:Lcom/ibm/icu/util/TimeUnit;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 724
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 726
    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->cache:Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

    .line 727
    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    .line 728
    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    .line 729
    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->rules:Lcom/ibm/icu/text/PluralRules;

    .line 730
    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->numericFormatters:Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

    .line 731
    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->currencyFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    .line 732
    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->integerFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;)V
    .locals 0

    .line 713
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    .line 714
    invoke-virtual {p0, p1, p1}, Lcom/ibm/icu/text/MeasureFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    .line 715
    iput-object p2, p0, Lcom/ibm/icu/text/MeasureFormat;->cache:Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

    .line 716
    iput-object p3, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    .line 717
    iput-object p4, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    .line 718
    iput-object p5, p0, Lcom/ibm/icu/text/MeasureFormat;->rules:Lcom/ibm/icu/text/PluralRules;

    .line 719
    iput-object p6, p0, Lcom/ibm/icu/text/MeasureFormat;->numericFormatters:Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

    .line 720
    iput-object p7, p0, Lcom/ibm/icu/text/MeasureFormat;->currencyFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    .line 721
    iput-object p8, p0, Lcom/ibm/icu/text/MeasureFormat;->integerFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    return-void
.end method

.method static synthetic access$200(I)Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
    .locals 0

    .line 114
    invoke-static {p0}, Lcom/ibm/icu/text/MeasureFormat;->fromFormatWidthOrdinal(I)Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object p0

    return-object p0
.end method

.method private formatMeasure(Lcom/ibm/icu/util/Measure;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;)Ljava/lang/String;
    .locals 2

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ibm/icu/impl/DontCareFieldPosition;->INSTANCE:Lcom/ibm/icu/impl/DontCareFieldPosition;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasure(Lcom/ibm/icu/util/Measure;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1074
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatMeasure(Lcom/ibm/icu/util/Measure;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;
    .locals 3

    .line 1082
    invoke-virtual {p1}, Lcom/ibm/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v0

    .line 1083
    invoke-virtual {p1}, Lcom/ibm/icu/util/Measure;->getUnit()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object p1

    .line 1084
    instance-of v1, p1, Lcom/ibm/icu/util/Currency;

    if-eqz v1, :cond_0

    .line 1085
    iget-object p2, p0, Lcom/ibm/icu/text/MeasureFormat;->currencyFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    new-instance v1, Lcom/ibm/icu/util/CurrencyAmount;

    check-cast p1, Lcom/ibm/icu/util/Currency;

    invoke-direct {v1, v0, p1}, Lcom/ibm/icu/util/CurrencyAmount;-><init>(Ljava/lang/Number;Lcom/ibm/icu/util/Currency;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1086
    invoke-virtual {p2, v1, p1, p4}, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;->format(Lcom/ibm/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 1085
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    return-object p3

    .line 1092
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1094
    invoke-static {p2}, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;->access$000(Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p2

    iget-object v2, p0, Lcom/ibm/icu/text/MeasureFormat;->rules:Lcom/ibm/icu/text/PluralRules;

    .line 1093
    invoke-static {v0, p2, v2, v1, p4}, Lcom/ibm/icu/text/QuantityFormatter;->selectPlural(Ljava/lang/Number;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/text/PluralRules;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object p2

    .line 1095
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {p2}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/ibm/icu/text/MeasureFormat;->getPluralFormatter(Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    move-result-object p1

    .line 1096
    invoke-static {p1, v1, p3, p4}, Lcom/ibm/icu/text/QuantityFormatter;->format(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method private varargs formatMeasuresSlowTrack(Lcom/ibm/icu/text/ListFormatter;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Lcom/ibm/icu/util/Measure;)Ljava/lang/StringBuilder;
    .locals 8

    .line 1199
    array-length v0, p4

    new-array v0, v0, [Ljava/lang/String;

    .line 1202
    new-instance v1, Ljava/text/FieldPosition;

    .line 1203
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getField()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 1206
    :goto_0
    array-length v5, p4

    if-ge v3, v5, :cond_4

    .line 1207
    array-length v5, p4

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_0

    iget-object v5, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/ibm/icu/text/MeasureFormat;->integerFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    :goto_1
    if-ne v4, v2, :cond_2

    .line 1209
    aget-object v6, p4, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v6, v5, v7, v1}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasure(Lcom/ibm/icu/util/Measure;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    .line 1210
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    move v4, v3

    goto :goto_2

    .line 1214
    :cond_2
    aget-object v6, p4, v3

    invoke-direct {p0, v6, v5}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasure(Lcom/ibm/icu/util/Measure;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1218
    :cond_4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-virtual {p1, p4, v4}, Lcom/ibm/icu/text/ListFormatter;->format(Ljava/util/Collection;I)Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object p1

    .line 1221
    invoke-virtual {p1}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->getOffset()I

    move-result p4

    if-eq p4, v2, :cond_5

    .line 1222
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p4

    invoke-virtual {p1}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->getOffset()I

    move-result v0

    add-int/2addr p4, v0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/2addr p4, v0

    invoke-virtual {p3, p4}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1223
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p4

    invoke-virtual {p1}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->getOffset()I

    move-result v0

    add-int/2addr p4, v0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/2addr p4, v0

    invoke-virtual {p3, p4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1225
    :cond_5
    invoke-virtual {p1}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p2
.end method

.method private formatNumeric(Ljava/util/Date;Lcom/ibm/icu/text/DateFormat;Lcom/ibm/icu/text/DateFormat$Field;Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 4

    .line 1341
    new-instance v0, Ljava/text/FieldPosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    .line 1342
    iget-object v2, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p4, v3, v0}, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;->format(Ljava/lang/Number;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p4

    .line 1343
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1345
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1346
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1350
    :cond_1
    :goto_0
    new-instance v2, Ljava/text/FieldPosition;

    invoke-direct {v2, p3}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 1351
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, p1, p3, v2}, Lcom/ibm/icu/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 1352
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1355
    invoke-virtual {v2}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p2

    if-nez p2, :cond_3

    .line 1356
    invoke-virtual {v2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 1378
    :cond_2
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1358
    :cond_3
    :goto_1
    invoke-virtual {v2}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p2

    invoke-virtual {p5, p1, v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1361
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p2

    invoke-virtual {p5, p4, v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1367
    invoke-virtual {v2}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p2

    .line 1368
    invoke-virtual {v2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p3

    .line 1365
    invoke-virtual {p5, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1373
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p2

    .line 1374
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    .line 1371
    invoke-virtual {p5, p4, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1375
    invoke-virtual {v2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p5, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :goto_2
    return-object p5
.end method

.method private formatNumeric([Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 1273
    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_2

    .line 1274
    aget-object v5, p1, v2

    if-eqz v5, :cond_1

    if-ne v3, v1, :cond_0

    move v3, v2

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v2

    goto :goto_1

    .line 1281
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1285
    :cond_2
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    mul-double v0, v0, v5

    const/4 v2, 0x1

    aget-object v7, p1, v2

    .line 1286
    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    add-double/2addr v0, v7

    mul-double v0, v0, v5

    const/4 v5, 0x2

    aget-object v6, p1, v5

    .line 1287
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    add-double/2addr v0, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v6

    double-to-long v0, v0

    .line 1288
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    if-nez v3, :cond_3

    if-ne v4, v5, :cond_3

    .line 1291
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->numericFormatters:Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

    .line 1293
    invoke-virtual {v0}, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->getHourMinuteSecond()Lcom/ibm/icu/text/DateFormat;

    move-result-object v8

    sget-object v9, Lcom/ibm/icu/text/DateFormat$Field;->SECOND:Lcom/ibm/icu/text/DateFormat$Field;

    aget-object v10, p1, v4

    move-object v6, p0

    move-object v11, p2

    .line 1291
    invoke-direct/range {v6 .. v11}, Lcom/ibm/icu/text/MeasureFormat;->formatNumeric(Ljava/util/Date;Lcom/ibm/icu/text/DateFormat;Lcom/ibm/icu/text/DateFormat$Field;Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1

    :cond_3
    if-ne v3, v2, :cond_4

    if-ne v4, v5, :cond_4

    .line 1300
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->numericFormatters:Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

    .line 1302
    invoke-virtual {v0}, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->getMinuteSecond()Lcom/ibm/icu/text/DateFormat;

    move-result-object v8

    sget-object v9, Lcom/ibm/icu/text/DateFormat$Field;->SECOND:Lcom/ibm/icu/text/DateFormat$Field;

    aget-object v10, p1, v4

    move-object v6, p0

    move-object v11, p2

    .line 1300
    invoke-direct/range {v6 .. v11}, Lcom/ibm/icu/text/MeasureFormat;->formatNumeric(Ljava/util/Date;Lcom/ibm/icu/text/DateFormat;Lcom/ibm/icu/text/DateFormat$Field;Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1

    :cond_4
    if-nez v3, :cond_5

    if-ne v4, v2, :cond_5

    .line 1309
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->numericFormatters:Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

    .line 1311
    invoke-virtual {v0}, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->getHourMinute()Lcom/ibm/icu/text/DateFormat;

    move-result-object v8

    sget-object v9, Lcom/ibm/icu/text/DateFormat$Field;->MINUTE:Lcom/ibm/icu/text/DateFormat$Field;

    aget-object v10, p1, v4

    move-object v6, p0

    move-object v11, p2

    .line 1309
    invoke-direct/range {v6 .. v11}, Lcom/ibm/icu/text/MeasureFormat;->formatNumeric(Ljava/util/Date;Lcom/ibm/icu/text/DateFormat;Lcom/ibm/icu/text/DateFormat$Field;Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1

    .line 1316
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private static fromFormatWidthOrdinal(I)Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
    .locals 2

    .line 1472
    invoke-static {}, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->values()[Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    if-ltz p0, :cond_1

    .line 1473
    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 1476
    :cond_0
    aget-object p0, v0, p0

    return-object p0

    .line 1474
    :cond_1
    :goto_0
    sget-object p0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->SHORT:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    return-object p0
.end method

.method private getFormatter(Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;
    .locals 3

    .line 1014
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/MeasureFormat;->getFormatterOrNull(Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1016
    :cond_0
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no formatting pattern for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", width "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2, p2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private getFormatterOrNull(Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;
    .locals 2

    .line 997
    invoke-static {p2}, Lcom/ibm/icu/text/MeasureFormat;->getRegularWidth(Lcom/ibm/icu/text/MeasureFormat$FormatWidth;)Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object p2

    .line 998
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->cache:Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v0, v0, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;->unitToStyleToPatterns:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 999
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1000
    aget-object v1, v0, p3

    if-eqz v1, :cond_0

    .line 1001
    aget-object p1, v0, p3

    return-object p1

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->cache:Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v0, v0, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;->widthFallback:[Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {p2}, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->ordinal()I

    move-result p2

    aget-object p2, v0, p2

    if-eqz p2, :cond_1

    .line 1005
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1006
    aget-object p2, p1, p3

    if-eqz p2, :cond_1

    .line 1007
    aget-object p1, p1, p3

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;)Lcom/ibm/icu/text/MeasureFormat;
    .locals 1

    .line 224
    invoke-static {p0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/MeasureFormat;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/NumberFormat;)Lcom/ibm/icu/text/MeasureFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/NumberFormat;)Lcom/ibm/icu/text/MeasureFormat;
    .locals 10

    .line 249
    invoke-static {p0}, Lcom/ibm/icu/text/PluralRules;->forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/PluralRules;

    move-result-object v5

    .line 251
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat;->localeMeasureFormatData:Lcom/ibm/icu/impl/SimpleCache;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

    if-nez v0, :cond_0

    .line 253
    invoke-static {p0}, Lcom/ibm/icu/text/MeasureFormat;->loadLocaleData(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

    move-result-object v0

    .line 254
    sget-object v1, Lcom/ibm/icu/text/MeasureFormat;->localeMeasureFormatData:Lcom/ibm/icu/impl/SimpleCache;

    invoke-virtual {v1, p0, v0}, Lcom/ibm/icu/impl/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move-object v2, v0

    .line 256
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    if-ne p1, v0, :cond_1

    .line 257
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat;->localeToNumericDurationFormatters:Lcom/ibm/icu/impl/SimpleCache;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

    if-nez v0, :cond_2

    .line 259
    invoke-static {p0}, Lcom/ibm/icu/text/MeasureFormat;->loadNumericFormatters(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

    move-result-object v0

    .line 260
    sget-object v1, Lcom/ibm/icu/text/MeasureFormat;->localeToNumericDurationFormatters:Lcom/ibm/icu/impl/SimpleCache;

    invoke-virtual {v1, p0, v0}, Lcom/ibm/icu/impl/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    move-object v6, v0

    .line 263
    invoke-static {p0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x0

    .line 264
    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 265
    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->setMinimumFractionDigits(I)V

    const/4 v1, 0x1

    .line 266
    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->setRoundingMode(I)V

    .line 267
    new-instance v9, Lcom/ibm/icu/text/MeasureFormat;

    new-instance v4, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-direct {v4, p2}, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;-><init>(Lcom/ibm/icu/text/NumberFormat;)V

    new-instance v7, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    .line 274
    invoke-virtual {p1}, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->getCurrencyStyle()I

    move-result p2

    invoke-static {p0, p2}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p2

    invoke-direct {v7, p2}, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;-><init>(Lcom/ibm/icu/text/NumberFormat;)V

    new-instance v8, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-direct {v8, v0}, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;-><init>(Lcom/ibm/icu/text/NumberFormat;)V

    move-object v0, v9

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/ibm/icu/text/MeasureFormat;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;)V

    return-object v9
.end method

.method private static final getRegularWidth(Lcom/ibm/icu/text/MeasureFormat$FormatWidth;)Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
    .locals 1

    .line 990
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    if-ne p0, v0, :cond_0

    .line 991
    sget-object p0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->NARROW:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    :cond_0
    return-object p0
.end method

.method private static loadLocaleData(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;
    .locals 3

    const-string v0, "com/ibm/icu/impl/data/icudt59b/unit"

    .line 982
    invoke-static {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 983
    new-instance v0, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;-><init>(Lcom/ibm/icu/text/MeasureFormat$1;)V

    .line 984
    new-instance v1, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;

    invoke-direct {v1, v0}, Lcom/ibm/icu/text/MeasureFormat$UnitDataSink;-><init>(Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;)V

    const-string v2, ""

    .line 985
    invoke-virtual {p0, v2, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    return-object v0
.end method

.method private static loadNumericDurationFormat(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/text/DateFormat;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "durationUnits/%s"

    .line 1231
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p0

    .line 1233
    new-instance p1, Lcom/ibm/icu/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "h"

    const-string v1, "H"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1234
    sget-object p0, Lcom/ibm/icu/util/TimeZone;->GMT_ZONE:Lcom/ibm/icu/util/TimeZone;

    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/DateFormat;->setTimeZone(Lcom/ibm/icu/util/TimeZone;)V

    return-object p1
.end method

.method private static loadNumericFormatters(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;
    .locals 4

    const-string v0, "com/ibm/icu/impl/data/icudt59b/unit"

    .line 757
    invoke-static {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 758
    new-instance v0, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

    const-string v1, "hm"

    .line 759
    invoke-static {p0, v1}, Lcom/ibm/icu/text/MeasureFormat;->loadNumericDurationFormat(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v1

    const-string v2, "ms"

    .line 760
    invoke-static {p0, v2}, Lcom/ibm/icu/text/MeasureFormat;->loadNumericDurationFormat(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v2

    const-string v3, "hms"

    .line 761
    invoke-static {p0, v3}, Lcom/ibm/icu/text/MeasureFormat;->loadNumericDurationFormat(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;-><init>(Lcom/ibm/icu/text/DateFormat;Lcom/ibm/icu/text/DateFormat;Lcom/ibm/icu/text/DateFormat;)V

    return-object v0
.end method

.method private static toHMS([Lcom/ibm/icu/util/Measure;)[Ljava/lang/Number;
    .locals 11

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Number;

    .line 1246
    array-length v1, p0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    .line 1247
    invoke-virtual {v4}, Lcom/ibm/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    cmpg-double v10, v5, v7

    if-gez v10, :cond_0

    return-object v9

    .line 1250
    :cond_0
    sget-object v5, Lcom/ibm/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/ibm/icu/util/Measure;->getUnit()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_1

    return-object v9

    .line 1254
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v5, v2, :cond_2

    return-object v9

    .line 1260
    :cond_2
    invoke-virtual {v4}, Lcom/ibm/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v2

    aput-object v2, v0, v5

    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 5

    .line 1384
    new-instance v0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;

    .line 1385
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    iget-object v3, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-virtual {v3}, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;->get()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/NumberFormat;I)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 610
    :cond_0
    instance-of v1, p1, Lcom/ibm/icu/text/MeasureFormat;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 613
    :cond_1
    check-cast p1, Lcom/ibm/icu/text/MeasureFormat;

    .line 615
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getWidth()Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/text/MeasureFormat;->getWidth()Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object v3

    if-ne v1, v3, :cond_2

    .line 616
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/text/MeasureFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 617
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getNumberFormat()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/text/MeasureFormat;->getNumberFormat()Lcom/ibm/icu/text/NumberFormat;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ibm/icu/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7

    .line 311
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 312
    new-instance v1, Ljava/text/FieldPosition;

    .line 313
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getField()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    .line 314
    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_2

    .line 315
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    .line 316
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Lcom/ibm/icu/util/Measure;

    const/4 v4, 0x0

    .line 318
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 319
    instance-of v6, v5, Lcom/ibm/icu/util/Measure;

    if-eqz v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    .line 322
    check-cast v5, Lcom/ibm/icu/util/Measure;

    aput-object v5, v3, v4

    move v4, v6

    goto :goto_0

    .line 320
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 324
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, v1, v3}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Lcom/ibm/icu/util/Measure;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 325
    :cond_2
    instance-of v2, p1, [Lcom/ibm/icu/util/Measure;

    if-eqz v2, :cond_3

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, [Lcom/ibm/icu/util/Measure;

    check-cast p1, [Lcom/ibm/icu/util/Measure;

    invoke-virtual {p0, v2, v1, p1}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Lcom/ibm/icu/util/Measure;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 327
    :cond_3
    instance-of v2, p1, Lcom/ibm/icu/util/Measure;

    if-eqz v2, :cond_6

    .line 328
    check-cast p1, Lcom/ibm/icu/util/Measure;

    iget-object v2, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasure(Lcom/ibm/icu/util/Measure;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 332
    :goto_1
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v1}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p1

    if-eqz p1, :cond_5

    .line 333
    :cond_4
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p3, p1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 334
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p3, p1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_5
    return-object p2

    .line 330
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public varargs formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Lcom/ibm/icu/util/Measure;)Ljava/lang/StringBuilder;
    .locals 5

    .line 539
    array-length v0, p3

    if-nez v0, :cond_0

    return-object p1

    .line 542
    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 543
    aget-object p3, p3, v1

    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-direct {p0, p3, v0, p1, p2}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasure(Lcom/ibm/icu/util/Measure;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    sget-object v3, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    if-ne v0, v3, :cond_2

    .line 549
    invoke-static {p3}, Lcom/ibm/icu/text/MeasureFormat;->toHMS([Lcom/ibm/icu/util/Measure;)[Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 551
    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/MeasureFormat;->formatNumeric([Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1

    .line 556
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iget-object v3, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v3}, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->getListFormatterStyle()Lcom/ibm/icu/text/ListFormatter$Style;

    move-result-object v3

    .line 555
    invoke-static {v0, v3}, Lcom/ibm/icu/text/ListFormatter;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/ListFormatter$Style;)Lcom/ibm/icu/text/ListFormatter;

    move-result-object v0

    .line 557
    sget-object v3, Lcom/ibm/icu/impl/DontCareFieldPosition;->INSTANCE:Lcom/ibm/icu/impl/DontCareFieldPosition;

    if-eq p2, v3, :cond_3

    .line 558
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasuresSlowTrack(Lcom/ibm/icu/text/ListFormatter;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Lcom/ibm/icu/util/Measure;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1

    .line 561
    :cond_3
    array-length p2, p3

    new-array p2, p2, [Ljava/lang/String;

    .line 562
    :goto_0
    array-length v3, p3

    if-ge v1, v3, :cond_5

    .line 563
    aget-object v3, p3, v1

    array-length v4, p3

    sub-int/2addr v4, v2

    if-ne v1, v4, :cond_4

    iget-object v4, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/ibm/icu/text/MeasureFormat;->integerFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasure(Lcom/ibm/icu/util/Measure;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 567
    :cond_5
    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {v0, p2}, Lcom/ibm/icu/text/ListFormatter;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public final getLocale()Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 644
    sget-object v0, Lcom/ibm/icu/util/ULocale;->VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/MeasureFormat;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public getNumberFormat()Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;->get()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public getPluralFormatter(Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1029
    sget v0, Lcom/ibm/icu/impl/StandardPlural;->OTHER_INDEX:I

    if-eq p3, v0, :cond_0

    .line 1030
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/MeasureFormat;->getFormatterOrNull(Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    return-object p3

    .line 1035
    :cond_0
    sget p3, Lcom/ibm/icu/impl/StandardPlural;->OTHER_INDEX:I

    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/MeasureFormat;->getFormatter(Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWidth()Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 627
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 628
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getNumberFormat()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getWidth()Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/Measure;
    .locals 0

    .line 348
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/MeasureFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/Measure;

    move-result-object p1

    return-object p1
.end method

.method toCurrencyProxy()Ljava/lang/Object;
    .locals 5

    .line 1191
    new-instance v0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;

    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    iget-object v3, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-virtual {v3}, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;->get()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/NumberFormat;I)V

    return-object v0
.end method

.method toTimeUnitProxy()Ljava/lang/Object;
    .locals 5

    .line 1187
    new-instance v0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;

    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    iget-object v3, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-virtual {v3}, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;->get()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/NumberFormat;I)V

    return-object v0
.end method

.method withLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MeasureFormat;
    .locals 1

    .line 690
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getWidth()Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ibm/icu/text/MeasureFormat;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;)Lcom/ibm/icu/text/MeasureFormat;

    move-result-object p1

    return-object p1
.end method

.method withNumberFormat(Lcom/ibm/icu/text/NumberFormat;)Lcom/ibm/icu/text/MeasureFormat;
    .locals 10

    .line 694
    new-instance v9, Lcom/ibm/icu/text/MeasureFormat;

    .line 695
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/text/MeasureFormat;->cache:Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v3, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    new-instance v4, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    invoke-direct {v4, p1}, Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;-><init>(Lcom/ibm/icu/text/NumberFormat;)V

    iget-object v5, p0, Lcom/ibm/icu/text/MeasureFormat;->rules:Lcom/ibm/icu/text/PluralRules;

    iget-object v6, p0, Lcom/ibm/icu/text/MeasureFormat;->numericFormatters:Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

    iget-object v7, p0, Lcom/ibm/icu/text/MeasureFormat;->currencyFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    iget-object v8, p0, Lcom/ibm/icu/text/MeasureFormat;->integerFormat:Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/ibm/icu/text/MeasureFormat;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;Lcom/ibm/icu/text/MeasureFormat$ImmutableNumberFormat;)V

    return-object v9
.end method
