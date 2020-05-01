.class Lcom/netflix/mediaclient/ui/common/DebugMenuItems$1;
.super Ljava/lang/Object;
.source "DebugMenuItems.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$1;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$1;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->access$000(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/android/tooltips/Tooltip;->clearPrefs(Landroid/content/Context;)V

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$1;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->access$000(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->clearPrefs(Landroid/content/Context;)V

    .line 120
    const/4 v0, 0x1

    return v0
.end method
