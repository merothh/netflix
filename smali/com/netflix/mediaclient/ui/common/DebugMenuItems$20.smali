.class Lcom/netflix/mediaclient/ui/common/DebugMenuItems$20;
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
    .line 420
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$20;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 423
    invoke-static {}, Lcom/netflix/mediaclient/service/NetflixService;->toggleFetchErrorsEnabled()V

    .line 424
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$20;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->access$000(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showFetchErrorsToast()V

    .line 425
    const/4 v0, 0x1

    return v0
.end method
