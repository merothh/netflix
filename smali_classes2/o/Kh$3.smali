.class Lo/Kh$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Kh;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Kh;


# direct methods
.method constructor <init>(Lo/Kh;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lo/Kh$3;->e:Lo/Kh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 409
    iget-object p1, p0, Lo/Kh$3;->e:Lo/Kh;

    invoke-virtual {p1}, Lo/Kh;->isDetached()Z

    move-result p1

    if-nez p1, :cond_1

    .line 410
    iget-object p1, p0, Lo/Kh$3;->e:Lo/Kh;

    invoke-virtual {p1}, Lo/Kh;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    .line 411
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    if-eqz v0, :cond_0

    .line 413
    check-cast p1, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->g()V

    goto :goto_0

    .line 415
    :cond_0
    iget-object v0, p0, Lo/Kh$3;->e:Lo/Kh;

    sget-object v1, Lcom/netflix/cl/model/AppView;->browseTitlesGallery:Lcom/netflix/cl/model/AppView;

    const/4 v2, 0x0

    .line 416
    invoke-static {p1, v1, v2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object p1

    .line 415
    invoke-virtual {v0, p1}, Lo/Kh;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
