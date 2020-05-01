.class final Lo/FN$Activity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FN$Activity;->d(Lo/DG;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/FN$Activity;


# direct methods
.method constructor <init>(Lo/FN$Activity;)V
    .locals 0

    iput-object p1, p0, Lo/FN$Activity$1;->e:Lo/FN$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 5

    const-string v0, "svcManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 780
    iget-object v0, p0, Lo/FN$Activity$1;->e:Lo/FN$Activity;

    iget-object v0, v0, Lo/FN$Activity;->d:Lo/FN;

    .line 781
    iget-object v1, p0, Lo/FN$Activity$1;->e:Lo/FN$Activity;

    iget-object v1, v1, Lo/FN$Activity;->d:Lo/FN;

    invoke-static {v1}, Lo/FN;->d(Lo/FN;)Lo/FL;

    move-result-object v1

    .line 783
    iget-object v2, p0, Lo/FN$Activity$1;->e:Lo/FN$Activity;

    iget-object v2, v2, Lo/FN$Activity;->d:Lo/FN;

    invoke-static {v2}, Lo/FN;->c(Lo/FN;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "videoId"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 784
    iget-object v3, p0, Lo/FN$Activity$1;->e:Lo/FN$Activity;

    iget-object v3, v3, Lo/FN$Activity;->d:Lo/FN;

    invoke-static {v3}, Lo/FN;->e(Lo/FN;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    const-string v4, "videoType"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 785
    new-instance v4, Lo/Zx;

    invoke-direct {v4}, Lo/Zx;-><init>()V

    invoke-virtual {v4}, Lo/Zx;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/hW;

    .line 781
    invoke-virtual {v1, p1, v2, v3, v4}, Lo/FL;->a(Lo/Am;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/hW;)Lio/reactivex/Observable;

    move-result-object p1

    const/4 v1, 0x0

    .line 780
    invoke-static {v0, p1, v1}, Lo/FN;->c(Lo/FN;Lio/reactivex/Observable;Z)V

    return-void
.end method
