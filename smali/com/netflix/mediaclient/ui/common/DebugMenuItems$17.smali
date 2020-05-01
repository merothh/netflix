.class Lcom/netflix/mediaclient/ui/common/DebugMenuItems$17;
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
    .line 379
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$17;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$17;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->access$500(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V

    .line 383
    const/4 v0, 0x1

    return v0
.end method
