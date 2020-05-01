.class public final enum Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PriceDuration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

.field public static final enum MONTHS:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MONTHS"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

.field public static final enum WEEKS:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "WEEKS"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 46
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

    const/4 v1, 0x0

    const-string v2, "MONTHS"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;->MONTHS:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

    .line 47
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

    const/4 v2, 0x1

    const-string v3, "WEEKS"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;->WEEKS:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

    .line 48
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

    const/4 v3, 0x2

    const-string v4, "UNKNOWN"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;->UNKNOWN:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

    .line 45
    sget-object v4, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;->MONTHS:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;->WEEKS:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;->UNKNOWN:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;->$VALUES:[Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;
    .locals 1

    .line 45
    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;
    .locals 1

    .line 45
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;->$VALUES:[Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PriceDuration;

    return-object v0
.end method
