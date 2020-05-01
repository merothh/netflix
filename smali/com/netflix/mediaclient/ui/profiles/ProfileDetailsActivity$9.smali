.class Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$9;
.super Ljava/lang/Object;
.source "ProfileDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$9;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 370
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$9;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$2100(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    const-string/jumbo v0, "ProfileDetailsActivity"

    const-string/jumbo v1, "Profile avatar was touched when current avatar data is not ready...ignoring..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$9;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$9;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$500(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$9;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$700(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->getStartIntent(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$9;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 378
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    const-string/jumbo v0, "ProfileDetailsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Started with defaultAvatar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$9;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$500(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; currentAvatar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity$9;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;->access$700(Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsActivity;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
