.class Lcom/netflix/mediaclient/ui/common/DebugMenuItems$22;
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
    .line 446
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$22;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 449
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$22;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->access$000(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->dumpToDisk(Landroid/app/Activity;)V

    .line 450
    const/4 v0, 0x1

    return v0
.end method
