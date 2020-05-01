.class final Lo/FN$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FN;->d(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:Lo/FN;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Lo/FN;ZZ)V
    .locals 0

    iput-object p1, p0, Lo/FN$StateListAnimator;->c:Lo/FN;

    iput-boolean p2, p0, Lo/FN$StateListAnimator;->b:Z

    iput-boolean p3, p0, Lo/FN$StateListAnimator;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 10

    const-string v0, "svcManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lo/FN$StateListAnimator;->c:Lo/FN;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/FN;->b(Lo/FN;Z)V

    .line 161
    sget-object v0, Lo/FN;->u:Lo/FN$Application;

    check-cast v0, Lo/MessagePdu;

    .line 163
    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->d()Z

    move-result v0

    const-string v1, "videoType"

    const-string v2, "videoId"

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lo/FN$StateListAnimator;->c:Lo/FN;

    invoke-static {v0}, Lo/FN;->d(Lo/FN;)Lo/FL;

    move-result-object v3

    .line 166
    iget-object v0, p0, Lo/FN$StateListAnimator;->c:Lo/FN;

    invoke-static {v0}, Lo/FN;->c(Lo/FN;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lo/FN$StateListAnimator;->c:Lo/FN;

    invoke-static {v0}, Lo/FN;->e(Lo/FN;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v6

    invoke-static {v6, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lo/FN$StateListAnimator;->c:Lo/FN;

    invoke-static {v0}, Lo/FN;->b(Lo/FN;)Ljava/lang/String;

    move-result-object v7

    .line 169
    iget-boolean v8, p0, Lo/FN$StateListAnimator;->b:Z

    .line 170
    new-instance v0, Lo/Zx;

    invoke-direct {v0}, Lo/Zx;-><init>()V

    invoke-virtual {v0}, Lo/Zx;->f()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lo/hW;

    move-object v4, p1

    .line 164
    invoke-virtual/range {v3 .. v9}, Lo/FL;->b(Lo/Am;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;ZLo/hW;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lo/FN$StateListAnimator;->c:Lo/FN;

    invoke-static {v0}, Lo/FN;->d(Lo/FN;)Lo/FL;

    move-result-object v3

    .line 175
    iget-object v0, p0, Lo/FN$StateListAnimator;->c:Lo/FN;

    invoke-static {v0}, Lo/FN;->c(Lo/FN;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lo/FN$StateListAnimator;->c:Lo/FN;

    invoke-static {v0}, Lo/FN;->e(Lo/FN;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v6

    invoke-static {v6, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lo/FN$StateListAnimator;->c:Lo/FN;

    invoke-static {v0}, Lo/FN;->b(Lo/FN;)Ljava/lang/String;

    move-result-object v7

    .line 178
    iget-boolean v8, p0, Lo/FN$StateListAnimator;->b:Z

    move-object v4, p1

    .line 173
    invoke-virtual/range {v3 .. v8}, Lo/FL;->d(Lo/Am;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 182
    :goto_0
    iget-object v0, p0, Lo/FN$StateListAnimator;->c:Lo/FN;

    .line 184
    iget-boolean v1, p0, Lo/FN$StateListAnimator;->d:Z

    .line 182
    invoke-static {v0, p1, v1}, Lo/FN;->c(Lo/FN;Lio/reactivex/Observable;Z)V

    return-void
.end method
