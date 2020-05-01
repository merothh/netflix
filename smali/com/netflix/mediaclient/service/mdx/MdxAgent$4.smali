.class Lcom/netflix/mediaclient/service/mdx/MdxAgent$4;
.super Landroid/content/BroadcastReceiver;
.source "MdxAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$4;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_1

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "Null intent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_ACTIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "useprofile is active"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$4;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->notifyIsUserLogin(Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_DEACTIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "useprofile is not active"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$4;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->notifyIsUserLogin(Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_ACTIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "user account is activated"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_DEACTIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_mdx_MdxAgent"

    const-string/jumbo v1, "user account is deactivated"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
