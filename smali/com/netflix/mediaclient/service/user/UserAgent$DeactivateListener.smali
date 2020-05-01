.class Lcom/netflix/mediaclient/service/user/UserAgent$DeactivateListener;
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
    .line 856
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$DeactivateListener;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgent$1;)V
    .locals 0

    .prologue
    .line 856
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent$DeactivateListener;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    return-void
.end method


# virtual methods
.method public received(Lcom/netflix/mediaclient/event/UIEvent;)V
    .locals 2

    .prologue
    .line 867
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Received a deactivate event "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    return-void
.end method
