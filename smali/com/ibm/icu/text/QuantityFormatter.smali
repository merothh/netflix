.class Lcom/ibm/icu/text/QuantityFormatter;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final templates:[Lcom/ibm/icu/text/SimpleFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget v0, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    new-array v0, v0, [Lcom/ibm/icu/text/SimpleFormatter;

    iput-object v0, p0, Lcom/ibm/icu/text/QuantityFormatter;->templates:[Lcom/ibm/icu/text/SimpleFormatter;

    return-void
.end method

.method public static format(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 128
    invoke-static {p0, p2, v1, v0}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p0

    if-eqz p0, :cond_2

    .line 130
    :cond_0
    aget p0, v1, v2

    if-ltz p0, :cond_1

    .line 131
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p0

    aget p1, v1, v2

    add-int/2addr p0, p1

    invoke-virtual {p3, p0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 132
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p0

    aget p1, v1, v2

    add-int/2addr p0, p1

    invoke-virtual {p3, p0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p3, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 135
    invoke-virtual {p3, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_2
    :goto_0
    return-object p2
.end method

.method public static selectPlural(Ljava/lang/Number;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/text/PluralRules;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Lcom/ibm/icu/impl/StandardPlural;
    .locals 9

    .line 110
    new-instance v0, Lcom/ibm/icu/text/UFieldPosition;

    invoke-virtual {p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v1

    invoke-virtual {p4}, Ljava/text/FieldPosition;->getField()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/UFieldPosition;-><init>(Ljava/text/Format$Field;I)V

    .line 111
    invoke-virtual {p1, p0, p3, v0}, Lcom/ibm/icu/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 113
    new-instance p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    .line 114
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 115
    invoke-virtual {v0}, Lcom/ibm/icu/text/UFieldPosition;->getCountVisibleFractionDigits()I

    move-result v6

    invoke-virtual {v0}, Lcom/ibm/icu/text/UFieldPosition;->getFractionDigits()J

    move-result-wide v7

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    .line 116
    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/PluralRules;->select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p0

    .line 117
    invoke-virtual {v0}, Lcom/ibm/icu/text/UFieldPosition;->getBeginIndex()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 118
    invoke-virtual {v0}, Lcom/ibm/icu/text/UFieldPosition;->getEndIndex()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 119
    invoke-static {p0}, Lcom/ibm/icu/impl/StandardPlural;->orOtherFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object p0

    return-object p0
.end method
