.class Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6$1;
.super Ljava/lang/Object;
.source "DebugMenuItems.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;

.field final synthetic val$isTestEnvironment:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;Z)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6$1;->this$1:Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6$1;->val$isTestEnvironment:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6$1;->val$isTestEnvironment:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    const-string/jumbo v0, "api-int.test.netflix.com"

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6$1;->this$1:Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->access$000(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    const-string/jumbo v2, "api_environment_preference"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6$1;->this$1:Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$6;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->access$000(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->restartApplication(Landroid/app/Activity;)V

    return-void

    :cond_0
    const-string/jumbo v0, "api.test.netflix.com"

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const-string/jumbo v0, "api-global.netflix.com"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "api-staging.netflix.com"

    goto :goto_0
.end method
