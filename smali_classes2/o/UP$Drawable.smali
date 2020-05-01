.class public final Lo/UP$Drawable;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Drawable"
.end annotation


# instance fields
.field private final d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V
    .locals 1

    const-string v0, "videoView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/UP$Drawable;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    return-void
.end method


# virtual methods
.method public final d()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;
    .locals 1

    .line 117
    iget-object v0, p0, Lo/UP$Drawable;->d:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    return-object v0
.end method
