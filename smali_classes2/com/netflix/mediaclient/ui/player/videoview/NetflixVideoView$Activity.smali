.class public final Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "NetflixVideoView"

    .line 260
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 260
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/res/TypedArray;I)Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;
    .locals 1

    .line 309
    sget v0, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->bc:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 313
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

    goto :goto_0

    .line 312
    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

    goto :goto_0

    .line 311
    :cond_1
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

    goto :goto_0

    .line 310
    :cond_2
    sget-object p1, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

    :goto_0
    return-object p1
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;Landroid/content/res/TypedArray;I)Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;
    .locals 0

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;->a(Landroid/content/res/TypedArray;I)Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$PlayerRepeatMode;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()J
    .locals 2

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
