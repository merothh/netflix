.class final Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Application;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 436
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 437
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView$Application;->c:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setKeepScreenOn(Z)V

    return-void
.end method
