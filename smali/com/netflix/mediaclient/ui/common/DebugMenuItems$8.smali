.class Lcom/netflix/mediaclient/ui/common/DebugMenuItems$8;
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
    .line 256
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$8;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 260
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.USER_CREATE_AUTOLOGIN_TOKEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$8;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->access$000(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    const-class v2, Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 262
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.USER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$8;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->access$000(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 265
    const/4 v0, 0x1

    return v0
.end method
