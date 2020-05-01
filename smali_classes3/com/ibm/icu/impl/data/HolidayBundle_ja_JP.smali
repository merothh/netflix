.class public Lcom/ibm/icu/impl/data/HolidayBundle_ja_JP;
.super Ljava/util/ListResourceBundle;
.source ""


# static fields
.field private static final fContents:[[Ljava/lang/Object;

.field private static final fHolidays:[Lcom/ibm/icu/util/Holiday;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/ibm/icu/util/Holiday;

    .line 19
    new-instance v2, Lcom/ibm/icu/util/SimpleHoliday;

    const/4 v3, 0x0

    const/16 v4, 0xb

    const-string v5, "National Foundation Day"

    invoke-direct {v2, v0, v4, v3, v5}, Lcom/ibm/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v3

    sput-object v1, Lcom/ibm/icu/impl/data/HolidayBundle_ja_JP;->fHolidays:[Lcom/ibm/icu/util/Holiday;

    new-array v1, v0, [[Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "holidays"

    aput-object v4, v2, v3

    .line 22
    sget-object v4, Lcom/ibm/icu/impl/data/HolidayBundle_ja_JP;->fHolidays:[Lcom/ibm/icu/util/Holiday;

    aput-object v4, v2, v0

    aput-object v2, v1, v3

    sput-object v1, Lcom/ibm/icu/impl/data/HolidayBundle_ja_JP;->fContents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getContents()[[Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    .line 26
    :try_start_0
    sget-object v0, Lcom/ibm/icu/impl/data/HolidayBundle_ja_JP;->fContents:[[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
