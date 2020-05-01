.class Lo/TC$23;
.super Lcom/netflix/mediaclient/ui/player/PictureInPictureManager$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TC;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/TC;


# direct methods
.method constructor <init>(Lo/TC;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lo/TC$23;->d:Lo/TC;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 2

    .line 550
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager$Activity;->c(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 552
    iget-object p1, p0, Lo/TC$23;->d:Lo/TC;

    iget-object p1, p1, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-eqz p1, :cond_0

    .line 553
    iget-object p1, p0, Lo/TC$23;->d:Lo/TC;

    iget-object p1, p1, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->an()V

    .line 555
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/NetflixApplication;->H()Lo/MimeTypeMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/MimeTypeMap;->d(Z)V

    goto :goto_0

    .line 557
    :cond_1
    iget-object p1, p0, Lo/TC$23;->d:Lo/TC;

    iget-object p1, p1, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    if-eqz p1, :cond_2

    .line 558
    iget-object p1, p0, Lo/TC$23;->d:Lo/TC;

    iget-object p1, p1, Lo/TC;->k:Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->setScreenBrightnessIfNeeded()V

    .line 560
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/NetflixApplication;->H()Lo/MimeTypeMap;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lo/MimeTypeMap;->d(Z)V

    .line 561
    iget-object p1, p0, Lo/TC$23;->d:Lo/TC;

    invoke-static {p1, v0}, Lo/TC;->b(Lo/TC;Z)Z

    :goto_0
    return-void
.end method
