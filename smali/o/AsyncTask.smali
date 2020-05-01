.class public final Lo/AsyncTask;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final b:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "Ljava/lang/Throwable;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lo/alA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alA<",
            "Ljava/lang/Object;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lo/alB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alB<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    sget-object v0, Lcom/netflix/android/kotlinx/AutoDisposableKt$onNextStub$1;->d:Lcom/netflix/android/kotlinx/AutoDisposableKt$onNextStub$1;

    check-cast v0, Lo/alA;

    sput-object v0, Lo/AsyncTask;->c:Lo/alA;

    .line 38
    sget-object v0, Lcom/netflix/android/kotlinx/AutoDisposableKt$onErrorStub$1;->a:Lcom/netflix/android/kotlinx/AutoDisposableKt$onErrorStub$1;

    check-cast v0, Lo/alA;

    sput-object v0, Lo/AsyncTask;->b:Lo/alA;

    .line 39
    sget-object v0, Lcom/netflix/android/kotlinx/AutoDisposableKt$onCompleteStub$1;->a:Lcom/netflix/android/kotlinx/AutoDisposableKt$onCompleteStub$1;

    check-cast v0, Lo/alB;

    sput-object v0, Lo/AsyncTask;->d:Lo/alB;

    return-void
.end method

.method public static synthetic b(Lcom/uber/autodispose/ObservableSubscribeProxy;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 45
    sget-object p1, Lo/AsyncTask;->b:Lo/alA;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 46
    sget-object p2, Lo/AsyncTask;->d:Lo/alB;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 47
    sget-object p3, Lo/AsyncTask;->c:Lo/alA;

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lo/AsyncTask;->c(Lcom/uber/autodispose/ObservableSubscribeProxy;Lo/alA;Lo/alB;Lo/alA;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lcom/uber/autodispose/ObservableSubscribeProxy;Lo/alA;Lo/alB;Lo/alA;)Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uber/autodispose/ObservableSubscribeProxy<",
            "TT;>;",
            "Lo/alA<",
            "-",
            "Ljava/lang/Throwable;",
            "Lo/akj;",
            ">;",
            "Lo/alB<",
            "Lo/akj;",
            ">;",
            "Lo/alA<",
            "-TT;",
            "Lo/akj;",
            ">;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    const-string v0, "$this$subscribeBy"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onNext"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lo/AsyncTask;->b:Lo/alA;

    if-ne p1, v0, :cond_0

    sget-object v0, Lo/AsyncTask;->d:Lo/alB;

    if-ne p2, v0, :cond_0

    .line 50
    new-instance p1, Lo/NfcF;

    invoke-direct {p1, p3}, Lo/NfcF;-><init>(Lo/alA;)V

    check-cast p1, Lio/reactivex/functions/Consumer;

    invoke-interface {p0, p1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->a(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    const-string p1, "subscribe(onNext)"

    invoke-static {p0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Lo/NfcF;

    invoke-direct {v0, p3}, Lo/NfcF;-><init>(Lo/alA;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    new-instance p3, Lo/NfcF;

    invoke-direct {p3, p1}, Lo/NfcF;-><init>(Lo/alA;)V

    check-cast p3, Lio/reactivex/functions/Consumer;

    new-instance p1, Lo/AsyncResult;

    invoke-direct {p1, p2}, Lo/AsyncResult;-><init>(Lo/alB;)V

    check-cast p1, Lio/reactivex/functions/Action;

    invoke-interface {p0, v0, p3, p1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    const-string p1, "subscribe(onNext, onError, onComplete)"

    invoke-static {p0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method
