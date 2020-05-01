.class final Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$launchPlayer$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->b(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lo/AK;",
        "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field final synthetic b:Z

.field final synthetic c:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

.field final synthetic d:Lcom/netflix/mediaclient/ui/player/PlayerExtras;

.field final synthetic e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;ZLcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$launchPlayer$1;->c:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$launchPlayer$1;->b:Z

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$launchPlayer$1;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$launchPlayer$1;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$launchPlayer$1;->d:Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 3

    const-string v0, "requirePlayable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requireVideoType"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$launchPlayer$1;->b:Z

    if-nez v0, :cond_0

    .line 321
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/command/PlayCommand;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/event/session/command/PlayCommand;-><init>(Ljava/lang/Long;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    .line 322
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    const-string v2, "NetflixApplication.getInstance()"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netflix/mediaclient/NetflixApplication;->M()Lo/afH;

    move-result-object v1

    invoke-virtual {v1}, Lo/afH;->b()V

    .line 323
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v1, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$launchPlayer$1;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 330
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$launchPlayer$1;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 331
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$launchPlayer$1;->d:Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    .line 326
    invoke-static {v0, p1, p2, v1, v2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    .line 335
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$launchPlayer$1;->c:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment;->dismiss()V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p1, Lo/AK;

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedMediaTracksDialogFragment$launchPlayer$1;->b(Lo/AK;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
