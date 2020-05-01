.class public abstract Lo/ih;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected final a:Lo/bY$TaskDescription;

.field protected b:Z

.field private final c:Lo/bY;

.field private final d:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/bY$TaskDescription;Lio/reactivex/subjects/PublishSubject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/bY$TaskDescription;",
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lo/ih;->a:Lo/bY$TaskDescription;

    .line 46
    iput-object p2, p0, Lo/ih;->d:Lio/reactivex/subjects/PublishSubject;

    .line 47
    const-class p1, Lo/bY;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/bY;

    iput-object p1, p0, Lo/ih;->c:Lo/bY;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lo/ih;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo/ih;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected b(Lo/cz;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 76
    invoke-interface {p1}, Lo/cz;->f()Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;->isAV1CodecEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected c()Z
    .locals 2

    .line 51
    iget-object v0, p0, Lo/ih;->c:Lo/bY;

    iget-object v1, p0, Lo/ih;->a:Lo/bY$TaskDescription;

    invoke-interface {v0, v1}, Lo/bY;->b(Lo/bY$TaskDescription;)Z

    move-result v0

    return v0
.end method

.method protected d(Lio/reactivex/Observer;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "Lo/bY$ActionBar;",
            ">;Z)V"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lo/ih;->c()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "nf_module_installer"

    const/4 v3, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    iget-object v4, p0, Lo/ih;->a:Lo/bY$TaskDescription;

    invoke-virtual {v4}, Lo/bY$TaskDescription;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "downloadAndInstallModule requesting install of %s fg=%b"

    invoke-static {v2, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 59
    iput-boolean v3, p0, Lo/ih;->b:Z

    .line 60
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->j()Lo/Plugin;

    move-result-object v0

    invoke-interface {v0}, Lo/Plugin;->b()Z

    move-result v0

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 63
    iget-object p2, p0, Lo/ih;->c:Lo/bY;

    iget-object v0, p0, Lo/ih;->a:Lo/bY$TaskDescription;

    invoke-interface {p2, v0}, Lo/bY;->c(Lo/bY$TaskDescription;)Lio/reactivex/Observable;

    move-result-object p2

    iget-object v0, p0, Lo/ih;->d:Lio/reactivex/subjects/PublishSubject;

    .line 64
    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p2

    .line 65
    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lo/ih;->c:Lo/bY;

    iget-object p2, p0, Lo/ih;->a:Lo/bY$TaskDescription;

    invoke-interface {p1, p2}, Lo/bY;->d(Lo/bY$TaskDescription;)V

    goto :goto_0

    :cond_1
    new-array p1, v3, [Ljava/lang/Object;

    .line 70
    iget-object p2, p0, Lo/ih;->a:Lo/bY$TaskDescription;

    invoke-virtual {p2}, Lo/bY$TaskDescription;->e()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "downloadAndInstallModule module %s already installed"

    invoke-static {v2, p2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method protected d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
