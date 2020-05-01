.class public Lo/ajw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/uber/rxdogtag/DogTagObserver;

.field private final e:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>(Lcom/uber/rxdogtag/DogTagObserver;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ajw;->a:Lcom/uber/rxdogtag/DogTagObserver;

    iput-object p2, p0, Lo/ajw;->e:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/ajw;->a:Lcom/uber/rxdogtag/DogTagObserver;

    iget-object v1, p0, Lo/ajw;->e:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, v1}, Lcom/uber/rxdogtag/DogTagObserver;->d(Lcom/uber/rxdogtag/DogTagObserver;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
