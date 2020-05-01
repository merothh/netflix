.class Lcom/netflix/mediaclient/ui/player/PictureInPictureManager$3;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->e(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager$3;->d:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_3

    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "media_control"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string v0, "control_type"

    .line 178
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 184
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager$3;->d:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->d(Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;)Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->a()V

    goto :goto_0

    .line 181
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager$3;->d:Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;->d(Lcom/netflix/mediaclient/ui/player/PictureInPictureManager;)Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->j()V

    :cond_3
    :goto_0
    return-void
.end method
