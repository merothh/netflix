.class Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshListRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshListRunnable"
.end annotation


# instance fields
.field private mListContext:Ljava/lang/String;

.field private mRenoMessageId:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshListRunnable;->this$0:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$1;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshListRunnable;-><init>(Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 69
    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshListRunnable;->mListContext:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "nf_push_info"

    const-string v4, "Refreshing list %s via runnable"

    invoke-static {v2, v4, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 70
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshListRunnable;->this$0:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mBrowseAgent:Lo/hW;

    if-eqz v1, :cond_0

    .line 71
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshListRunnable;->mListContext:Ljava/lang/String;

    aput-object v4, v0, v3

    const-string v3, "gcm.%s.refresh"

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshListRunnable;->this$0:Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler;->mBrowseAgent:Lo/hW;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshListRunnable;->mListContext:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshListRunnable;->mRenoMessageId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lo/hW;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iput-object v3, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshListRunnable;->mRenoMessageId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshListRunnable;->mListContext:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/netflix/mediaclient/service/pushnotification/InfoEventHandler$RefreshListRunnable;->mRenoMessageId:Ljava/lang/String;

    return-void
.end method
