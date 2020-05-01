.class final Lo/Yz$Dialog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Yz;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Yz;


# direct methods
.method constructor <init>(Lo/Yz;)V
    .locals 0

    iput-object p1, p0, Lo/Yz$Dialog;->b:Lo/Yz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 258
    iget-object p1, p0, Lo/Yz$Dialog;->b:Lo/Yz;

    sget-object v0, Lo/YB$Fragment;->e:Lo/YB$Fragment;

    invoke-virtual {p1, v0}, Lo/Yz;->e(Ljava/lang/Object;)V

    .line 259
    iget-object p1, p0, Lo/Yz$Dialog;->b:Lo/Yz;

    invoke-virtual {p1}, Lo/Yz;->y()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p1, :cond_2

    .line 260
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 261
    iget-object v0, p0, Lo/Yz$Dialog;->b:Lo/Yz;

    invoke-virtual {v0}, Lo/Yz;->f()Lo/Yn;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lo/Yn;->a()Lo/Bc;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 262
    invoke-interface {v0}, Lo/Bc;->bb()Lo/AK;

    move-result-object v0

    iget-object v1, p0, Lo/Yz$Dialog;->b:Lo/Yz;

    invoke-virtual {v1}, Lo/Yz;->f()Lo/Yn;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/Yn;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lo/Yz$Dialog;->b:Lo/Yz;

    invoke-virtual {v3}, Lo/Yz;->f()Lo/Yn;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lo/Yn;->f()Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object v2

    :cond_1
    check-cast v2, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-static {p1, v0, v1, v2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 265
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->e:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    if-ne p1, v0, :cond_2

    .line 266
    iget-object p1, p0, Lo/Yz$Dialog;->b:Lo/Yz;

    invoke-static {p1}, Lo/Yz;->e(Lo/Yz;)Lo/alB;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lo/alB;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/akj;

    :cond_2
    return-void
.end method
