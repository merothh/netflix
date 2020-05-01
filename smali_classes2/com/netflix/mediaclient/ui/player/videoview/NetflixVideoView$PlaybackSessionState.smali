.class public final enum Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "PlaybackSessionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

.field private static final synthetic b:[Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

.field public static final enum c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

.field public static final enum d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;


# instance fields
.field private e:I

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    const-string v2, "NOTREADY"

    const/4 v3, 0x0

    .line 1513
    invoke-direct {v1, v2, v3, v3, v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    const-string v2, "VIDEO_LOADED"

    const/4 v3, 0x1

    .line 1514
    invoke-direct {v1, v2, v3, v3, v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    const/4 v2, 0x2

    const-string v3, "READY"

    const-string v4, "PLAYER_READY"

    .line 1515
    invoke-direct {v1, v3, v2, v2, v4}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->b:[Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1512
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1527
    iput p3, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->e:I

    .line 1528
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->i:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->b:[Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;

    return-object v0
.end method


# virtual methods
.method public final d()Z
    .locals 3

    .line 1524
    iget v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlaybackSessionState;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
