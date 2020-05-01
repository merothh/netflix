.class public Lo/UD;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

.field private b:Landroid/graphics/Rect;

.field private c:Lo/Cj;

.field private d:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lo/UD;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    return-void
.end method


# virtual methods
.method public c(Lo/zJ;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 34
    iget-object p1, p0, Lo/UD;->c:Lo/Cj;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 35
    invoke-interface {p1, v0}, Lo/Cj;->setHDR10ColorOverride(Z)V

    :cond_0
    return-void
.end method

.method public d(Lo/zJ;)V
    .locals 2

    .line 19
    iget-object v0, p0, Lo/UD;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lo/UD;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->y()Landroid/view/ViewGroup;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 20
    iget-object v0, p0, Lo/UD;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->y()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lo/UD;->d:Landroid/view/ViewGroup;

    :cond_0
    if-eqz p1, :cond_1

    .line 22
    iget-object v0, p0, Lo/UD;->c:Lo/Cj;

    if-nez v0, :cond_1

    .line 23
    iget-object v0, p0, Lo/UD;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-interface {p1, v0}, Lo/zJ;->e(Landroid/view/ViewGroup;)Lo/Cj;

    move-result-object p1

    iput-object p1, p0, Lo/UD;->c:Lo/Cj;

    .line 25
    :cond_1
    iget-object p1, p0, Lo/UD;->c:Lo/Cj;

    if-eqz p1, :cond_3

    .line 26
    iget-object v0, p0, Lo/UD;->b:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 27
    invoke-interface {p1, v0}, Lo/Cj;->e(Landroid/graphics/Rect;)V

    .line 29
    :cond_2
    iget-object p1, p0, Lo/UD;->c:Lo/Cj;

    iget-object v0, p0, Lo/UD;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lo/UD;->a:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-interface {p1, v0, v1}, Lo/Cj;->setSubtitleDisplayArea(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    :cond_3
    return-void
.end method

.method public e(Landroid/graphics/Rect;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lo/UD;->c:Lo/Cj;

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0, p1}, Lo/Cj;->e(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 43
    :cond_0
    iput-object p1, p0, Lo/UD;->b:Landroid/graphics/Rect;

    :goto_0
    return-void
.end method
