.class final Lo/aaF$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aaF;->c(Lo/Am;Ljava/lang/String;J)Lio/reactivex/Observable;
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

.field final synthetic b:Lo/aaF;

.field final synthetic c:J

.field final synthetic d:Lo/Am;


# direct methods
.method constructor <init>(Lo/aaF;Lo/Am;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lo/aaF$Application;->b:Lo/aaF;

    iput-object p2, p0, Lo/aaF$Application;->d:Lo/Am;

    iput-object p3, p0, Lo/aaF$Application;->a:Ljava/lang/String;

    iput-wide p4, p0, Lo/aaF$Application;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/aaF$TaskDescription;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lo/aaF$Application;->d:Lo/Am;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v1, Lo/X509CertificateParsingUtils;

    iget-object v2, p0, Lo/aaF$Application;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lo/X509CertificateParsingUtils;-><init>(Ljava/lang/String;)V

    check-cast v1, Lo/ConfirmationCallback;

    .line 31
    new-instance v2, Lo/aaF$Application$1;

    sget-object v3, Lo/aaF;->b:Lo/aaF$Activity;

    invoke-virtual {v3}, Lo/aaF$Activity;->getLogTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3}, Lo/aaF$Application$1;-><init>(Lo/aaF$Application;Lio/reactivex/ObservableEmitter;Ljava/lang/String;)V

    check-cast v2, Lo/zU;

    .line 29
    invoke-interface {v0, v1, v2}, Lo/zG;->a(Lo/ConfirmationCallback;Lo/zU;)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lo/aaF$Application;->b:Lo/aaF;

    .line 51
    new-instance v0, Lo/aaF$TaskDescription;

    .line 52
    sget-object v1, Lo/LegacyErrorStrings;->V:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v2, "CommonStatus.INTERNAL_ERROR"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Lcom/netflix/mediaclient/android/app/Status;

    const/4 v3, 0x0

    iget-wide v4, p0, Lo/aaF$Application;->c:J

    const/4 v6, 0x0

    move-object v1, v0

    .line 51
    invoke-direct/range {v1 .. v6}, Lo/aaF$TaskDescription;-><init>(Lcom/netflix/mediaclient/android/app/Status;Lo/Bs;JZ)V

    .line 50
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 55
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    :goto_0
    return-void
.end method
