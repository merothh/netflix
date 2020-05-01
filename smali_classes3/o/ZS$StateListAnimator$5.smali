.class final Lo/ZS$StateListAnimator$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZS$StateListAnimator;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/ZS$StateListAnimator;

.field final synthetic c:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lo/ZS$StateListAnimator;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p1, p0, Lo/ZS$StateListAnimator$5;->b:Lo/ZS$StateListAnimator;

    iput-object p2, p0, Lo/ZS$StateListAnimator$5;->c:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 2

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object p1

    iget-object v0, p0, Lo/ZS$StateListAnimator$5;->b:Lo/ZS$StateListAnimator;

    iget-object v0, v0, Lo/ZS$StateListAnimator;->d:Lo/ZS;

    invoke-static {v0}, Lo/ZS;->e(Lo/ZS;)Lo/SyncConstValue;

    move-result-object v0

    check-cast v0, Lo/ConfirmationCallback;

    .line 78
    new-instance v1, Lo/ZS$StateListAnimator$5$2;

    invoke-direct {v1, p0}, Lo/ZS$StateListAnimator$5$2;-><init>(Lo/ZS$StateListAnimator$5;)V

    check-cast v1, Lo/zU;

    .line 77
    invoke-interface {p1, v0, v1}, Lo/zG;->a(Lo/ConfirmationCallback;Lo/zU;)V

    return-void
.end method
