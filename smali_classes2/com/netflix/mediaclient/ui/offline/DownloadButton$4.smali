.class Lcom/netflix/mediaclient/ui/offline/DownloadButton$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/DownloadButton;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/offline/DownloadButton;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$4;->d:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const-string p1, "download_button"

    const-string v0, "onAnimationEnd"

    .line 387
    invoke-static {p1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$4;->d:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d()Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->g:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    if-eq p1, v0, :cond_0

    .line 390
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$4;->d:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->a(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$4;->d:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->c(Lcom/netflix/mediaclient/ui/offline/DownloadButton;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 392
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$4;->d:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->a:Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    invoke-virtual {p1}, Lcom/netflix/android/widgetry/widget/tabs/BadgeView;->clearAnimation()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
