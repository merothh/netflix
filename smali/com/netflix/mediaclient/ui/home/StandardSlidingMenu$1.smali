.class Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$1;
.super Landroid/content/BroadcastReceiver;
.source "StandardSlidingMenu.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$1;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$1;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->access$000(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V

    .line 113
    return-void
.end method
