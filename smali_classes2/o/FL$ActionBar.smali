.class public final Lo/FL$ActionBar;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FL;->d(Lo/hW;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLio/reactivex/ObservableEmitter;Ljava/lang/String;Lo/alA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/hW;

.field public final synthetic b:Lo/alA;

.field public final synthetic c:Lio/reactivex/ObservableEmitter;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/reactivex/ObservableEmitter;Lo/alA;Lo/hW;Ljava/lang/String;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lo/FL$ActionBar;->c:Lio/reactivex/ObservableEmitter;

    iput-object p2, p0, Lo/FL$ActionBar;->b:Lo/alA;

    iput-object p3, p0, Lo/FL$ActionBar;->a:Lo/hW;

    iput-object p4, p0, Lo/FL$ActionBar;->e:Ljava/lang/String;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 460
    invoke-super {p0, p1, p2}, Lo/cq;->c(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 462
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object p1, p0, Lo/FL$ActionBar;->c:Lio/reactivex/ObservableEmitter;

    new-instance v0, Lo/FC$Fragment;

    invoke-direct {v0, p2}, Lo/FC$Fragment;-><init>(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 464
    iget-object p1, p0, Lo/FL$ActionBar;->b:Lo/alA;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 469
    iget-object v0, p0, Lo/FL$ActionBar;->c:Lio/reactivex/ObservableEmitter;

    new-instance v1, Lo/FC$Fragment;

    invoke-direct {v1, p2}, Lo/FC$Fragment;-><init>(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 470
    iget-object p2, p0, Lo/FL$ActionBar;->b:Lo/alA;

    invoke-interface {p2, p1}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 474
    :cond_1
    iget-object p2, p0, Lo/FL$ActionBar;->c:Lio/reactivex/ObservableEmitter;

    new-instance v0, Lo/FC$Activity;

    move-object v1, p1

    check-cast v1, Lo/Bc;

    invoke-direct {v0, v1}, Lo/FC$Activity;-><init>(Lo/Bc;)V

    invoke-interface {p2, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 475
    iget-object p2, p0, Lo/FL$ActionBar;->b:Lo/alA;

    invoke-interface {p2, p1}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d(Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Bb;",
            "Ljava/util/List<",
            "Lo/Ba;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const-string v0, "res"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    invoke-super {p0, p1, p2, p3}, Lo/cq;->d(Lo/Bb;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 485
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object p1, p0, Lo/FL$ActionBar;->c:Lio/reactivex/ObservableEmitter;

    new-instance p2, Lo/FC$Fragment;

    invoke-direct {p2, p3}, Lo/FC$Fragment;-><init>(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 487
    iget-object p1, p0, Lo/FL$ActionBar;->b:Lo/alA;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 492
    iget-object p2, p0, Lo/FL$ActionBar;->c:Lio/reactivex/ObservableEmitter;

    new-instance v0, Lo/FC$Fragment;

    invoke-direct {v0, p3}, Lo/FC$Fragment;-><init>(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p2, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 493
    iget-object p2, p0, Lo/FL$ActionBar;->b:Lo/alA;

    invoke-interface {p2, p1}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 498
    :cond_1
    new-instance p3, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDPSecondaryData$1$onShowDetailsAndSeasonsFetched$onShowAndSeasonsDetailsFetchedSuccessfully$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$fetchDPSecondaryData$1$onShowDetailsAndSeasonsFetched$onShowAndSeasonsDetailsFetchedSuccessfully$1;-><init>(Lo/FL$ActionBar;Lo/Bb;Ljava/util/List;)V

    check-cast p3, Lo/alB;

    if-eqz p2, :cond_2

    .line 508
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    invoke-interface {p1}, Lo/Bb;->isPreRelease()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 509
    :cond_3
    invoke-interface {p3}, Lo/alB;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 515
    :cond_4
    iget-object p1, p0, Lo/FL$ActionBar;->a:Lo/hW;

    new-instance p2, Lo/TrustedCertificateStoreAdapter;

    iget-object v0, p0, Lo/FL$ActionBar;->e:Ljava/lang/String;

    sget-object v1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->a:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    invoke-direct {p2, v0, v1}, Lo/TrustedCertificateStoreAdapter;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;)V

    check-cast p2, Lo/SettingsValidators;

    new-instance v0, Lo/FL$ActionBar$ActionBar;

    invoke-direct {v0, p0, p3}, Lo/FL$ActionBar$ActionBar;-><init>(Lo/FL$ActionBar;Lo/alB;)V

    check-cast v0, Lo/ci;

    invoke-interface {p1, p2, v0}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    :goto_0
    return-void
.end method
