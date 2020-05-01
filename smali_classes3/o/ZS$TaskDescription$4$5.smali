.class public final Lo/ZS$TaskDescription$4$5;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZS$TaskDescription$4;->run(Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/ZS$TaskDescription$4;


# direct methods
.method constructor <init>(Lo/ZS$TaskDescription$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lo/ZS$TaskDescription$4$5;->c:Lo/ZS$TaskDescription$4;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 1

    const-string p3, "res"

    invoke-static {p2, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 51
    iget-object p1, p0, Lo/ZS$TaskDescription$4$5;->c:Lo/ZS$TaskDescription$4;

    iget-object p1, p1, Lo/ZS$TaskDescription$4;->d:Lio/reactivex/ObservableEmitter;

    sget-object p2, Lo/ZR$ActionBar;->a:Lo/ZR$ActionBar;

    invoke-interface {p1, p2}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 54
    iget-object p3, p0, Lo/ZS$TaskDescription$4$5;->c:Lo/ZS$TaskDescription$4;

    iget-object p3, p3, Lo/ZS$TaskDescription$4;->d:Lio/reactivex/ObservableEmitter;

    .line 55
    new-instance v0, Lo/ZR$ComponentCallbacks;

    invoke-direct {v0, p1, p2}, Lo/ZR$ComponentCallbacks;-><init>(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 54
    invoke-interface {p3, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 62
    :cond_1
    :goto_0
    iget-object p1, p0, Lo/ZS$TaskDescription$4$5;->c:Lo/ZS$TaskDescription$4;

    iget-object p1, p1, Lo/ZS$TaskDescription$4;->a:Lo/ZS$TaskDescription;

    iget-object p1, p1, Lo/ZS$TaskDescription;->e:Lkotlin/jvm/internal/Ref$IntRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    iget-object p2, p0, Lo/ZS$TaskDescription$4$5;->c:Lo/ZS$TaskDescription$4;

    iget-object p2, p2, Lo/ZS$TaskDescription$4;->a:Lo/ZS$TaskDescription;

    iget-object p2, p2, Lo/ZS$TaskDescription;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_2

    .line 63
    iget-object p1, p0, Lo/ZS$TaskDescription$4$5;->c:Lo/ZS$TaskDescription$4;

    iget-object p1, p1, Lo/ZS$TaskDescription$4;->d:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    .line 65
    :cond_2
    iget-object p1, p0, Lo/ZS$TaskDescription$4$5;->c:Lo/ZS$TaskDescription$4;

    iget-object p1, p1, Lo/ZS$TaskDescription$4;->a:Lo/ZS$TaskDescription;

    iget-object p1, p1, Lo/ZS$TaskDescription;->e:Lkotlin/jvm/internal/Ref$IntRef;

    iget p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    return-void
.end method
