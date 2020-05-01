.class public final Lo/Sm$Application;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Sm;->a(Lo/hW;Ljava/util/List;Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic c:Lio/reactivex/ObservableEmitter;

.field final synthetic d:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic e:Lo/hW;


# direct methods
.method constructor <init>(Lo/hW;Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p1, p0, Lo/Sm$Application;->e:Lo/hW;

    iput-object p2, p0, Lo/Sm$Application;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lo/Sm$Application;->d:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p4, p0, Lo/Sm$Application;->c:Lio/reactivex/ObservableEmitter;

    .line 60
    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lo/Ay;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 66
    iget-object p2, p0, Lo/Sm$Application;->a:Ljava/util/ArrayList;

    invoke-interface {p1}, Lo/Ay;->getBoxshotUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_0
    move-object p1, p0

    check-cast p1, Lo/Sm$Application;

    .line 68
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "DownloadedForYouRepository: error retrieving video summary"

    .line 69
    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 71
    :goto_0
    iget-object p1, p0, Lo/Sm$Application;->d:Lkotlin/jvm/internal/Ref$IntRef;

    iget p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    .line 72
    iget-object p1, p0, Lo/Sm$Application;->d:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    if-gtz p1, :cond_1

    .line 73
    iget-object p1, p0, Lo/Sm$Application;->c:Lio/reactivex/ObservableEmitter;

    .line 74
    new-instance p2, Lo/Sh$TaskDescription;

    .line 75
    iget-object v0, p0, Lo/Sm$Application;->a:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    .line 74
    invoke-direct {p2, v0}, Lo/Sh$TaskDescription;-><init>(Ljava/util/List;)V

    .line 73
    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 78
    iget-object p1, p0, Lo/Sm$Application;->c:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    :cond_1
    return-void
.end method
