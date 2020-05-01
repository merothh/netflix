.class public final Lcom/ibm/icu/impl/DayPeriodRules;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesCountSink;,
        Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;,
        Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;,
        Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;,
        Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;
    }
.end annotation


# static fields
.field private static final DATA:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;


# instance fields
.field private dayPeriodForHour:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field private hasMidnight:Z

.field private hasNoon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 226
    invoke-static {}, Lcom/ibm/icu/impl/DayPeriodRules;->loadData()Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules;->DATA:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcom/ibm/icu/impl/DayPeriodRules;->hasMidnight:Z

    .line 234
    iput-boolean v0, p0, Lcom/ibm/icu/impl/DayPeriodRules;->hasNoon:Z

    const/16 v0, 0x18

    new-array v0, v0, [Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 235
    iput-object v0, p0, Lcom/ibm/icu/impl/DayPeriodRules;->dayPeriodForHour:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/DayPeriodRules$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/ibm/icu/impl/DayPeriodRules;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .locals 0

    .line 18
    invoke-static {p0}, Lcom/ibm/icu/impl/DayPeriodRules;->parseSetNum(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/ibm/icu/impl/DayPeriodRules;)[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/ibm/icu/impl/DayPeriodRules;->dayPeriodForHour:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    return-object p0
.end method

.method static synthetic access$502(Lcom/ibm/icu/impl/DayPeriodRules;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/ibm/icu/impl/DayPeriodRules;->hasMidnight:Z

    return p1
.end method

.method static synthetic access$602(Lcom/ibm/icu/impl/DayPeriodRules;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/ibm/icu/impl/DayPeriodRules;->hasNoon:Z

    return p1
.end method

.method static synthetic access$700(Lcom/ibm/icu/impl/DayPeriodRules;IILcom/ibm/icu/impl/DayPeriodRules$DayPeriod;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/DayPeriodRules;->add(IILcom/ibm/icu/impl/DayPeriodRules$DayPeriod;)V

    return-void
.end method

.method private add(IILcom/ibm/icu/impl/DayPeriodRules$DayPeriod;)V
    .locals 1

    :goto_0
    if-eq p1, p2, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/DayPeriodRules;->dayPeriodForHour:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aput-object p3, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getEndHourForDayPeriod(Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;)I
    .locals 4

    .line 330
    sget-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 331
    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NOON:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-ne p1, v0, :cond_1

    const/16 p1, 0xc

    return p1

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/DayPeriodRules;->dayPeriodForHour:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v1, v0, v1

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-ne v1, p1, :cond_3

    aget-object v0, v0, v2

    if-ne v0, p1, :cond_3

    :goto_0
    const/16 v0, 0x16

    if-gt v3, v0, :cond_5

    .line 336
    iget-object v0, p0, Lcom/ibm/icu/impl/DayPeriodRules;->dayPeriodForHour:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v0, v0, v3

    if-eq v0, p1, :cond_2

    return v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ltz v2, :cond_5

    .line 343
    iget-object v0, p0, Lcom/ibm/icu/impl/DayPeriodRules;->dayPeriodForHour:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v0, v0, v2

    if-ne v0, p1, :cond_4

    add-int/2addr v2, v3

    return v2

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 350
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/DayPeriodRules;
    .locals 3

    .line 245
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object p0

    .line 246
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "root"

    :cond_0
    const/4 v0, 0x0

    move-object v1, p0

    move-object p0, v0

    :cond_1
    if-nez p0, :cond_2

    .line 250
    sget-object p0, Lcom/ibm/icu/impl/DayPeriodRules;->DATA:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iget-object p0, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;->localesToRuleSetNumMap:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_2

    .line 252
    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    if-eqz p0, :cond_4

    .line 262
    sget-object v1, Lcom/ibm/icu/impl/DayPeriodRules;->DATA:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iget-object v1, v1, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;->rules:[Lcom/ibm/icu/impl/DayPeriodRules;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    if-nez v1, :cond_3

    goto :goto_0

    .line 267
    :cond_3
    sget-object v0, Lcom/ibm/icu/impl/DayPeriodRules;->DATA:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iget-object v0, v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;->rules:[Lcom/ibm/icu/impl/DayPeriodRules;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    :cond_4
    :goto_0
    return-object v0
.end method

.method private getStartHourForDayPeriod(Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;)I
    .locals 4

    .line 307
    sget-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 308
    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NOON:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-ne p1, v0, :cond_1

    const/16 p1, 0xc

    return p1

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/DayPeriodRules;->dayPeriodForHour:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v2, v0, v1

    const/16 v3, 0x17

    if-ne v2, p1, :cond_3

    aget-object v0, v0, v3

    if-ne v0, p1, :cond_3

    const/16 v0, 0x16

    :goto_0
    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    .line 313
    iget-object v2, p0, Lcom/ibm/icu/impl/DayPeriodRules;->dayPeriodForHour:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v2, v2, v0

    if-eq v2, p1, :cond_2

    add-int/2addr v0, v1

    return v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-gt v1, v3, :cond_5

    .line 319
    iget-object v0, p0, Lcom/ibm/icu/impl/DayPeriodRules;->dayPeriodForHour:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v0, v0, v1

    if-ne v0, p1, :cond_4

    return v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 326
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private static loadData()Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;
    .locals 6

    .line 289
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;-><init>(Lcom/ibm/icu/impl/DayPeriodRules$1;)V

    .line 290
    sget-object v2, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v3, 0x1

    const-string v4, "com/ibm/icu/impl/data/icudt59b"

    const-string v5, "dayPeriods"

    invoke-static {v4, v5, v2, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v2

    .line 296
    new-instance v4, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesCountSink;

    invoke-direct {v4, v0, v1}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesCountSink;-><init>(Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;Lcom/ibm/icu/impl/DayPeriodRules$1;)V

    const-string v5, "rules"

    .line 297
    invoke-virtual {v2, v5, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    .line 299
    iget v4, v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;->maxRuleSetNum:I

    add-int/2addr v4, v3

    new-array v3, v4, [Lcom/ibm/icu/impl/DayPeriodRules;

    iput-object v3, v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;->rules:[Lcom/ibm/icu/impl/DayPeriodRules;

    .line 300
    new-instance v3, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;

    invoke-direct {v3, v0, v1}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;-><init>(Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;Lcom/ibm/icu/impl/DayPeriodRules$1;)V

    const-string v1, ""

    .line 301
    invoke-virtual {v2, v1, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    return-object v0
.end method

.method private static parseSetNum(Ljava/lang/String;)I
    .locals 1

    const-string v0, "set"

    .line 367
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 371
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 372
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 368
    :cond_0
    new-instance p0, Lcom/ibm/icu/util/ICUException;

    const-string v0, "Set number should start with \"set\"."

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getDayPeriodForHour(I)Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/ibm/icu/impl/DayPeriodRules;->dayPeriodForHour:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getMidPointForDayPeriod(Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;)D
    .locals 5

    .line 271
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/DayPeriodRules;->getStartHourForDayPeriod(Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;)I

    move-result v0

    .line 272
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/DayPeriodRules;->getEndHourForDayPeriod(Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;)I

    move-result p1

    add-int v1, v0, p1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    if-le v0, p1, :cond_0

    const-wide/high16 v3, 0x4028000000000000L    # 12.0

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4038000000000000L    # 24.0

    cmpl-double p1, v1, v3

    if-ltz p1, :cond_0

    sub-double/2addr v1, v3

    :cond_0
    return-wide v1
.end method

.method public hasMidnight()Z
    .locals 1

    .line 354
    iget-boolean v0, p0, Lcom/ibm/icu/impl/DayPeriodRules;->hasMidnight:Z

    return v0
.end method

.method public hasNoon()Z
    .locals 1

    .line 355
    iget-boolean v0, p0, Lcom/ibm/icu/impl/DayPeriodRules;->hasNoon:Z

    return v0
.end method
