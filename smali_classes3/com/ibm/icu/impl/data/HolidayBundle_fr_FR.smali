.class public Lcom/ibm/icu/impl/data/HolidayBundle_fr_FR;
.super Ljava/util/ListResourceBundle;
.source ""


# static fields
.field private static final fContents:[[Ljava/lang/Object;

.field private static final fHolidays:[Lcom/ibm/icu/util/Holiday;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/ibm/icu/util/Holiday;

    .line 20
    sget-object v1, Lcom/ibm/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Lcom/ibm/icu/util/SimpleHoliday;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/ibm/icu/util/SimpleHoliday;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const-string v5, "Labor Day"

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/ibm/icu/util/SimpleHoliday;

    const/16 v5, 0x8

    const-string v6, "Victory Day"

    invoke-direct {v1, v3, v5, v2, v6}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v6, 0x2

    aput-object v1, v0, v6

    new-instance v1, Lcom/ibm/icu/util/SimpleHoliday;

    const/4 v7, 0x6

    const/16 v8, 0xe

    const-string v9, "Bastille Day"

    invoke-direct {v1, v7, v8, v2, v9}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    const/4 v8, 0x3

    aput-object v1, v0, v8

    sget-object v1, Lcom/ibm/icu/util/SimpleHoliday;->ASSUMPTION:Lcom/ibm/icu/util/SimpleHoliday;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/util/SimpleHoliday;->ALL_SAINTS_DAY:Lcom/ibm/icu/util/SimpleHoliday;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Lcom/ibm/icu/util/SimpleHoliday;

    const/16 v3, 0xb

    const/16 v8, 0xa

    const-string v9, "Armistice Day"

    invoke-direct {v1, v8, v3, v2, v9}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v1, v0, v7

    sget-object v1, Lcom/ibm/icu/util/SimpleHoliday;->CHRISTMAS:Lcom/ibm/icu/util/SimpleHoliday;

    const/4 v7, 0x7

    aput-object v1, v0, v7

    sget-object v1, Lcom/ibm/icu/util/EasterHoliday;->EASTER_SUNDAY:Lcom/ibm/icu/util/EasterHoliday;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ibm/icu/util/EasterHoliday;->EASTER_MONDAY:Lcom/ibm/icu/util/EasterHoliday;

    const/16 v5, 0x9

    aput-object v1, v0, v5

    sget-object v1, Lcom/ibm/icu/util/EasterHoliday;->ASCENSION:Lcom/ibm/icu/util/EasterHoliday;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ibm/icu/util/EasterHoliday;->WHIT_SUNDAY:Lcom/ibm/icu/util/EasterHoliday;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/util/EasterHoliday;->WHIT_MONDAY:Lcom/ibm/icu/util/EasterHoliday;

    const/16 v3, 0xc

    aput-object v1, v0, v3

    sput-object v0, Lcom/ibm/icu/impl/data/HolidayBundle_fr_FR;->fHolidays:[Lcom/ibm/icu/util/Holiday;

    new-array v0, v4, [[Ljava/lang/Object;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v3, "holidays"

    aput-object v3, v1, v2

    .line 37
    sget-object v3, Lcom/ibm/icu/impl/data/HolidayBundle_fr_FR;->fHolidays:[Lcom/ibm/icu/util/Holiday;

    aput-object v3, v1, v4

    aput-object v1, v0, v2

    sput-object v0, Lcom/ibm/icu/impl/data/HolidayBundle_fr_FR;->fContents:[[Ljava/lang/Object;

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
    sget-object v0, Lcom/ibm/icu/impl/data/HolidayBundle_fr_FR;->fContents:[[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
