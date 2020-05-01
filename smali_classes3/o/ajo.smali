.class public Lo/ajo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lio/reactivex/disposables/Disposable;

.field private final d:Lcom/uber/rxdogtag/DogTagMaybeObserver;


# direct methods
.method public constructor <init>(Lcom/uber/rxdogtag/DogTagMaybeObserver;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ajo;->d:Lcom/uber/rxdogtag/DogTagMaybeObserver;

    iput-object p2, p0, Lo/ajo;->b:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/ajo;->d:Lcom/uber/rxdogtag/DogTagMaybeObserver;

    iget-object v1, p0, Lo/ajo;->b:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, v1}, Lcom/uber/rxdogtag/DogTagMaybeObserver;->c(Lcom/uber/rxdogtag/DogTagMaybeObserver;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
