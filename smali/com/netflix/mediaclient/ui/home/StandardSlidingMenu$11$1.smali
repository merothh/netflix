.class Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11$1;
.super Ljava/lang/Object;
.source "StandardSlidingMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11;

.field final synthetic val$handler:Lcom/netflix/mediaclient/ui/home/AccountHandler;

.field final synthetic val$timeoutStatus:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11;Lcom/netflix/mediaclient/ui/home/AccountHandler;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 748
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11$1;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11$1;->val$handler:Lcom/netflix/mediaclient/ui/home/AccountHandler;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11$1;->val$timeoutStatus:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 751
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11$1;->val$handler:Lcom/netflix/mediaclient/ui/home/AccountHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$11$1;->val$timeoutStatus:Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/home/AccountHandler;->handle(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 752
    return-void
.end method
