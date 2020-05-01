.class final Lo/AbsSpinner$Application$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AbsSpinner$Application;->subscribe(Lio/reactivex/SingleEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lio/reactivex/SingleEmitter;

.field final synthetic e:Lo/AbsSpinner$Application;


# direct methods
.method constructor <init>(Lo/AbsSpinner$Application;Lio/reactivex/SingleEmitter;)V
    .locals 0

    iput-object p1, p0, Lo/AbsSpinner$Application$3;->e:Lo/AbsSpinner$Application;

    iput-object p2, p0, Lo/AbsSpinner$Application$3;->b:Lio/reactivex/SingleEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 3

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object p1

    .line 111
    new-instance v0, Lo/AutofillService;

    iget-object v1, p0, Lo/AbsSpinner$Application$3;->e:Lo/AbsSpinner$Application;

    iget-object v1, v1, Lo/AbsSpinner$Application;->e:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v2, p0, Lo/AbsSpinner$Application$3;->e:Lo/AbsSpinner$Application;

    iget-object v2, v2, Lo/AbsSpinner$Application;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lo/AutofillService;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V

    check-cast v0, Lo/ConfirmationCallback;

    .line 112
    new-instance v1, Lo/AbsSpinner$Application$3$1;

    sget-object v2, Lo/AbsSpinner;->c:Lo/AbsSpinner$StateListAnimator;

    invoke-virtual {v2}, Lo/AbsSpinner$StateListAnimator;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lo/AbsSpinner$Application$3$1;-><init>(Lo/AbsSpinner$Application$3;Ljava/lang/String;)V

    check-cast v1, Lo/zU;

    .line 110
    invoke-interface {p1, v0, v1}, Lo/zG;->a(Lo/ConfirmationCallback;Lo/zU;)V

    return-void
.end method
