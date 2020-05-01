.class public final enum Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;
.super Ljava/lang/Enum;
.source "BandwidthLogging.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;

.field public static final enum DATA_SAVING:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;

.field public static final enum HD_PLAYBACK:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;


# instance fields
.field private value:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;

    const-string/jumbo v1, "DATA_SAVING"

    const-string/jumbo v2, "enableDataSaving"

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;->DATA_SAVING:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;

    new-instance v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;

    const-string/jumbo v1, "HD_PLAYBACK"

    const-string/jumbo v2, "enableHDPlayback"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;->HD_PLAYBACK:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;

    new-instance v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;

    const-string/jumbo v1, "UNKNOWN"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;->UNKNOWN:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;

    sget-object v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;->DATA_SAVING:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;->HD_PLAYBACK:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;->UNKNOWN:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;->$VALUES:[Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;->$VALUES:[Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthLogging$SettingType;->value:Ljava/lang/String;

    return-object v0
.end method
