.class public final Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog$1;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 246
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog$1;->c:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public d(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog$1;->c:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;->d:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->getItemClickSubject()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    sget-object v1, Lo/Lz$TaskDescription;->c:Lo/Lz$TaskDescription;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 250
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog$1;->c:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;->c:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 251
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog$1;->c:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;->d:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->access$getNetflixActivity$p(Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    const-string p2, "netflixActivity.serviceManager"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object p1

    invoke-interface {p1, v0}, Lo/zG;->c(Z)V

    .line 252
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog$1;->c:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;->d:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController;->getItemClickSubject()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    new-instance p2, Lo/Lz$ActionBar;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lo/Lz$ActionBar;-><init>(Z)V

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 254
    :cond_0
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    .line 255
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog$1;->c:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;->c:Ljava/lang/Long;

    .line 256
    invoke-static {p2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/cl/model/Error;

    move-result-object p2

    .line 254
    invoke-virtual {p1, v1, p2}, Lcom/netflix/cl/ExtLogger;->failedAction(Ljava/lang/Long;Lcom/netflix/cl/model/Error;)Z

    .line 259
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gM:I

    .line 258
    invoke-static {p1, v0}, Lo/adk;->c(II)V

    .line 263
    :goto_0
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog$1;->c:Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/lomo/cwmenu/ContinueWatchingMenuController$Dialog;->b:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    return-void
.end method
