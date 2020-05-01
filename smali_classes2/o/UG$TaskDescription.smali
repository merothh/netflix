.class final Lo/UG$TaskDescription;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TaskDescription"
.end annotation


# instance fields
.field final synthetic a:Lo/UG;

.field private final b:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Lkotlin/Pair<",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "Lcom/netflix/model/leafs/PostPlayExperience;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/UG;Lio/reactivex/ObservableEmitter;)V
    .locals 1
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

    const-string v0, "publisher"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lo/UG$TaskDescription;->a:Lo/UG;

    .line 84
    invoke-direct {p0}, Lo/cq;-><init>()V

    iput-object p2, p0, Lo/UG$TaskDescription;->b:Lio/reactivex/ObservableEmitter;

    return-void
.end method


# virtual methods
.method public d(Lo/AW;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-super {p0, p1, p2}, Lo/cq;->d(Lo/AW;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 92
    iget-object v0, p0, Lo/UG$TaskDescription;->b:Lio/reactivex/ObservableEmitter;

    .line 93
    new-instance v1, Lkotlin/Pair;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/AW;->A()Lcom/netflix/model/leafs/PostPlayExperience;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v1, p2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 95
    iget-object p1, p0, Lo/UG$TaskDescription;->b:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
