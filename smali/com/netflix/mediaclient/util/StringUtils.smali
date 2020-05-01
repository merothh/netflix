.class public final Lcom/netflix/mediaclient/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final DETAILS_TEXT_SPACER:Ljava/lang/String; = "   "

.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final HEX_CHAR:[C

.field public static final NULL_STRING_VALUE:Ljava/lang/String; = "null"

.field private static final PERCENTAGE_PATTERN:Ljava/util/regex/Pattern;

.field private static final PIXEL_PATTERN:Ljava/util/regex/Pattern;

.field public static final SPACE_SPLIT_REG_EXP:Ljava/lang/String; = " "

.field private static final STARTS_WITH_DIGIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "StringUtils"

.field public static final UTF_8:Ljava/lang/String; = "utf-8"

.field public static final WHITE_SPACE_SPLIT_REG_EXP:Ljava/lang/String; = "\\s+"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/netflix/mediaclient/util/StringUtils;->HEX_CHAR:[C

    .line 64
    const-string/jumbo v0, "^[0-9]+%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/util/StringUtils;->PERCENTAGE_PATTERN:Ljava/util/regex/Pattern;

    .line 65
    const-string/jumbo v0, "^[0-9]+px$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/util/StringUtils;->PIXEL_PATTERN:Ljava/util/regex/Pattern;

    .line 66
    const-string/jumbo v0, "^[0-9]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/util/StringUtils;->STARTS_WITH_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    return-void

    .line 59
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static buildUnencodedUrlParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "&"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static byteArrayToString([BLjava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1002
    const/4 v1, 0x0

    .line 1003
    if-eqz p0, :cond_0

    .line 1005
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    :goto_0
    return-object v0

    .line 1006
    :catch_0
    move-exception v0

    .line 1007
    const-string/jumbo v2, "StringUtils"

    const-string/jumbo v3, "byteArrayToString error"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static capitalizeFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 773
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/StringUtils;->capitalizeFirstLetter(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static capitalizeFirstLetter(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 785
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    :goto_0
    return-object p0

    .line 790
    :cond_0
    if-nez p1, :cond_1

    .line 791
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 794
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 795
    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 797
    const/4 v0, 0x1

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 798
    aget-char v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 797
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 801
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static createBoldLabeledText(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 393
    if-nez p0, :cond_0

    .line 394
    const-string/jumbo v0, ""

    .line 397
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/netflix/mediaclient/util/StringUtils;->createBoldLabeledText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public static createBoldLabeledText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 406
    if-eqz p0, :cond_0

    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    :cond_0
    const-string/jumbo v0, ""

    .line 416
    :goto_0
    return-object v0

    .line 410
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 411
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 413
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 414
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method public static createStringFromCollection(Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 968
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 969
    :cond_0
    const-string/jumbo v0, ""

    .line 978
    :goto_0
    return-object v0

    .line 972
    :cond_1
    const-string/jumbo v0, ", "

    .line 973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 974
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 975
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 976
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 978
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static decodeHtmlEntities(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 812
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    :goto_0
    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static escapeJsonChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 827
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 828
    :cond_0
    const-string/jumbo v0, ""

    .line 847
    :goto_0
    return-object v0

    .line 831
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 832
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x4

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 834
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 835
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 836
    sparse-switch v3, :sswitch_data_0

    .line 844
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 834
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 840
    :sswitch_0
    const/16 v4, 0x5c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 841
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 847
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 836
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public static extractNumberPair(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 614
    const-string/jumbo v0, "\\s+"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/StringUtils;->safeSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 615
    array-length v0, v1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 616
    new-instance v0, Landroid/util/Pair;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 618
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static extractTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 326
    if-eqz p0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    :cond_0
    new-array v0, v0, [Ljava/lang/String;

    .line 340
    :goto_0
    return-object v0

    .line 330
    :cond_1
    if-nez p1, :cond_2

    .line 331
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p0, v1, v0

    move-object v0, v1

    goto :goto_0

    .line 334
    :cond_2
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    .line 337
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 338
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    move v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 340
    goto :goto_0
.end method

.method public static generateTitleAndSubtitles(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 1045
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    :goto_0
    return-object p0

    .line 1048
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1049
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1050
    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x21

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object p0, v0

    .line 1051
    goto :goto_0
.end method

.method public static getAsPercentString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1028
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "tr"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1029
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ar"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1030
    :goto_1
    if-nez v1, :cond_0

    if-eqz v0, :cond_3

    .line 1031
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1033
    :goto_2
    return-object v0

    :cond_1
    move v0, v2

    .line 1028
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1029
    goto :goto_1

    .line 1033
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private static getBasicMovieInfoString(Landroid/content/Context;ILjava/lang/String;I)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 423
    if-nez p0, :cond_0

    .line 424
    const-string/jumbo v0, ""

    .line 453
    :goto_0
    return-object v0

    .line 427
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 428
    if-nez v0, :cond_1

    .line 429
    const-string/jumbo v0, ""

    goto :goto_0

    .line 432
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    const/16 v1, 0x200f

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->addMarkerForRtLocale(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    .line 435
    if-lez p1, :cond_2

    .line 436
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    :cond_2
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 442
    const/16 v1, 0x202a

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->addMarkerForRtLocale(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const/16 v1, 0x202b

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->addMarkerForRtLocale(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    .line 445
    const-string/jumbo v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :cond_3
    if-lez p3, :cond_4

    .line 449
    invoke-static {p3, p0}, Lcom/netflix/mediaclient/util/TimeUtils;->getFormattedTime(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 450
    invoke-static {v1}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->forceLayoutDirectionIfNeeded(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 453
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBasicMovieInfoString(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 508
    if-nez p0, :cond_0

    .line 509
    const-string/jumbo v0, ""

    .line 512
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getYear()I

    move-result v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getCertification()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/StringUtils;->getBasicMovieInfoString(Landroid/content/Context;ILjava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBasicMovieInfoString(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 457
    if-nez p0, :cond_0

    .line 458
    const-string/jumbo v0, ""

    .line 461
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getYear()I

    move-result v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getCertification()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/StringUtils;->getBasicMovieInfoString(Landroid/content/Context;ILjava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private static getBasicShowInfoString(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    const/16 v3, 0x200f

    .line 465
    if-nez p0, :cond_0

    .line 466
    const-string/jumbo v0, ""

    .line 494
    :goto_0
    return-object v0

    .line 469
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 470
    if-nez v0, :cond_1

    .line 471
    const-string/jumbo v0, ""

    goto :goto_0

    .line 474
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->addMarkerForRtLocale(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    .line 477
    if-lez p1, :cond_2

    .line 478
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    :cond_2
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 484
    const/16 v1, 0x202a

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->addMarkerForRtLocale(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    const/16 v1, 0x202b

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->addMarkerForRtLocale(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    .line 487
    const-string/jumbo v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_3
    invoke-static {p3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 491
    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->addMarkerForRtLocale(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBasicShowInfoString(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 499
    if-nez p0, :cond_0

    .line 500
    const-string/jumbo v0, ""

    .line 503
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getYear()I

    move-result v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCertification()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getNumSeasonsLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/util/StringUtils;->getBasicShowInfoString(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCsvCount(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 933
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 934
    const/4 v0, 0x0

    .line 937
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method public static getFileAsString(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 193
    .line 194
    const/4 v2, 0x0

    .line 195
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 198
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 201
    const/16 v0, 0x400

    :try_start_1
    new-array v0, v0, [B

    .line 202
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 203
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    :goto_1
    :try_start_2
    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v4, "Problem while trying to read file"

    invoke-direct {v2, v4, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    :catchall_0
    move-exception v0

    .line 212
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 213
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 215
    :goto_3
    throw v0

    .line 206
    :cond_0
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 207
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 212
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 213
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 218
    :goto_4
    return-object v0

    .line 214
    :catch_1
    move-exception v1

    goto :goto_3

    .line 211
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 208
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_1

    .line 214
    :catch_3
    move-exception v1

    goto :goto_4
.end method

.method public static getFilenameFromUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 522
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Empty uri string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_0
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 528
    if-lez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 529
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 530
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 531
    if-lez v1, :cond_1

    .line 532
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 541
    :cond_1
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 542
    const-string/jumbo v1, "StringUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Generating uri from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_2
    return-object v0

    .line 537
    :cond_3
    const-string/jumbo v0, "StringUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No filename found in URI - using hashcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPathFromUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 553
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Empty uri string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 558
    if-nez v0, :cond_1

    .line 559
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 560
    const-string/jumbo v1, "StringUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not parse uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", returning hash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getRawString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 163
    .line 164
    const/4 v1, 0x0

    .line 167
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 169
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 170
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    :goto_0
    return-object v2

    .line 171
    :catch_0
    move-exception v0

    .line 172
    :try_start_2
    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "Problem while trying to read raw"

    invoke-direct {v2, v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    :catchall_0
    move-exception v0

    .line 176
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 178
    :goto_1
    throw v0

    .line 177
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public static getRemoteDataAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 230
    .line 232
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 236
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 238
    const/16 v1, 0x1388

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 239
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 240
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 241
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 244
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 246
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 247
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v1

    .line 255
    :goto_1
    if-eqz v3, :cond_0

    .line 256
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 258
    :cond_0
    if-eqz v2, :cond_1

    .line 259
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 261
    :cond_1
    if-eqz v0, :cond_2

    instance-of v2, v0, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_2

    .line 263
    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 266
    :cond_2
    :goto_2
    throw v1

    .line 250
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 251
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 255
    if-eqz v3, :cond_4

    .line 256
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 258
    :cond_4
    if-eqz v2, :cond_5

    .line 259
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 261
    :cond_5
    if-eqz v0, :cond_6

    instance-of v2, v0, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_6

    .line 263
    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 268
    :cond_6
    :goto_3
    return-object v1

    .line 265
    :catch_0
    move-exception v0

    goto :goto_2

    .line 254
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_1

    .line 265
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public static getSubStringSafely(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 990
    if-nez p0, :cond_1

    .line 991
    const/4 p0, 0x0

    .line 997
    :cond_0
    :goto_0
    return-object p0

    .line 994
    :cond_1
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 995
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 296
    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 282
    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 289
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 275
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 888
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNumeric(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isNumeric(Ljava/lang/String;I)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 901
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 918
    :cond_0
    :goto_0
    return v1

    .line 905
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 906
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 907
    if-nez v0, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_3

    .line 908
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v2, :cond_0

    .line 906
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 914
    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-gez v4, :cond_2

    goto :goto_0

    :cond_4
    move v1, v2

    .line 918
    goto :goto_0
.end method

.method public static joinArray([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/StringUtils;->joinArray([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static joinArray([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 362
    if-eqz p0, :cond_0

    array-length v2, p0

    if-ge v2, v0, :cond_1

    .line 363
    :cond_0
    const-string/jumbo v0, ""

    .line 386
    :goto_0
    return-object v0

    .line 366
    :cond_1
    if-nez p1, :cond_2

    .line 367
    const-string/jumbo p1, ","

    .line 371
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    array-length v4, p0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v5, p0, v2

    .line 374
    if-nez v5, :cond_3

    .line 372
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 378
    :cond_3
    if-eqz v0, :cond_4

    move v0, v1

    .line 383
    :goto_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 381
    :cond_4
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 386
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static modifyByEsnRules(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x3d

    .line 862
    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 863
    :cond_0
    const-string/jumbo v0, ""

    .line 877
    :goto_0
    return-object v0

    .line 866
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 867
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 869
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 870
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 871
    const/16 v4, 0x41

    if-lt v3, v4, :cond_2

    const/16 v4, 0x5a

    if-le v3, v4, :cond_4

    :cond_2
    const/16 v4, 0x30

    if-lt v3, v4, :cond_3

    const/16 v4, 0x39

    if-le v3, v4, :cond_4

    :cond_3
    const/16 v4, 0x2d

    if-eq v3, v4, :cond_4

    if-ne v3, v5, :cond_5

    .line 872
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 869
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 874
    :cond_5
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 877
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static modifyUrlHandling(Landroid/text/Spannable;)Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 951
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {p0, v1, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 953
    array-length v3, v0

    if-ge v3, v2, :cond_0

    move v0, v1

    .line 964
    :goto_0
    return v0

    .line 957
    :cond_0
    array-length v4, v0

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 958
    invoke-interface {p0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 959
    invoke-interface {p0, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 960
    invoke-interface {p0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 961
    new-instance v8, Lcom/netflix/mediaclient/android/widget/InternalURLSpan;

    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Lcom/netflix/mediaclient/android/widget/InternalURLSpan;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v8, v6, v7, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 957
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 964
    goto :goto_0
.end method

.method public static notEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    :goto_0
    return-object p1

    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static notEmptyAndEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1014
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    const/4 v0, 0x0

    .line 1017
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static notNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " can not be null!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    return-object p1
.end method

.method public static replaceWhiteSpace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/util/StringUtils;->replaceWhiteSpace(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceWhiteSpace(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    if-nez p0, :cond_0

    .line 130
    const-string/jumbo v0, ""

    .line 136
    :goto_0
    return-object v0

    .line 133
    :cond_0
    if-eqz p2, :cond_1

    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\s"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_1
    const-string/jumbo v0, "\\s"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static safeEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 571
    if-nez p0, :cond_1

    .line 572
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 575
    :goto_0
    return v0

    .line 572
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 575
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static safeGetClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 922
    if-nez p0, :cond_0

    .line 923
    const-string/jumbo v0, "null object"

    .line 925
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static safeParsePercentage(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 631
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-object v0

    .line 637
    :cond_1
    :try_start_0
    sget-object v1, Lcom/netflix/mediaclient/util/StringUtils;->PERCENTAGE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 638
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 641
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "%"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 642
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 644
    :catch_0
    move-exception v1

    .line 645
    const-string/jumbo v2, "StringUtils"

    const-string/jumbo v3, "Failed to parse percentage "

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static safeParsePercentage(Ljava/lang/String;IIZ)Ljava/lang/Integer;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 662
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->safeParsePercentage(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 663
    if-nez v0, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-object v0

    .line 667
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, p1, :cond_3

    .line 668
    if-eqz p3, :cond_2

    move-object v0, v1

    .line 669
    goto :goto_0

    .line 671
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 675
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, p2, :cond_0

    .line 676
    if-eqz p3, :cond_4

    move-object v0, v1

    .line 677
    goto :goto_0

    .line 679
    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static safeParsePixelSize(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 694
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 711
    :cond_0
    :goto_0
    return-object v0

    .line 700
    :cond_1
    :try_start_0
    sget-object v1, Lcom/netflix/mediaclient/util/StringUtils;->PIXEL_PATTERN:Ljava/util/regex/Pattern;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 701
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 704
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "px"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 705
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 707
    :catch_0
    move-exception v1

    .line 708
    const-string/jumbo v2, "StringUtils"

    const-string/jumbo v3, "Failed to parse pixel size "

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static safeParsePixelSize(Ljava/lang/String;IIZ)Ljava/lang/Integer;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 725
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->safeParsePixelSize(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 726
    if-nez v0, :cond_1

    .line 746
    :cond_0
    :goto_0
    return-object v0

    .line 730
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, p1, :cond_3

    .line 731
    if-eqz p3, :cond_2

    move-object v0, v1

    .line 732
    goto :goto_0

    .line 734
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 738
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, p2, :cond_0

    .line 739
    if-eqz p3, :cond_4

    move-object v0, v1

    .line 740
    goto :goto_0

    .line 742
    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static safeSplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 599
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 602
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static startsWithDigit(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 757
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    const/4 v0, 0x0

    .line 762
    :goto_0
    return v0

    .line 761
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/util/StringUtils;->STARTS_WITH_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 762
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    goto :goto_0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 99
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [C

    .line 100
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    .line 101
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 102
    mul-int/lit8 v3, v0, 0x2

    sget-object v4, Lcom/netflix/mediaclient/util/StringUtils;->HEX_CHAR:[C

    shr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 103
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/netflix/mediaclient/util/StringUtils;->HEX_CHAR:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v1, v3

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static toUnicode(C)Ljava/lang/String;
    .locals 4

    .prologue
    .line 851
    const-string/jumbo v0, "\\u%04x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 148
    if-nez p0, :cond_0

    .line 149
    const-string/jumbo v0, ""

    .line 151
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\s+"

    const-string/jumbo v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
