.class public Lcom/ibm/icu/impl/data/HolidayBundle_de_AT;
.super Ljava/util/ListResourceBundle;
.source ""


# static fields
.field private static final fContents:[[Ljava/lang/Object;

.field private static final fHolidays:[Lcom/ibm/icu/util/Holiday;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/ibm/icu/util/Holiday;

    .line 20
    sget-object v1, Lcom/ibm/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Lcom/ibm/icu/util/SimpleHoliday;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/util/SimpleHoliday;->EPIPHANY:Lcom/ibm/icu/util/SimpleHoliday;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/util/EasterHoliday;->GOOD_FRIDAY:Lcom/ibm/icu/util/EasterHoliday;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu/util/EasterHoliday;->EASTER_SUNDAY:Lcom/ibm/icu/util/EasterHoliday;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lcom/ibm/icu/util/EasterHoliday;->EASTER_MONDAY:Lcom/ibm/icu/util/EasterHoliday;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lcom/ibm/icu/util/EasterHoliday;->ASCENSION:Lcom/ibm/icu/util/EasterHoliday;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Lcom/ibm/icu/util/EasterHoliday;->WHIT_SUNDAY:Lcom/ibm/icu/util/EasterHoliday;

    const/4 v7, 0x6

    aput-object v1, v0, v7

    sget-object v1, Lcom/ibm/icu/util/EasterHoliday;->WHIT_MONDAY:Lcom/ibm/icu/util/EasterHoliday;

    const/4 v7, 0x7

    aput-object v1, v0, v7

    sget-object v1, Lcom/ibm/icu/util/EasterHoliday;->CORPUS_CHRISTI:Lcom/ibm/icu/util/EasterHoliday;

    const/16 v7, 0x8

    aput-object v1, v0, v7

    sget-object v1, Lcom/ibm/icu/util/SimpleHoliday;->ASSUMPTION:Lcom/ibm/icu/util/SimpleHoliday;

    const/16 v7, 0x9

    aput-object v1, v0, v7

    sget-object v1, Lcom/ibm/icu/util/SimpleHoliday;->ALL_SAINTS_DAY:Lcom/ibm/icu/util/SimpleHoliday;

    const/16 v8, 0xa

    aput-object v1, v0, v8

    sget-object v1, Lcom/ibm/icu/util/SimpleHoliday;->IMMACULATE_CONCEPTION:Lcom/ibm/icu/util/SimpleHoliday;

    const/16 v8, 0xb

    aput-object v1, v0, v8

    sget-object v1, Lcom/ibm/icu/util/SimpleHoliday;->CHRISTMAS:Lcom/ibm/icu/util/SimpleHoliday;

    const/16 v8, 0xc

    aput-object v1, v0, v8

    sget-object v1, Lcom/ibm/icu/util/SimpleHoliday;->ST_STEPHENS_DAY:Lcom/ibm/icu/util/SimpleHoliday;

    const/16 v8, 0xd

    aput-object v1, v0, v8

    new-instance v1, Lcom/ibm/icu/util/SimpleHoliday;

    const-string v8, "National Holiday"

    invoke-direct {v1, v6, v3, v2, v8}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/16 v6, 0xe

    aput-object v1, v0, v6

    new-instance v1, Lcom/ibm/icu/util/SimpleHoliday;

    const/16 v6, 0x1f

    const/4 v9, -0x2

    invoke-direct {v1, v7, v6, v9, v8}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/16 v6, 0xf

    aput-object v1, v0, v6

    sput-object v0, Lcom/ibm/icu/impl/data/HolidayBundle_de_AT;->fHolidays:[Lcom/ibm/icu/util/Holiday;

    new-array v0, v5, [[Ljava/lang/Object;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "holidays"

    aput-object v5, v1, v2

    .line 40
    sget-object v5, Lcom/ibm/icu/impl/data/HolidayBundle_de_AT;->fHolidays:[Lcom/ibm/icu/util/Holiday;

    aput-object v5, v1, v3

    aput-object v1, v0, v2

    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "Christmas"

    aput-object v5, v1, v2

    const-string v5, "Christtag"

    aput-object v5, v1, v3

    aput-object v1, v0, v3

    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "New Year\'s Day"

    aput-object v5, v1, v2

    const-string v2, "Neujahrstag"

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    sput-object v0, Lcom/ibm/icu/impl/data/HolidayBundle_de_AT;->fContents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getContents()[[Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    .line 48
    :try_start_0
    sget-object v0, Lcom/ibm/icu/impl/data/HolidayBundle_de_AT;->fContents:[[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
