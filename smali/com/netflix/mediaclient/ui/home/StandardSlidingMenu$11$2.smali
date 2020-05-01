.class Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11$2;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "StandardSlidingMenu.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11;

.field final synthetic val$handler:Lcom/netflix/mediaclient/ui/home/AccountHandler;

.field final synthetic val$timeout:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11;Ljava/lang/Runnable;Lcom/netflix/mediaclient/ui/home/AccountHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11$2;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11$2;->val$timeout:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11$2;->val$handler:Lcom/netflix/mediaclient/ui/home/AccountHandler;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoLoginTokenCreated(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11$2;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11;->val$context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11$2;->val$timeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11$2;->val$handler:Lcom/netflix/mediaclient/ui/home/AccountHandler;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/home/AccountHandler;->handle(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
