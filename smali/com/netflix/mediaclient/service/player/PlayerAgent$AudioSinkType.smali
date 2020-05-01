.class final enum Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;
.super Ljava/lang/Enum;
.source "PlayerAgent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

.field public static final enum AUDIOSINK_BT:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

.field public static final enum AUDIOSINK_BUILTIN:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

.field public static final enum AUDIOSINK_DEAULT:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

.field public static final enum AUDIOSINK_DOCK:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

.field public static final enum AUDIOSINK_HEADPHONE:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

.field public static final enum AUDIOSINK_OTHERS:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

.field public static final enum AUDIOSINK_USB:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;


# instance fields
.field private mDecriptionString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    const-string/jumbo v1, "AUDIOSINK_BT"

    const-string/jumbo v2, "bluetooth"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->AUDIOSINK_BT:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    const-string/jumbo v1, "AUDIOSINK_BUILTIN"

    const-string/jumbo v2, "builtin"

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->AUDIOSINK_BUILTIN:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    const-string/jumbo v1, "AUDIOSINK_HEADPHONE"

    const-string/jumbo v2, "headphone"

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->AUDIOSINK_HEADPHONE:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    const-string/jumbo v1, "AUDIOSINK_DOCK"

    const-string/jumbo v2, "dock"

    invoke-direct {v0, v1, v7, v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->AUDIOSINK_DOCK:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    const-string/jumbo v1, "AUDIOSINK_USB"

    const-string/jumbo v2, "usb"

    invoke-direct {v0, v1, v8, v2}, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->AUDIOSINK_USB:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    const-string/jumbo v1, "AUDIOSINK_OTHERS"

    const/4 v2, 0x5

    const-string/jumbo v3, "others"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->AUDIOSINK_OTHERS:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    const-string/jumbo v1, "AUDIOSINK_DEAULT"

    const/4 v2, 0x6

    const-string/jumbo v3, "default"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->AUDIOSINK_DEAULT:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->AUDIOSINK_BT:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->AUDIOSINK_BUILTIN:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->AUDIOSINK_HEADPHONE:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->AUDIOSINK_DOCK:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->AUDIOSINK_USB:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->AUDIOSINK_OTHERS:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->AUDIOSINK_DEAULT:Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->$VALUES:[Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

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

    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->mDecriptionString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->$VALUES:[Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;

    return-object v0
.end method


# virtual methods
.method getDecriptionString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$AudioSinkType;->mDecriptionString:Ljava/lang/String;

    return-object v0
.end method
