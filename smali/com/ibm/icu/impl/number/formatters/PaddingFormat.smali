.class public Lcom/ibm/icu/impl/number/formatters/PaddingFormat;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ibm/icu/impl/number/Format$AfterFormat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/formatters/PaddingFormat$IProperties;,
        Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;
    }
.end annotation


# instance fields
.field private final paddingLocation:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

.field private final paddingString:Ljava/lang/String;

.field private final paddingWidth:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    .line 127
    :goto_0
    iput p1, p0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat;->paddingWidth:I

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, " "

    .line 128
    :goto_1
    iput-object p2, p0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat;->paddingString:Ljava/lang/String;

    if-eqz p3, :cond_2

    goto :goto_2

    .line 129
    :cond_2
    sget-object p3, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;->BEFORE_PREFIX:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    :goto_2
    iput-object p3, p0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat;->paddingLocation:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    return-void
.end method

.method private addPadding(ILcom/ibm/icu/impl/number/NumberStringBuilder;I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat;->paddingString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2, p3, v1, v2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    iget-object p2, p0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat;->paddingString:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    mul-int p2, p2, p1

    return p2
.end method

.method public static getInstance(Lcom/ibm/icu/impl/number/formatters/PaddingFormat$IProperties;)Lcom/ibm/icu/impl/number/Format$AfterFormat;
    .locals 3

    .line 114
    new-instance v0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat;

    .line 115
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$IProperties;->getFormatWidth()I

    move-result v1

    .line 116
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$IProperties;->getPadString()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$IProperties;->getPadPosition()Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/ibm/icu/impl/number/formatters/PaddingFormat;-><init>(ILjava/lang/String;Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;)V

    return-object v0
.end method

.method public static usePadding(Lcom/ibm/icu/impl/number/formatters/PaddingFormat$IProperties;)Z
    .locals 0

    .line 110
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$IProperties;->getFormatWidth()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public after(Lcom/ibm/icu/impl/number/ModifierHolder;Lcom/ibm/icu/impl/number/NumberStringBuilder;II)I
    .locals 4

    .line 137
    iget v0, p0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat;->paddingWidth:I

    sub-int v1, p4, p3

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/ModifierHolder;->totalLength()I

    move-result v1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    .line 141
    invoke-virtual {p1, p2, p3, p4}, Lcom/ibm/icu/impl/number/ModifierHolder;->applyAll(Lcom/ibm/icu/impl/number/NumberStringBuilder;II)I

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x0

    .line 145
    iget-object v2, p0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat;->paddingLocation:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    sget-object v3, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;->AFTER_PREFIX:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    if-ne v2, v3, :cond_1

    .line 146
    invoke-direct {p0, v0, p2, p3}, Lcom/ibm/icu/impl/number/formatters/PaddingFormat;->addPadding(ILcom/ibm/icu/impl/number/NumberStringBuilder;I)I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    goto :goto_1

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat;->paddingLocation:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    sget-object v3, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;->BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    if-ne v2, v3, :cond_2

    .line 148
    invoke-direct {p0, v0, p2, p4}, Lcom/ibm/icu/impl/number/formatters/PaddingFormat;->addPadding(ILcom/ibm/icu/impl/number/NumberStringBuilder;I)I

    move-result v2

    goto :goto_0

    :cond_2
    :goto_1
    add-int v2, p4, v1

    .line 150
    invoke-virtual {p1, p2, p3, v2}, Lcom/ibm/icu/impl/number/ModifierHolder;->applyAll(Lcom/ibm/icu/impl/number/NumberStringBuilder;II)I

    move-result p1

    add-int/2addr v1, p1

    .line 151
    iget-object p1, p0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat;->paddingLocation:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    sget-object v2, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;->BEFORE_PREFIX:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    if-ne p1, v2, :cond_3

    .line 152
    invoke-direct {p0, v0, p2, p3}, Lcom/ibm/icu/impl/number/formatters/PaddingFormat;->addPadding(ILcom/ibm/icu/impl/number/NumberStringBuilder;I)I

    move-result p1

    :goto_2
    add-int/2addr v1, p1

    goto :goto_3

    .line 153
    :cond_3
    iget-object p1, p0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat;->paddingLocation:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    sget-object p3, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;->AFTER_SUFFIX:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    if-ne p1, p3, :cond_4

    add-int/2addr p4, v1

    .line 154
    invoke-direct {p0, v0, p2, p4}, Lcom/ibm/icu/impl/number/formatters/PaddingFormat;->addPadding(ILcom/ibm/icu/impl/number/NumberStringBuilder;I)I

    move-result p1

    goto :goto_2

    :cond_4
    :goto_3
    return v1
.end method

.method public export(Lcom/ibm/icu/impl/number/Properties;)V
    .locals 1

    .line 169
    iget v0, p0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat;->paddingWidth:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setFormatWidth(I)Lcom/ibm/icu/impl/number/Properties;

    .line 170
    iget-object v0, p0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat;->paddingString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setPadString(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    .line 171
    iget-object v0, p0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat;->paddingLocation:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/Properties;->setPadPosition(Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;)Lcom/ibm/icu/impl/number/Properties;

    return-void
.end method
