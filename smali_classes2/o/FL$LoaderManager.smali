.class public final Lo/FL$LoaderManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FL;->a(Lo/Am;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/hW;Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field public final synthetic a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field public final synthetic b:Lo/hW;

.field public final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lo/FL;

.field public final synthetic h:Lo/Am;


# direct methods
.method constructor <init>(Lo/FL;Lo/hW;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lo/Am;)V
    .locals 0

    iput-object p1, p0, Lo/FL$LoaderManager;->e:Lo/FL;

    iput-object p2, p0, Lo/FL$LoaderManager;->b:Lo/hW;

    iput-object p3, p0, Lo/FL$LoaderManager;->c:Ljava/lang/String;

    iput-object p4, p0, Lo/FL$LoaderManager;->a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object p5, p0, Lo/FL$LoaderManager;->d:Ljava/lang/String;

    iput-object p6, p0, Lo/FL$LoaderManager;->h:Lo/Am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/FC;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    iget-object v2, p0, Lo/FL$LoaderManager;->b:Lo/hW;

    if-nez v2, :cond_0

    .line 371
    new-instance v0, Lo/FC$Fragment;

    sget-object v1, Lo/LegacyErrorStrings;->V:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v2, "CommonStatus.INTERNAL_ERROR"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {v0, v1}, Lo/FC$Fragment;-><init>(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 372
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    goto :goto_0

    .line 375
    :cond_0
    iget-object v1, p0, Lo/FL$LoaderManager;->e:Lo/FL;

    .line 377
    iget-object v3, p0, Lo/FL$LoaderManager;->c:Ljava/lang/String;

    .line 378
    iget-object v4, p0, Lo/FL$LoaderManager;->a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v5, 0x1

    .line 381
    iget-object v7, p0, Lo/FL$LoaderManager;->d:Ljava/lang/String;

    .line 382
    new-instance v0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$retryFetchSecondaryData$1$1;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository_Ab18255$retryFetchSecondaryData$1$1;-><init>(Lo/FL$LoaderManager;Lio/reactivex/ObservableEmitter;)V

    move-object v8, v0

    check-cast v8, Lo/alA;

    move-object v6, p1

    .line 375
    invoke-virtual/range {v1 .. v8}, Lo/FL;->d(Lo/hW;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLio/reactivex/ObservableEmitter;Ljava/lang/String;Lo/alA;)V

    :goto_0
    return-void
.end method
