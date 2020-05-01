.class Lo/KX$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/KX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/KX;


# direct methods
.method constructor <init>(Lo/KX;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lo/KX$5;->b:Lo/KX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 107
    iget-object p1, p0, Lo/KX$5;->b:Lo/KX;

    invoke-virtual {p1}, Lo/KX;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 108
    iget-object p1, p0, Lo/KX$5;->b:Lo/KX;

    invoke-static {p1}, Lo/KX;->e(Lo/KX;)Lo/Aw;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lo/adu;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 109
    iget-object p1, p0, Lo/KX$5;->b:Lo/KX;

    invoke-static {p1}, Lo/KX;->e(Lo/KX;)Lo/Aw;

    move-result-object v1

    invoke-static {p1, v1}, Lo/KX;->e(Lo/KX;Lo/Aw;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 112
    iget-object p1, p0, Lo/KX$5;->b:Lo/KX;

    invoke-static {p1}, Lo/KX;->e(Lo/KX;)Lo/Aw;

    move-result-object p1

    invoke-interface {p1}, Lo/Aw;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    iget-object p1, p0, Lo/KX$5;->b:Lo/KX;

    invoke-static {p1}, Lo/KX;->e(Lo/KX;)Lo/Aw;

    move-result-object p1

    invoke-interface {p1}, Lo/Aw;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lo/KX$5;->b:Lo/KX;

    invoke-static {p1}, Lo/KX;->e(Lo/KX;)Lo/Aw;

    move-result-object p1

    invoke-interface {p1}, Lo/Aw;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lo/KX$5;->b:Lo/KX;

    iget-object v4, p1, Lo/KX;->f:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const/4 v6, 0x0

    const-string v5, "BigRow"

    invoke-static/range {v0 .. v6}, Lo/Dw;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lo/KX$5;->b:Lo/KX;

    invoke-static {p1}, Lo/KX;->e(Lo/KX;)Lo/Aw;

    move-result-object p1

    iget-object v1, p0, Lo/KX$5;->b:Lo/KX;

    iget-object v1, v1, Lo/KX;->f:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const-string v2, "BigRow"

    invoke-static {v0, p1, v1, v2}, Lo/Dw;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AR;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
