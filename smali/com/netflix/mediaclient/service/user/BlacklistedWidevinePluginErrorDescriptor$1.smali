.class Lcom/netflix/mediaclient/service/user/BlacklistedWidevinePluginErrorDescriptor$1;
.super Ljava/lang/Object;
.source "BlacklistedWidevinePluginErrorDescriptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/BlacklistedWidevinePluginErrorDescriptor;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/BlacklistedWidevinePluginErrorDescriptor;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/BlacklistedWidevinePluginErrorDescriptor$1;->this$0:Lcom/netflix/mediaclient/service/user/BlacklistedWidevinePluginErrorDescriptor;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/BlacklistedWidevinePluginErrorDescriptor$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 40
    const-string/jumbo v0, "nf_user_error"

    const-string/jumbo v1, "Blacklisted Widevine L3 plugin, fail back to legacy crypto scheme "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/BlacklistedWidevinePluginErrorDescriptor$1;->val$context:Landroid/content/Context;

    const-string/jumbo v1, "disable_widevine_l3"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/BlacklistedWidevinePluginErrorDescriptor$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->forceStop(Landroid/content/Context;)V

    .line 43
    return-void
.end method
