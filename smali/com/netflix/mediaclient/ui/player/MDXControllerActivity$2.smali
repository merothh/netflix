.class Lcom/netflix/mediaclient/ui/player/MDXControllerActivity$2;
.super Ljava/lang/Object;
.source "MDXControllerActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity$2;->this$0:Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity$2;->this$0:Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;->access$000(Lcom/netflix/mediaclient/ui/player/MDXControllerActivity;)V

    .line 159
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 164
    return-void
.end method
