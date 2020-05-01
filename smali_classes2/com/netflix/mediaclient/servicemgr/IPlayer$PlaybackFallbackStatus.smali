.class public final enum Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/servicemgr/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaybackFallbackStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

.field public static final enum c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

.field public static final enum d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

.field private static final synthetic e:[Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 171
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    const/4 v1, 0x0

    const-string v2, "NO_FALLBACK"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    .line 172
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    const/4 v2, 0x1

    const-string v3, "FALLBACK_AVAILABLE"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    .line 173
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    const/4 v3, 0x2

    const-string v4, "FALLBACK_PENDING"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    .line 170
    sget-object v4, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;->e:[Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;
    .locals 1

    .line 170
    const-class v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;
    .locals 1

    .line 170
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;->e:[Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    return-object v0
.end method
