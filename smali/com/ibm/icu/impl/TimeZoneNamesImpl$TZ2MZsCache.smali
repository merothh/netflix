.class Lcom/ibm/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;
.super Lcom/ibm/icu/impl/SoftCache;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TZ2MZsCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;",
        ">;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 851
    invoke-direct {p0}, Lcom/ibm/icu/impl/SoftCache;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/TimeZoneNamesImpl$1;)V
    .locals 0

    .line 851
    invoke-direct {p0}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;-><init>()V

    return-void
.end method

.method private static parseDate(Ljava/lang/String;)J
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    const/16 v4, 0xa

    if-gt v1, v3, :cond_1

    .line 903
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    if-ltz v3, :cond_0

    if-ge v3, v4, :cond_0

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 907
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad year"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v1, 0x5

    const/4 v3, 0x0

    :goto_1
    const/4 v5, 0x6

    if-gt v1, v5, :cond_3

    .line 912
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    if-ltz v5, :cond_2

    if-ge v5, v4, :cond_2

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 916
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad month"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/16 v1, 0x8

    const/4 v5, 0x0

    :goto_2
    const/16 v6, 0x9

    if-gt v1, v6, :cond_5

    .line 921
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    if-ltz v6, :cond_4

    if-ge v6, v4, :cond_4

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 925
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad day"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const/16 v1, 0xb

    const/4 v6, 0x0

    :goto_3
    const/16 v7, 0xc

    if-gt v1, v7, :cond_7

    .line 930
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    if-ltz v7, :cond_6

    if-ge v7, v4, :cond_6

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 934
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad hour"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const/16 v1, 0xe

    :goto_4
    const/16 v7, 0xf

    if-gt v1, v7, :cond_9

    .line 939
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    if-ltz v7, :cond_8

    if-ge v7, v4, :cond_8

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 943
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad minute"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    add-int/lit8 v3, v3, -0x1

    .line 947
    invoke-static {v2, v3, v5}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    mul-long v1, v1, v3

    int-to-long v3, v6

    const-wide/32 v5, 0x36ee80

    mul-long v3, v3, v5

    add-long/2addr v1, v3

    int-to-long v3, v0

    const-wide/32 v5, 0xea60

    mul-long v3, v3, v5

    add-long/2addr v1, v3

    return-wide v1
.end method


# virtual methods
.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 851
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->createInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected createInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;",
            ">;"
        }
    .end annotation

    const-string p1, "com/ibm/icu/impl/data/icudt59b"

    const-string v0, "metaZones"

    .line 859
    invoke-static {p1, v0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    const-string v0, "metazoneInfo"

    .line 860
    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    const/16 v0, 0x2f

    const/16 v1, 0x3a

    .line 862
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 864
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    .line 866
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 867
    :goto_0
    invoke-virtual {p1}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 868
    invoke-virtual {p1, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 869
    invoke-virtual {v2, v0}, Lcom/ibm/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v3, "1970-01-01 00:00"

    const-string v5, "9999-12-31 23:59"

    .line 872
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    const/4 v3, 0x1

    .line 873
    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    .line 874
    invoke-virtual {v2, v5}, Lcom/ibm/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 877
    :cond_0
    invoke-static {v3}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->parseDate(Ljava/lang/String;)J

    move-result-wide v6

    .line 878
    invoke-static {v5}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->parseDate(Ljava/lang/String;)J

    move-result-wide v8

    .line 879
    new-instance v2, Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;

    move-object v3, v2

    move-wide v5, v6

    move-wide v7, v8

    invoke-direct/range {v3 .. v8}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 883
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_1
    return-object p2
.end method
