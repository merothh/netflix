.class Lo/Oq$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zT;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Oq;->createManagerStatusListener()Lo/zT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Oq;


# direct methods
.method constructor <init>(Lo/Oq;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lo/Oq$5;->a:Lo/Oq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 101
    invoke-static {}, Lo/Oq;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Manager is here!"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lo/Oq$5;->a:Lo/Oq;

    invoke-virtual {v0}, Lo/Oq;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/zT;

    invoke-interface {v0, p1, p2}, Lo/zT;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 103
    iget-object p1, p0, Lo/Oq$5;->a:Lo/Oq;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lo/Oq;->e(Lo/Oq;Z)Z

    .line 105
    iget-object p1, p0, Lo/Oq$5;->a:Lo/Oq;

    invoke-static {p1}, Lo/Oq;->d(Lo/Oq;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 106
    iget-object p1, p0, Lo/Oq$5;->a:Lo/Oq;

    invoke-static {p1, p2}, Lo/Oq;->b(Lo/Oq;Z)Z

    .line 107
    iget-object p1, p0, Lo/Oq$5;->a:Lo/Oq;

    invoke-virtual {p1}, Lo/Oq;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lo/aeb;->c(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 113
    invoke-static {}, Lo/Oq;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Manager isn\'t available!"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lo/Oq$5;->a:Lo/Oq;

    invoke-virtual {v0}, Lo/Oq;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/zT;

    invoke-interface {v0, p1, p2}, Lo/zT;->onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
