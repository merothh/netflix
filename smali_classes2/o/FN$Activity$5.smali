.class final Lo/FN$Activity$5;
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
.field final synthetic b:Lo/FN$Activity;


# direct methods
.method constructor <init>(Lo/FN$Activity;)V
    .locals 0

    iput-object p1, p0, Lo/FN$Activity$5;->b:Lo/FN$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 8

    const-string v0, "svcManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Lo/FN$Activity$5;->b:Lo/FN$Activity;

    iget-object v0, v0, Lo/FN$Activity;->d:Lo/FN;

    .line 793
    iget-object v1, p0, Lo/FN$Activity$5;->b:Lo/FN$Activity;

    iget-object v1, v1, Lo/FN$Activity;->d:Lo/FN;

    invoke-static {v1}, Lo/FN;->d(Lo/FN;)Lo/FL;

    move-result-object v2

    .line 795
    iget-object v1, p0, Lo/FN$Activity$5;->b:Lo/FN$Activity;

    iget-object v1, v1, Lo/FN$Activity;->d:Lo/FN;

    invoke-static {v1}, Lo/FN;->c(Lo/FN;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "videoId"

    invoke-static {v4, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 796
    iget-object v1, p0, Lo/FN$Activity$5;->b:Lo/FN$Activity;

    iget-object v1, v1, Lo/FN$Activity;->d:Lo/FN;

    invoke-static {v1}, Lo/FN;->e(Lo/FN;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v5

    const-string v1, "videoType"

    invoke-static {v5, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 797
    new-instance v1, Lo/Zx;

    invoke-direct {v1}, Lo/Zx;-><init>()V

    invoke-virtual {v1}, Lo/Zx;->f()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lo/hW;

    .line 798
    iget-object v1, p0, Lo/FN$Activity$5;->b:Lo/FN$Activity;

    iget-object v1, v1, Lo/FN$Activity;->d:Lo/FN;

    invoke-static {v1}, Lo/FN;->b(Lo/FN;)Ljava/lang/String;

    move-result-object v7

    move-object v3, p1

    .line 793
    invoke-virtual/range {v2 .. v7}, Lo/FL;->a(Lo/Am;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/hW;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    const/4 v1, 0x0

    .line 792
    invoke-static {v0, p1, v1}, Lo/FN;->c(Lo/FN;Lio/reactivex/Observable;Z)V

    return-void
.end method
