.class final Lo/FI$LoaderManager$TaskDescription;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FI$LoaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TaskDescription"
.end annotation


# instance fields
.field final synthetic a:Lo/FI$LoaderManager;

.field private final b:Ljava/lang/Integer;

.field private final c:I


# direct methods
.method public constructor <init>(Lo/FI$LoaderManager;ILjava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 560
    iput-object p1, p0, Lo/FI$LoaderManager$TaskDescription;->a:Lo/FI$LoaderManager;

    .line 563
    sget-object p1, Lo/FI;->e:Lo/FI$Application;

    invoke-virtual {p1}, Lo/FI$Application;->getLogTag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/zP;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lo/FI$LoaderManager$TaskDescription;->c:I

    iput-object p3, p0, Lo/FI$LoaderManager$TaskDescription;->b:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public f(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/Ba;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    invoke-super {p0, p1, p2}, Lo/zP;->f(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 569
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    sget-object p1, Lo/FI;->e:Lo/FI$Application;

    check-cast p1, Lo/MessagePdu;

    .line 571
    iget-object p1, p0, Lo/FI$LoaderManager$TaskDescription;->a:Lo/FI$LoaderManager;

    invoke-virtual {p1}, Lo/FI$LoaderManager;->d()Lio/reactivex/ObservableEmitter;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 575
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 576
    iget-object v0, p0, Lo/FI$LoaderManager$TaskDescription;->a:Lo/FI$LoaderManager;

    invoke-virtual {v0}, Lo/FI$LoaderManager;->d()Lio/reactivex/ObservableEmitter;

    move-result-object v0

    new-instance v1, Lo/FC$TaskStackBuilder;

    invoke-direct {v1, p1, p2}, Lo/FC$TaskStackBuilder;-><init>(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 579
    :cond_1
    iget-object p1, p0, Lo/FI$LoaderManager$TaskDescription;->a:Lo/FI$LoaderManager;

    invoke-virtual {p1}, Lo/FI$LoaderManager;->d()Lio/reactivex/ObservableEmitter;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
