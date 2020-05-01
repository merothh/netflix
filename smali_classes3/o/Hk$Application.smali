.class final Lo/Hk$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Hk;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Hk;


# direct methods
.method constructor <init>(Lo/Hk;)V
    .locals 0

    iput-object p1, p0, Lo/Hk$Application;->c:Lo/Hk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 19
    iget-object v0, p0, Lo/Hk$Application;->c:Lo/Hk;

    invoke-virtual {v0}, Lo/Hk;->m()Lo/GW;

    move-result-object v0

    invoke-virtual {v0}, Lo/GW;->e()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "clickedView"

    .line 20
    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 42
    invoke-static {p1}, Lo/TagTechnology;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v1}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 43
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 23
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->h()Lo/agg;

    move-result-object v0

    check-cast v0, Lo/AR;

    .line 24
    iget-object v1, p0, Lo/Hk$Application;->c:Lo/Hk;

    invoke-virtual {v1}, Lo/Hk;->m()Lo/GW;

    move-result-object v1

    invoke-virtual {v1}, Lo/GW;->d()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v1

    const-string v2, "extrasInfoTap"

    .line 21
    invoke-static {p1, v0, v1, v2}, Lo/Dw;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AR;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
