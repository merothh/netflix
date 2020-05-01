.class public final enum Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayerRepeatMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

.field private static final synthetic b:[Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

.field public static final enum c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

.field public static final enum d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

    const/4 v2, 0x0

    const-string v3, "NONE"

    .line 465
    invoke-direct {v1, v3, v2, v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

    const/4 v2, 0x1

    const-string v3, "ONCE"

    .line 466
    invoke-direct {v1, v3, v2, v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

    const/4 v2, 0x2

    const-string v3, "ALL"

    .line 467
    invoke-direct {v1, v3, v2, v2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;->b:[Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 464
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;->b:[Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

    return-object v0
.end method
