.class final Lo/FI$Activity;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Activity"
.end annotation


# instance fields
.field final synthetic b:Lo/FI;

.field private final d:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Lo/FC;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/FI;Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/FC;",
            ">;)V"
        }
    .end annotation

    const-string v0, "publisher"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    iput-object p1, p0, Lo/FI$Activity;->b:Lo/FI;

    .line 621
    invoke-direct {p0}, Lo/Ai;-><init>()V

    iput-object p2, p0, Lo/FI$Activity;->d:Lio/reactivex/ObservableEmitter;

    return-void
.end method


# virtual methods
.method public d(Lo/AU;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "res"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    invoke-super {p0, p1, p2, p3}, Lo/Ai;->d(Lo/AU;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 626
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 627
    iget-object p1, p0, Lo/FI$Activity;->d:Lio/reactivex/ObservableEmitter;

    new-instance p2, Lo/FC$TaskDescription;

    invoke-direct {p2, p3}, Lo/FC$TaskDescription;-><init>(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 631
    iget-object p1, p0, Lo/FI$Activity;->d:Lio/reactivex/ObservableEmitter;

    new-instance p2, Lo/FC$TaskDescription;

    sget-object p3, Lo/LegacyErrorStrings;->Y:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v0, "CommonStatus.INT_ERR_CMP_RESP_NULL"

    invoke-static {p3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p2, p3}, Lo/FC$TaskDescription;-><init>(Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 634
    :cond_1
    iget-object p2, p0, Lo/FI$Activity;->d:Lio/reactivex/ObservableEmitter;

    new-instance p3, Lo/FC$FragmentManager;

    invoke-direct {p3, p1}, Lo/FC$FragmentManager;-><init>(Lo/AU;)V

    invoke-interface {p2, p3}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 637
    :goto_0
    iget-object p1, p0, Lo/FI$Activity;->d:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
