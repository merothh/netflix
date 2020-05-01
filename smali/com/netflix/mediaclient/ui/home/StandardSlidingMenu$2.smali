.class Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$2;
.super Landroid/content/BroadcastReceiver;
.source "StandardSlidingMenu.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$2;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$2;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->access$100(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$2;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->updateSwitchProfileButton()V

    return-void
.end method
