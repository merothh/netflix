.class Lcom/ibm/icu/impl/ZoneMeta$CustomTimeZoneCache;
.super Lcom/ibm/icu/impl/SoftCache;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ZoneMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomTimeZoneCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/impl/SoftCache<",
        "Ljava/lang/Integer;",
        "Lcom/ibm/icu/util/SimpleTimeZone;",
        "[I>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 588
    const-class v0, Lcom/ibm/icu/impl/ZoneMeta;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 588
    invoke-direct {p0}, Lcom/ibm/icu/impl/SoftCache;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/ZoneMeta$1;)V
    .locals 0

    .line 588
    invoke-direct {p0}, Lcom/ibm/icu/impl/ZoneMeta$CustomTimeZoneCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/Integer;[I)Lcom/ibm/icu/util/SimpleTimeZone;
    .locals 7

    const/4 p1, 0x1

    .line 600
    aget v0, p2, p1

    const/4 v1, 0x2

    aget v2, p2, v1

    const/4 v3, 0x3

    aget v4, p2, v3

    const/4 v5, 0x0

    aget v6, p2, v5

    if-gez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-static {v0, v2, v4, v6}, Lcom/ibm/icu/impl/ZoneMeta;->formatCustomID(IIIZ)Ljava/lang/String;

    move-result-object v0

    .line 601
    aget v2, p2, v5

    aget p1, p2, p1

    mul-int/lit8 p1, p1, 0x3c

    aget v1, p2, v1

    add-int/2addr p1, v1

    mul-int/lit8 p1, p1, 0x3c

    aget p2, p2, v3

    add-int/2addr p1, p2

    mul-int v2, v2, p1

    mul-int/lit16 v2, v2, 0x3e8

    .line 602
    new-instance p1, Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-direct {p1, v2, v0}, Lcom/ibm/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 603
    invoke-virtual {p1}, Lcom/ibm/icu/util/SimpleTimeZone;->freeze()Lcom/ibm/icu/util/TimeZone;

    return-object p1
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 588
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ZoneMeta$CustomTimeZoneCache;->createInstance(Ljava/lang/Integer;[I)Lcom/ibm/icu/util/SimpleTimeZone;

    move-result-object p1

    return-object p1
.end method
