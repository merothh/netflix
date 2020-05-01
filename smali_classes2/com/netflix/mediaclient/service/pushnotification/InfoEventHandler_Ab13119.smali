.class public Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119;
.super Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119$TriggerDownloadsRunnable;
    }
.end annotation


# instance fields
.field private final offlineAgent:Lo/nS;

.field private final triggerDownloadsRunnable$delegate:Lo/aka;


# direct methods
.method public constructor <init>(Lo/hW;Lo/nS;Lo/cz;Lo/zM;)V
    .locals 1

    const-string v0, "browseAgent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineAgent"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationAgent"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pushNotificationAgent"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p3, p4}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;-><init>(Lo/hW;Lo/cz;Lo/zM;)V

    iput-object p2, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119;->offlineAgent:Lo/nS;

    .line 18
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->b:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119$triggerDownloadsRunnable$2;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119$triggerDownloadsRunnable$2;-><init>(Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119;)V

    check-cast p2, Lo/alB;

    invoke-static {p1, p2}, Lo/akd;->c(Lkotlin/LazyThreadSafetyMode;Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119;->triggerDownloadsRunnable$delegate:Lo/aka;

    return-void
.end method

.method private final getTriggerDownloadsRunnable()Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119$TriggerDownloadsRunnable;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119;->triggerDownloadsRunnable$delegate:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119$TriggerDownloadsRunnable;

    return-object v0
.end method


# virtual methods
.method public final getOfflineAgent()Lo/nS;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119;->offlineAgent:Lo/nS;

    return-object v0
.end method

.method protected handleTriggerDownloadsEvent(ZLjava/lang/String;I)V
    .locals 2

    const-string v0, "videoId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119;->offlineAgent:Lo/nS;

    invoke-interface {p1}, Lo/nS;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119;->offlineAgent:Lo/nS;

    invoke-interface {p1}, Lo/nS;->t()Lo/nP;

    move-result-object p1

    invoke-interface {p1}, Lo/nP;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119;->getTriggerDownloadsRunnable()Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119$TriggerDownloadsRunnable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119$TriggerDownloadsRunnable;->setVideoId(Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119;->getTriggerDownloadsRunnable()Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119$TriggerDownloadsRunnable;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119$TriggerDownloadsRunnable;->setVideoBookmark(I)V

    .line 55
    iget-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119;->mMainHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119;->getTriggerDownloadsRunnable()Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119$TriggerDownloadsRunnable;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    iget-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119;->mMainHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119;->getTriggerDownloadsRunnable()Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119$TriggerDownloadsRunnable;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119;->getBrowseEventRateLimitMs()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
