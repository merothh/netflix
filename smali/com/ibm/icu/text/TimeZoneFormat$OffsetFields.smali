.class final enum Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/TimeZoneFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "OffsetFields"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

.field public static final enum H:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

.field public static final enum HM:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

.field public static final enum HMS:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1707
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    const/4 v1, 0x0

    const-string v2, "H"

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->H:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    const/4 v2, 0x1

    const-string v3, "HM"

    invoke-direct {v0, v3, v2}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HM:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    const/4 v3, 0x2

    const-string v4, "HMS"

    invoke-direct {v0, v4, v3}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HMS:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    .line 1706
    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->H:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    aput-object v4, v0, v1

    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HM:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HMS:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->$VALUES:[Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1706
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;
    .locals 1

    .line 1706
    const-class v0, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;
    .locals 1

    .line 1706
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->$VALUES:[Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    return-object v0
.end method
