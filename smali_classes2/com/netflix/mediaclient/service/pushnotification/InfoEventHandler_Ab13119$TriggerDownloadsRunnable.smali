.class final Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119$TriggerDownloadsRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TriggerDownloadsRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119;

.field private videoBookmark:I

.field private videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119$TriggerDownloadsRunnable;->this$0:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119$TriggerDownloadsRunnable;->videoBookmark:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119$TriggerDownloadsRunnable;->videoId:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119$TriggerDownloadsRunnable;->videoId:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_1

    .line 36
    iget v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119$TriggerDownloadsRunnable;->videoBookmark:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 37
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119$TriggerDownloadsRunnable;->this$0:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119;->getOfflineAgent()Lo/nS;

    move-result-object v1

    invoke-interface {v1}, Lo/nS;->t()Lo/nP;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 39
    iget v2, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119$TriggerDownloadsRunnable;->videoBookmark:I

    .line 37
    invoke-interface {v1, v0, v2}, Lo/nP;->b(Ljava/lang/String;I)V

    goto :goto_1

    .line 42
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Failed to enqueue Smart Download streaming trigger: null videoId"

    .line 43
    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final setVideoBookmark(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119$TriggerDownloadsRunnable;->videoBookmark:I

    return-void
.end method

.method public final setVideoId(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler_Ab13119$TriggerDownloadsRunnable;->videoId:Ljava/lang/String;

    return-void
.end method
