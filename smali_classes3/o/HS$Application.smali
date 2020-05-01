.class final Lo/HS$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HS;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/HS;


# direct methods
.method constructor <init>(Lo/HS;)V
    .locals 0

    iput-object p1, p0, Lo/HS$Application;->a:Lo/HS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 34
    iget-object v0, p0, Lo/HS$Application;->a:Lo/HS;

    invoke-virtual {v0}, Lo/HS;->m()Lo/GW;

    move-result-object v0

    invoke-virtual {v0}, Lo/GW;->e()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "clickedView"

    .line 35
    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 125
    invoke-static {p1}, Lo/TagTechnology;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v1}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 126
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 38
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->h()Lo/agg;

    move-result-object v0

    check-cast v0, Lo/AR;

    .line 39
    iget-object v1, p0, Lo/HS$Application;->a:Lo/HS;

    invoke-virtual {v1}, Lo/HS;->m()Lo/GW;

    move-result-object v1

    invoke-virtual {v1}, Lo/GW;->d()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v1

    const-string v2, "extrasTitleTreatmentTap"

    .line 36
    invoke-static {p1, v0, v1, v2}, Lo/Dw;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AR;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
