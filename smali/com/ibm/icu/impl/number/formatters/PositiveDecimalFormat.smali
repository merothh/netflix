.class public Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ibm/icu/impl/number/Format$TargetFormat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat$IProperties;
    }
.end annotation


# instance fields
.field private final alwaysShowDecimal:Z

.field private final codePointZero:I

.field private final decimalSeparator:Ljava/lang/String;

.field private final digitStrings:[Ljava/lang/String;

.field private final groupingSeparator:Ljava/lang/String;

.field private final infinityString:Ljava/lang/String;

.field private final minimumGroupingDigits:I

.field private final nanString:Ljava/lang/String;

.field private final primaryGroupingSize:I

.field private final secondaryGroupingSize:I


# direct methods
.method public constructor <init>(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat$IProperties;)V
    .locals 7

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-interface {p2}, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat$IProperties;->getGroupingSize()I

    move-result v0

    .line 109
    invoke-interface {p2}, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat$IProperties;->getSecondaryGroupingSize()I

    move-result v1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 110
    :goto_0
    iput v0, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->primaryGroupingSize:I

    if-lez v1, :cond_2

    goto :goto_1

    .line 111
    :cond_2
    iget v1, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->primaryGroupingSize:I

    :goto_1
    iput v1, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->secondaryGroupingSize:I

    .line 113
    invoke-interface {p2}, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat$IProperties;->getMinimumGroupingDigits()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->minimumGroupingDigits:I

    .line 114
    invoke-interface {p2}, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat$IProperties;->getDecimalSeparatorAlwaysShown()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->alwaysShowDecimal:Z

    .line 115
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->infinityString:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->nanString:Ljava/lang/String;

    .line 118
    invoke-static {p2}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat;->useCurrency(Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 119
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMonetaryGroupingSeparatorString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->groupingSeparator:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparatorString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->decimalSeparator:Ljava/lang/String;

    goto :goto_2

    .line 122
    :cond_3
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getGroupingSeparatorString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->groupingSeparator:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDecimalSeparatorString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->decimalSeparator:Ljava/lang/String;

    .line 128
    :goto_2
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 129
    :goto_3
    array-length v4, p2

    if-ge v1, v4, :cond_7

    .line 130
    aget-object v4, p2, v1

    invoke-static {v4, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 131
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    .line 132
    aget-object v6, p2, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_4

    :goto_4
    const/4 v3, -0x1

    goto :goto_6

    :cond_4
    if-nez v1, :cond_5

    move v3, v4

    goto :goto_5

    :cond_5
    add-int v5, v3, v1

    if-eq v4, v5, :cond_6

    goto :goto_4

    :cond_6
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    :goto_6
    if-eq v3, v0, :cond_8

    const/4 p1, 0x0

    .line 143
    iput-object p1, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->digitStrings:[Ljava/lang/String;

    .line 144
    iput v3, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->codePointZero:I

    goto :goto_7

    .line 146
    :cond_8
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->digitStrings:[Ljava/lang/String;

    .line 147
    iput v0, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->codePointZero:I

    :goto_7
    return-void
.end method

.method private addDigit(BLcom/ibm/icu/impl/number/NumberStringBuilder;ILcom/ibm/icu/text/NumberFormat$Field;)I
    .locals 2

    .line 216
    iget v0, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->codePointZero:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/2addr v0, p1

    .line 217
    invoke-virtual {p2, p3, v0, p4}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insertCodePoint(IILcom/ibm/icu/text/NumberFormat$Field;)I

    move-result p1

    return p1

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->digitStrings:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p2, p3, p1, p4}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    move-result p1

    return p1
.end method

.method private addFractionDigits(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/NumberStringBuilder;I)I
    .locals 6

    .line 206
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/FormatQuantity;->getLowerDisplayMagnitude()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    neg-int v3, v1

    add-int/lit8 v3, v3, -0x1

    .line 209
    invoke-interface {p1, v3}, Lcom/ibm/icu/impl/number/FormatQuantity;->getDigit(I)B

    move-result v3

    add-int v4, p3, v2

    .line 210
    sget-object v5, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-direct {p0, v3, p2, v4, v5}, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->addDigit(BLcom/ibm/icu/impl/number/NumberStringBuilder;ILcom/ibm/icu/text/NumberFormat$Field;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private addIntegerDigits(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/NumberStringBuilder;I)I
    .locals 5

    .line 181
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/FormatQuantity;->getUpperDisplayMagnitude()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 184
    iget v3, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->primaryGroupingSize:I

    if-lez v3, :cond_0

    if-ne v1, v3, :cond_0

    sub-int v3, v0, v1

    iget v4, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->minimumGroupingDigits:I

    if-lt v3, v4, :cond_0

    .line 187
    iget-object v3, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->groupingSeparator:Ljava/lang/String;

    sget-object v4, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 188
    invoke-virtual {p2, p3, v3, v4}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    goto :goto_2

    .line 189
    :cond_0
    iget v3, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->secondaryGroupingSize:I

    if-lez v3, :cond_1

    iget v4, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->primaryGroupingSize:I

    if-le v1, v4, :cond_1

    sub-int v4, v1, v4

    rem-int/2addr v4, v3

    if-nez v4, :cond_1

    .line 192
    iget-object v3, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->groupingSeparator:Ljava/lang/String;

    sget-object v4, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 193
    invoke-virtual {p2, p3, v3, v4}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    move-result v3

    goto :goto_1

    .line 197
    :cond_1
    :goto_2
    invoke-interface {p1, v1}, Lcom/ibm/icu/impl/number/FormatQuantity;->getDigit(I)B

    move-result v3

    .line 198
    sget-object v4, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-direct {p0, v3, p2, p3, v4}, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->addDigit(BLcom/ibm/icu/impl/number/NumberStringBuilder;ILcom/ibm/icu/text/NumberFormat$Field;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static allowsDecimalPoint(Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat$IProperties;)Z
    .locals 1

    .line 89
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat$IProperties;->getDecimalSeparatorAlwaysShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat$IProperties;->getMaximumFractionDigits()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public export(Lcom/ibm/icu/impl/number/Properties;)V
    .locals 2

    .line 226
    iget v0, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->secondaryGroupingSize:I

    iget v1, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->primaryGroupingSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 229
    :cond_0
    iget-boolean v1, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->alwaysShowDecimal:Z

    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/number/Properties;->setDecimalSeparatorAlwaysShown(Z)Lcom/ibm/icu/impl/number/Properties;

    .line 230
    iget v1, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->primaryGroupingSize:I

    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/number/Properties;->setGroupingSize(I)Lcom/ibm/icu/impl/number/Properties;

    .line 231
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setSecondaryGroupingSize(I)Lcom/ibm/icu/impl/number/Properties;

    .line 232
    iget v0, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->minimumGroupingDigits:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setMinimumGroupingDigits(I)Lcom/ibm/icu/impl/number/Properties;

    return-void
.end method

.method public target(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/NumberStringBuilder;I)I
    .locals 4

    .line 155
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/FormatQuantity;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object p1, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->infinityString:Ljava/lang/String;

    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p2, p3, p1, v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, 0x0

    goto :goto_1

    .line 158
    :cond_0
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/FormatQuantity;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object p1, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->nanString:Ljava/lang/String;

    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p2, p3, p1, v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    move-result p1

    goto :goto_0

    .line 163
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->addIntegerDigits(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/NumberStringBuilder;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 166
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/FormatQuantity;->getLowerDisplayMagnitude()I

    move-result v1

    if-ltz v1, :cond_2

    iget-boolean v1, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->alwaysShowDecimal:Z

    if-eqz v1, :cond_3

    :cond_2
    add-int v1, p3, v0

    .line 167
    iget-object v2, p0, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->decimalSeparator:Ljava/lang/String;

    sget-object v3, Lcom/ibm/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 168
    invoke-virtual {p2, v1, v2, v3}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    add-int/2addr p3, v0

    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat;->addFractionDigits(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/NumberStringBuilder;I)I

    move-result p1

    add-int/2addr p1, v0

    :goto_1
    return p1
.end method
