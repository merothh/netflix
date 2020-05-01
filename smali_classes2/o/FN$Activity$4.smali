.class final Lo/FN$Activity$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FN$Activity;->d(Lo/DG;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/FN$Activity;

.field final synthetic e:Lo/DG;


# direct methods
.method constructor <init>(Lo/FN$Activity;Lo/DG;)V
    .locals 0

    iput-object p1, p0, Lo/FN$Activity$4;->b:Lo/FN$Activity;

    iput-object p2, p0, Lo/FN$Activity$4;->e:Lo/DG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 8

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 670
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 671
    new-instance v1, Lcom/netflix/cl/model/event/session/action/SetThumbRating;

    .line 672
    iget-object v2, p0, Lo/FN$Activity$4;->e:Lo/DG;

    check-cast v2, Lo/DG$Fragment;

    invoke-virtual {v2}, Lo/DG$Fragment;->c()I

    move-result v2

    invoke-static {v2}, Lo/ShellCallback;->d(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 671
    invoke-direct {v1, v2}, Lcom/netflix/cl/model/event/session/action/SetThumbRating;-><init>(Ljava/lang/Long;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    .line 670
    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    .line 676
    iget-object v1, p0, Lo/FN$Activity$4;->b:Lo/FN$Activity;

    iget-object v1, v1, Lo/FN$Activity;->d:Lo/FN;

    invoke-virtual {v1}, Lo/FN;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lo/CY;

    invoke-static {v1, v2}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 675
    check-cast v1, Lo/CY;

    if-eqz v1, :cond_0

    .line 677
    invoke-interface {v1}, Lo/CY;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v1

    move v6, v1

    goto :goto_0

    :cond_0
    const/16 v1, -0x123

    const/16 v6, -0x123

    .line 680
    :goto_0
    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object v2

    .line 683
    iget-object p1, p0, Lo/FN$Activity$4;->b:Lo/FN$Activity;

    iget-object p1, p1, Lo/FN$Activity;->d:Lo/FN;

    invoke-static {p1}, Lo/FN;->c(Lo/FN;)Ljava/lang/String;

    move-result-object v3

    .line 684
    iget-object p1, p0, Lo/FN$Activity$4;->b:Lo/FN$Activity;

    iget-object p1, p1, Lo/FN$Activity;->d:Lo/FN;

    invoke-static {p1}, Lo/FN;->e(Lo/FN;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    .line 685
    iget-object p1, p0, Lo/FN$Activity$4;->e:Lo/DG;

    check-cast p1, Lo/DG$Fragment;

    invoke-virtual {p1}, Lo/DG$Fragment;->c()I

    move-result v5

    .line 687
    new-instance p1, Lo/FN$Activity$4$1;

    sget-object v1, Lo/FN;->u:Lo/FN$Application;

    invoke-virtual {v1}, Lo/FN$Application;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1, v0}, Lo/FN$Activity$4$1;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V

    move-object v7, p1

    check-cast v7, Lo/zU;

    .line 682
    invoke-interface/range {v2 .. v7}, Lo/zG;->a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILo/zU;)Z

    return-void
.end method
