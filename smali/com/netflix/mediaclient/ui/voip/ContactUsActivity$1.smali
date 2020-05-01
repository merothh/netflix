.class Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$1;
.super Ljava/lang/Object;
.source "ContactUsActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 294
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Manager is here!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-static {v0, p1, p2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->access$000(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 296
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 300
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Netflix service is not fully initialized, but we still need to provide help!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-static {v0, p1, p2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->access$000(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 302
    return-void
.end method
