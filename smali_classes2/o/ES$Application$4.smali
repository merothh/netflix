.class final Lo/ES$Application$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ES$Application;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/ES$Application;

.field final synthetic d:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lo/ES$Application;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p1, p0, Lo/ES$Application$4;->b:Lo/ES$Application;

    iput-object p2, p0, Lo/ES$Application$4;->d:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 7

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object v1

    iget-object p1, p0, Lo/ES$Application$4;->b:Lo/ES$Application;

    iget-object p1, p1, Lo/ES$Application;->a:Lo/Ba;

    invoke-interface {p1}, Lo/Ba;->getId()Ljava/lang/String;

    move-result-object v2

    .line 59
    sget-object v3, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    .line 60
    iget-object p1, p0, Lo/ES$Application$4;->b:Lo/ES$Application;

    iget v4, p1, Lo/ES$Application;->b:I

    .line 61
    iget-object p1, p0, Lo/ES$Application$4;->b:Lo/ES$Application;

    iget p1, p1, Lo/ES$Application;->b:I

    sget-object v0, Lo/ES;->c:Lo/ES$StateListAnimator;

    invoke-virtual {v0}, Lo/ES$StateListAnimator;->e()I

    move-result v0

    add-int v5, p1, v0

    .line 62
    new-instance p1, Lo/ES$Application$4$2;

    sget-object v0, Lo/ES;->c:Lo/ES$StateListAnimator;

    invoke-virtual {v0}, Lo/ES$StateListAnimator;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lo/ES$Application$4$2;-><init>(Lo/ES$Application$4;Ljava/lang/String;)V

    move-object v6, p1

    check-cast v6, Lo/zU;

    .line 58
    invoke-interface/range {v1 .. v6}, Lo/zG;->b(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IILo/zU;)Z

    return-void
.end method
