.class Lcom/ibm/icu/util/Calendar$WeekDataCache;
.super Lcom/ibm/icu/impl/SoftCache;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WeekDataCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Lcom/ibm/icu/util/Calendar$WeekData;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4878
    invoke-direct {p0}, Lcom/ibm/icu/impl/SoftCache;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/util/Calendar$1;)V
    .locals 0

    .line 4878
    invoke-direct {p0}, Lcom/ibm/icu/util/Calendar$WeekDataCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/Calendar$WeekData;
    .locals 0

    .line 4885
    invoke-static {p1}, Lcom/ibm/icu/util/Calendar;->access$1300(Ljava/lang/String;)Lcom/ibm/icu/util/Calendar$WeekData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4878
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/Calendar$WeekDataCache;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/Calendar$WeekData;

    move-result-object p1

    return-object p1
.end method
