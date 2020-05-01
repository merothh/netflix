.class Lcom/netflix/mediaclient/ui/search/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$2;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$2;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$102(Lcom/netflix/mediaclient/ui/search/SearchActivity;Z)Z

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$2;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$2;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$300(Lcom/netflix/mediaclient/ui/search/SearchActivity;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$2;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$2;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$2;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v5}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$400(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v1, v4, v5}, Lcom/netflix/mediaclient/service/logging/search/utils/SearchLogUtils;->reportSearchFocusSessionStarted(JLandroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$202(Lcom/netflix/mediaclient/ui/search/SearchActivity;J)J

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$2;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$200(Lcom/netflix/mediaclient/ui/search/SearchActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$2;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$300(Lcom/netflix/mediaclient/ui/search/SearchActivity;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$2;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$2;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$200(Lcom/netflix/mediaclient/ui/search/SearchActivity;)J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/netflix/mediaclient/service/logging/search/utils/SearchLogUtils;->reportSearchFocusSessionEnded(JLandroid/content/Context;J)V

    goto :goto_0
.end method
