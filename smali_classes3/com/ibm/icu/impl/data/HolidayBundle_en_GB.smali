.class public Lcom/ibm/icu/impl/data/HolidayBundle_en_GB;
.super Ljava/util/ListResourceBundle;
.source ""


# static fields
.field private static final fContents:[[Ljava/lang/Object;

.field private static final fHolidays:[Lcom/ibm/icu/util/Holiday;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/ibm/icu/util/Holiday;

    .line 21
    sget-object v1, Lcom/ibm/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Lcom/ibm/icu/util/SimpleHoliday;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/util/SimpleHoliday;->MAY_DAY:Lcom/ibm/icu/util/SimpleHoliday;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/ibm/icu/util/SimpleHoliday;

    const/4 v4, 0x4

    const/4 v5, -0x2

    const/16 v6, 0x1f

    const-string v7, "Spring Holiday"

    invoke-direct {v1, v4, v6, v5, v7}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v7, 0x2

    aput-object v1, v0, v7

    new-instance v1, Lcom/ibm/icu/util/SimpleHoliday;

    const/4 v8, 0x7

    const-string v9, "Summer Bank Holiday"

    invoke-direct {v1, v8, v6, v5, v9}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v9, 0x3

    aput-object v1, v0, v9

    sget-object v1, Lcom/ibm/icu/util/SimpleHoliday;->CHRISTMAS:Lcom/ibm/icu/util/SimpleHoliday;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu/util/SimpleHoliday;->BOXING_DAY:Lcom/ibm/icu/util/SimpleHoliday;

    const/4 v4, 0x5

    aput-object v1, v0, v4

    new-instance v1, Lcom/ibm/icu/util/SimpleHoliday;

    const/16 v4, 0xb

    const-string v9, "Christmas Holiday"

    invoke-direct {v1, v4, v6, v5, v9}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v4, 0x6

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu/util/EasterHoliday;->GOOD_FRIDAY:Lcom/ibm/icu/util/EasterHoliday;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ibm/icu/util/EasterHoliday;->EASTER_SUNDAY:Lcom/ibm/icu/util/EasterHoliday;

    const/16 v4, 0x8

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu/util/EasterHoliday;->EASTER_MONDAY:Lcom/ibm/icu/util/EasterHoliday;

    const/16 v4, 0x9

    aput-object v1, v0, v4

    sput-object v0, Lcom/ibm/icu/impl/data/HolidayBundle_en_GB;->fHolidays:[Lcom/ibm/icu/util/Holiday;

    new-array v0, v7, [[Ljava/lang/Object;

    new-array v1, v7, [Ljava/lang/Object;

    const-string v4, "holidays"

    aput-object v4, v1, v2

    .line 35
    sget-object v4, Lcom/ibm/icu/impl/data/HolidayBundle_en_GB;->fHolidays:[Lcom/ibm/icu/util/Holiday;

    aput-object v4, v1, v3

    aput-object v1, v0, v2

    new-array v1, v7, [Ljava/lang/Object;

    const-string v4, "Labor Day"

    aput-object v4, v1, v2

    const-string v2, "Labour Day"

    aput-object v2, v1, v3

    aput-object v1, v0, v3

    sput-object v0, Lcom/ibm/icu/impl/data/HolidayBundle_en_GB;->fContents:[[Ljava/lang/Object;

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

    .line 41
    :try_start_0
    sget-object v0, Lcom/ibm/icu/impl/data/HolidayBundle_en_GB;->fContents:[[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
