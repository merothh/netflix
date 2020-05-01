.class final Lo/FI$TaskDescription;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TaskDescription"
.end annotation


# instance fields
.field private final a:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "Lo/FC;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field final synthetic c:Lo/FI;

.field private final d:J

.field private final f:I


# direct methods
.method public constructor <init>(Lo/FI;Lio/reactivex/ObservableEmitter;JII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/FC;",
            ">;JII)V"
        }
    .end annotation

    const-string v0, "publisher"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 584
    iput-object p1, p0, Lo/FI$TaskDescription;->c:Lo/FI;

    .line 589
    sget-object p1, Lo/FI;->e:Lo/FI$Application;

    invoke-virtual {p1}, Lo/FI$Application;->getLogTag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/zP;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lo/FI$TaskDescription;->a:Lio/reactivex/ObservableEmitter;

    iput-wide p3, p0, Lo/FI$TaskDescription;->d:J

    iput p5, p0, Lo/FI$TaskDescription;->b:I

    iput p6, p0, Lo/FI$TaskDescription;->f:I

    return-void
.end method


# virtual methods
.method public j(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AS;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    invoke-super {p0, p1, p2}, Lo/zP;->j(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 593
    iget-object v0, p0, Lo/FI$TaskDescription;->a:Lio/reactivex/ObservableEmitter;

    new-instance v8, Lo/FC$PendingIntent;

    iget-wide v4, p0, Lo/FI$TaskDescription;->d:J

    iget v6, p0, Lo/FI$TaskDescription;->b:I

    iget v7, p0, Lo/FI$TaskDescription;->f:I

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lo/FC$PendingIntent;-><init>(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;JII)V

    invoke-interface {v0, v8}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 594
    iget-object p1, p0, Lo/FI$TaskDescription;->a:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
