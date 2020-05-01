.class Lcom/netflix/mediaclient/ui/home/HomeActivity$4$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$4;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/HomeActivity$4;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$4$1;->this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$4$1;->this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$4;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$4;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$300(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$4$1;->this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$4;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$4;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$300(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->markNotificationsAsRead()V

    :cond_0
    return-void
.end method
