.class final Lo/ES$TaskDescription$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ES$TaskDescription;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lio/reactivex/ObservableEmitter;

.field final synthetic d:Lo/ES$TaskDescription;


# direct methods
.method constructor <init>(Lo/ES$TaskDescription;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p1, p0, Lo/ES$TaskDescription$4;->d:Lo/ES$TaskDescription;

    iput-object p2, p0, Lo/ES$TaskDescription$4;->c:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 7

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object v1

    iget-object p1, p0, Lo/ES$TaskDescription$4;->d:Lo/ES$TaskDescription;

    iget-object v2, p1, Lo/ES$TaskDescription;->d:Ljava/lang/String;

    sget-object v5, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    .line 25
    new-instance p1, Lo/ES$TaskDescription$4$4;

    sget-object v0, Lo/ES;->c:Lo/ES$StateListAnimator;

    invoke-virtual {v0}, Lo/ES$StateListAnimator;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lo/ES$TaskDescription$4$4;-><init>(Lo/ES$TaskDescription$4;Ljava/lang/String;)V

    move-object v6, p1

    check-cast v6, Lo/zU;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 24
    invoke-interface/range {v1 .. v6}, Lo/zG;->b(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/zU;)Z

    return-void
.end method
