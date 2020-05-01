.class final Lo/UG$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/UG;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;ZZ)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lo/UG;

.field final synthetic d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field final synthetic e:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

.field final synthetic h:Z


# direct methods
.method constructor <init>(Lo/UG;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLcom/netflix/mediaclient/servicemgr/PlayLocationType;Z)V
    .locals 0

    iput-object p1, p0, Lo/UG$StateListAnimator;->c:Lo/UG;

    iput-object p2, p0, Lo/UG$StateListAnimator;->a:Ljava/lang/String;

    iput-object p3, p0, Lo/UG$StateListAnimator;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-boolean p4, p0, Lo/UG$StateListAnimator;->b:Z

    iput-object p5, p0, Lo/UG$StateListAnimator;->e:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    iput-boolean p6, p0, Lo/UG$StateListAnimator;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lkotlin/Pair<",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "Lcom/netflix/model/leafs/PostPlayExperience;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lo/UG$StateListAnimator;->a:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "CommonStatus.INTERNAL_ERROR"

    if-nez v0, :cond_2

    .line 28
    iget-object v0, p0, Lo/UG$StateListAnimator;->c:Lo/UG;

    check-cast v0, Lo/MessagePdu;

    .line 30
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lo/UG$StateListAnimator;->c:Lo/UG;

    invoke-virtual {v3}, Lo/UG;->getLogTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Requesting post play response for video ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v3, p0, Lo/UG$StateListAnimator;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lo/UG$StateListAnimator;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-interface {v0, v2}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 36
    new-instance v0, Lo/Zx;

    invoke-direct {v0}, Lo/Zx;-><init>()V

    .line 37
    invoke-virtual {v0}, Lo/Zx;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/hW;

    if-nez v0, :cond_1

    .line 40
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lo/UG$StateListAnimator;->c:Lo/UG;

    invoke-virtual {v3}, Lo/UG;->getLogTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": fetchPostPlayExperience - browseAgent is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lo/UG$StateListAnimator;->c:Lo/UG;

    sget-object v2, Lo/LegacyErrorStrings;->V:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {v2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {v0, v2, p1}, Lo/UG;->c(Lcom/netflix/mediaclient/android/app/Status;Lio/reactivex/ObservableEmitter;)V

    goto :goto_1

    .line 46
    :cond_1
    iget-object v1, p0, Lo/UG$StateListAnimator;->c:Lo/UG;

    iget-object v2, p0, Lo/UG$StateListAnimator;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lo/UG$StateListAnimator;->b:Z

    invoke-virtual {v1, v2, v3, p1}, Lo/UG;->d(Ljava/lang/String;ZLio/reactivex/ObservableEmitter;)Lo/cq;

    move-result-object p1

    .line 48
    new-instance v1, Lo/ConfigSource;

    .line 49
    iget-object v2, p0, Lo/UG$StateListAnimator;->a:Ljava/lang/String;

    .line 50
    iget-object v3, p0, Lo/UG$StateListAnimator;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 51
    iget-object v4, p0, Lo/UG$StateListAnimator;->e:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 52
    iget-boolean v5, p0, Lo/UG$StateListAnimator;->h:Z

    .line 48
    invoke-direct {v1, v2, v3, v4, v5}, Lo/ConfigSource;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Z)V

    check-cast v1, Lo/SettingsValidators;

    .line 54
    check-cast p1, Lo/ci;

    .line 47
    invoke-interface {v0, v1, p1}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    goto :goto_1

    .line 58
    :cond_2
    iget-object v0, p0, Lo/UG$StateListAnimator;->c:Lo/UG;

    move-object v2, v0

    check-cast v2, Lo/MessagePdu;

    .line 59
    sget-object v2, Lo/LegacyErrorStrings;->V:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {v2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {v0, v2, p1}, Lo/UG;->c(Lcom/netflix/mediaclient/android/app/Status;Lio/reactivex/ObservableEmitter;)V

    :goto_1
    return-void
.end method
