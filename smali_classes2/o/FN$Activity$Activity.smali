.class final Lo/FN$Activity$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FN$Activity;->d(Lo/DG;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic b:Lcom/netflix/mediaclient/ui/player/PlayerExtras;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/Long;

.field final synthetic e:Lo/FN$Activity;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerExtras;Lo/FN$Activity;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/FN$Activity$Activity;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lo/FN$Activity$Activity;->b:Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    iput-object p3, p0, Lo/FN$Activity$Activity;->e:Lo/FN$Activity;

    iput-object p4, p0, Lo/FN$Activity$Activity;->d:Ljava/lang/Long;

    iput-object p5, p0, Lo/FN$Activity$Activity;->c:Ljava/lang/String;

    iput-object p6, p0, Lo/FN$Activity$Activity;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 713
    iget-object v0, p0, Lo/FN$Activity$Activity;->e:Lo/FN$Activity;

    iget-object v0, v0, Lo/FN$Activity;->d:Lo/FN;

    invoke-static {v0}, Lo/FN;->m(Lo/FN;)Lo/Bc;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 714
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 715
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 716
    new-instance v3, Lcom/netflix/cl/model/event/session/command/SelectCommand;

    invoke-direct {v3}, Lcom/netflix/cl/model/event/session/command/SelectCommand;-><init>()V

    check-cast v3, Lcom/netflix/cl/model/event/session/Session;

    .line 715
    invoke-virtual {v2, v3}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v2

    .line 714
    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 719
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v2, p0, Lo/FN$Activity$Activity;->d:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 722
    iget-object v1, p0, Lo/FN$Activity$Activity;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v1, :cond_0

    check-cast v1, Lo/CY;

    invoke-interface {v1}, Lo/CY;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v1

    const-string v2, "(netflixActivity as Play\u2026textProvider).playContext"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 723
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->n:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V

    .line 726
    iget-object v2, p0, Lo/FN$Activity$Activity;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string v3, "detailsForPlayback"

    .line 727
    invoke-static {v0, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/Bc;->bb()Lo/AK;

    move-result-object v3

    .line 728
    invoke-interface {v0}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    .line 730
    iget-object v4, p0, Lo/FN$Activity$Activity;->b:Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    .line 725
    invoke-static {v2, v3, v0, v1, v4}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    goto :goto_0

    .line 722
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.netflix.mediaclient.ui.common.PlayContextProvider"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
