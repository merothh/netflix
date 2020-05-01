.class Lcom/ibm/icu/text/CurrencyFormat;
.super Lcom/ibm/icu/text/MeasureFormat;
.source ""


# static fields
.field static final serialVersionUID:J = -0xcedfd71ed74263aL


# instance fields
.field private fmt:Lcom/ibm/icu/text/NumberFormat;

.field private final transient mf:Lcom/ibm/icu/text/MeasureFormat;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/ibm/icu/text/MeasureFormat;-><init>()V

    .line 44
    invoke-virtual {p0, p1, p1}, Lcom/ibm/icu/text/CurrencyFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    .line 45
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->WIDE:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-static {p1, v0}, Lcom/ibm/icu/text/MeasureFormat;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;)Lcom/ibm/icu/text/MeasureFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/CurrencyFormat;->mf:Lcom/ibm/icu/text/MeasureFormat;

    .line 46
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Lcom/ibm/icu/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/CurrencyFormat;->fmt:Lcom/ibm/icu/text/NumberFormat;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3

    .line 120
    new-instance v0, Lcom/ibm/icu/text/CurrencyFormat;

    iget-object v1, p0, Lcom/ibm/icu/text/CurrencyFormat;->fmt:Lcom/ibm/icu/text/NumberFormat;

    sget-object v2, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/NumberFormat;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CurrencyFormat;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyFormat;->mf:Lcom/ibm/icu/text/MeasureFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MeasureFormat;->toCurrencyProxy()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 54
    invoke-super {p0}, Lcom/ibm/icu/text/MeasureFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/CurrencyFormat;

    .line 55
    iget-object v1, p0, Lcom/ibm/icu/text/CurrencyFormat;->fmt:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/NumberFormat;

    iput-object v1, v0, Lcom/ibm/icu/text/CurrencyFormat;->fmt:Lcom/ibm/icu/text/NumberFormat;

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .line 64
    instance-of v0, p1, Lcom/ibm/icu/util/CurrencyAmount;

    if-eqz v0, :cond_0

    .line 67
    check-cast p1, Lcom/ibm/icu/util/CurrencyAmount;

    .line 69
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyFormat;->fmt:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {p1}, Lcom/ibm/icu/util/CurrencyAmount;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/NumberFormat;->setCurrency(Lcom/ibm/icu/util/Currency;)V

    .line 70
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyFormat;->fmt:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {p1}, Lcom/ibm/icu/util/CurrencyAmount;->getNumber()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    .line 65
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public varargs formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Lcom/ibm/icu/util/Measure;)Ljava/lang/StringBuilder;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyFormat;->mf:Lcom/ibm/icu/text/MeasureFormat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Lcom/ibm/icu/util/Measure;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public getNumberFormat()Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyFormat;->mf:Lcom/ibm/icu/text/MeasureFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MeasureFormat;->getNumberFormat()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyFormat;->mf:Lcom/ibm/icu/text/MeasureFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MeasureFormat;->getWidth()Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/CurrencyAmount;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyFormat;->fmt:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/text/NumberFormat;->parseCurrency(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/CurrencyAmount;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/Measure;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/CurrencyFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/CurrencyAmount;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/CurrencyFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/CurrencyAmount;

    move-result-object p1

    return-object p1
.end method
