.class public final enum Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;
.super Ljava/lang/Enum;
.source "BandwidthLogging.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;

.field public static final enum FROM_PLAYER:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;

.field public static final enum FROM_SETTINGS:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;


# instance fields
.field private value:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;

    const-string/jumbo v1, "FROM_SETTINGS"

    const-string/jumbo v2, "settings"

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;->FROM_SETTINGS:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;

    .line 54
    new-instance v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;

    const-string/jumbo v1, "FROM_PLAYER"

    const-string/jumbo v2, "player"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;->FROM_PLAYER:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;

    .line 55
    new-instance v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;

    const-string/jumbo v1, "UNKNOWN"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;->UNKNOWN:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;

    sget-object v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;->FROM_SETTINGS:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;->FROM_PLAYER:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;->UNKNOWN:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;->$VALUES:[Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;->value:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;
    .locals 5

    .prologue
    .line 61
    invoke-static {}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;->values()[Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 62
    iget-object v4, v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    :goto_1
    return-object v0

    .line 61
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 66
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;->UNKNOWN:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;->$VALUES:[Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$InvokeLocation;->value:Ljava/lang/String;

    return-object v0
.end method
