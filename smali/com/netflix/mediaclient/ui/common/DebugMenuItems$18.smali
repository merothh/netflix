.class Lcom/netflix/mediaclient/ui/common/DebugMenuItems$18;
.super Ljava/lang/Object;
.source "DebugMenuItems.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$18;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$18;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->access$000(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x1

    return v0
.end method
