.class public final Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorHelper$getErrorByCode$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SY$Activity;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/JM$StateListAnimator;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/ObservableEmitter;

.field final synthetic b:J

.field final synthetic e:Lo/SY$Activity;


# direct methods
.method public constructor <init>(Lo/SY$Activity;JLio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorHelper$getErrorByCode$1$1;->e:Lo/SY$Activity;

    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorHelper$getErrorByCode$1$1;->b:J

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorHelper$getErrorByCode$1$1;->a:Lio/reactivex/ObservableEmitter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/JM$StateListAnimator;)V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorHelper$getErrorByCode$1$1;->e:Lo/SY$Activity;

    iget-object v0, v0, Lo/SY$Activity;->b:Lo/SY;

    new-instance v1, Lo/SY$ActionBar;

    invoke-virtual {p1}, Lo/JM$StateListAnimator;->e()Ljava/lang/String;

    move-result-object p1

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorHelper$getErrorByCode$1$1;->b:J

    invoke-direct {v1, p1, v2, v3}, Lo/SY$ActionBar;-><init>(Ljava/lang/String;J)V

    invoke-static {v0, v1}, Lo/SY;->e(Lo/SY;Lo/SY$ActionBar;)V

    .line 79
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorHelper$getErrorByCode$1$1;->a:Lio/reactivex/ObservableEmitter;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorHelper$getErrorByCode$1$1;->e:Lo/SY$Activity;

    iget-object v0, v0, Lo/SY$Activity;->b:Lo/SY;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorHelper$getErrorByCode$1$1;->e:Lo/SY$Activity;

    iget-object v1, v1, Lo/SY$Activity;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorHelper$getErrorByCode$1$1;->e:Lo/SY$Activity;

    iget-object v2, v2, Lo/SY$Activity;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorHelper$getErrorByCode$1$1;->e:Lo/SY$Activity;

    iget-object v3, v3, Lo/SY$Activity;->b:Lo/SY;

    invoke-static {v3}, Lo/SY;->b(Lo/SY;)Lo/SY$ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lo/SY$ActionBar;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lo/SY;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lo/SY$TaskDescription;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 80
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorHelper$getErrorByCode$1$1;->a:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lo/JM$StateListAnimator;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorHelper$getErrorByCode$1$1;->d(Lo/JM$StateListAnimator;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
