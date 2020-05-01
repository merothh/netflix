.class public final Lo/FI$VoiceInteractor$5;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FI$VoiceInteractor;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lio/reactivex/ObservableEmitter;

.field final synthetic d:Lo/FI$VoiceInteractor;


# direct methods
.method constructor <init>(Lo/FI$VoiceInteractor;Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter;",
            ")V"
        }
    .end annotation

    .line 670
    iput-object p1, p0, Lo/FI$VoiceInteractor$5;->d:Lo/FI$VoiceInteractor;

    iput-object p2, p0, Lo/FI$VoiceInteractor$5;->c:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    invoke-super {p0, p1, p2}, Lo/cq;->d(Lo/agg;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 677
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 683
    :cond_0
    sget-object v0, Lo/FI;->e:Lo/FI$Application;

    check-cast v0, Lo/MessagePdu;

    .line 684
    iget-object v0, p0, Lo/FI$VoiceInteractor$5;->c:Lio/reactivex/ObservableEmitter;

    .line 685
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 684
    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    .line 678
    :cond_1
    :goto_0
    sget-object p1, Lo/FI;->e:Lo/FI$Application;

    check-cast p1, Lo/MessagePdu;

    .line 679
    iget-object p1, p0, Lo/FI$VoiceInteractor$5;->c:Lio/reactivex/ObservableEmitter;

    .line 680
    new-instance v0, Lkotlin/Pair;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 679
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 688
    :goto_1
    iget-object p1, p0, Lo/FI$VoiceInteractor$5;->c:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
