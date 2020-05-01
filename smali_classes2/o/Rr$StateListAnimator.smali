.class public final Lo/Rr$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Rr$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Rr;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Rr;


# direct methods
.method constructor <init>(Lo/Rr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lo/Rr$StateListAnimator;->e:Lo/Rr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 98
    iget-object v0, p0, Lo/Rr$StateListAnimator;->e:Lo/Rr;

    invoke-virtual {v0}, Lo/Rr;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/RL;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 1

    const-string v0, "playableId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playContext"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    sget-object v0, Lo/RB;->b:Lo/RB$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 103
    iget-object v0, p0, Lo/Rr$StateListAnimator;->e:Lo/Rr;

    invoke-virtual {v0}, Lo/Rr;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lo/RL;->b(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)V
    .locals 6

    const-string v0, "videoType"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "playContext"

    invoke-static {p4, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "source"

    invoke-static {p5, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object p3, p0, Lo/Rr$StateListAnimator;->e:Lo/Rr;

    invoke-virtual {p3}, Lo/Rr;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, ""

    const-string v5, ""

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    .line 79
    invoke-static/range {v0 .. v5}, Lo/Dw;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "titleId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lo/RB;->b:Lo/RB$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 92
    iget-object v0, p0, Lo/Rr$StateListAnimator;->e:Lo/Rr;

    invoke-virtual {v0}, Lo/Rr;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v1, Lo/QU;->d:Lo/QU$TaskDescription;

    const-string v2, "it"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, p2, v3}, Lo/QU$TaskDescription;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
