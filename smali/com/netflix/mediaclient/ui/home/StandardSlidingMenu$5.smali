.class Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$5;
.super Ljava/lang/Object;
.source "StandardSlidingMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$5;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$5;->this$0:Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->access$300(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    return-void
.end method
