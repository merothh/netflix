.class Lcom/netflix/mediaclient/service/user/UserAgent$AppResetListener;
.super Ljava/lang/Object;
.source "UserAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/EventListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 0

    .prologue
    .line 887
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$AppResetListener;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgent$1;)V
    .locals 0

    .prologue
    .line 887
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent$AppResetListener;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    return-void
.end method


# virtual methods
.method public received(Lcom/netflix/mediaclient/event/UIEvent;)V
    .locals 3

    .prologue
    .line 891
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Received an App reset event "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$AppResetListener;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->clearApplicationData(Landroid/content/Context;)V

    .line 893
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$AppResetListener;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finishAllActivities(Landroid/content/Context;)V

    .line 894
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 895
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$AppResetListener;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 896
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$AppResetListener;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 897
    return-void
.end method
