.class public final enum Lcom/ibm/icu/text/TimeZoneFormat$TimeType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/TimeZoneFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/TimeZoneFormat$TimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

.field public static final enum DAYLIGHT:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

.field public static final enum STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

.field public static final enum UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 292
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    .line 297
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    const/4 v2, 0x1

    const-string v3, "STANDARD"

    invoke-direct {v0, v3, v2}, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    .line 302
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    const/4 v3, 0x2

    const-string v4, "DAYLIGHT"

    invoke-direct {v0, v4, v3}, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    .line 287
    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->$VALUES:[Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 287
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/TimeZoneFormat$TimeType;
    .locals 1

    .line 287
    const-class v0, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/TimeZoneFormat$TimeType;
    .locals 1

    .line 287
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->$VALUES:[Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    return-object v0
.end method
