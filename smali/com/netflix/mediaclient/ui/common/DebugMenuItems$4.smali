.class Lcom/netflix/mediaclient/ui/common/DebugMenuItems$4;
.super Ljava/lang/Object;
.source "DebugMenuItems.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

.field final synthetic val$menu:Landroid/view/Menu;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;Landroid/view/Menu;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$4;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$4;->val$menu:Landroid/view/Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$4;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->access$100(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$4;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->access$200(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Error: Don\'t have External write permissions yet... "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$4;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->access$000(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;->getInstance(Landroid/content/Context;)Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;->startNetLog()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$4;->val$menu:Landroid/view/Menu;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/Menu;->removeItem(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$4;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$4;->val$menu:Landroid/view/Menu;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->access$300(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;Landroid/view/Menu;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
