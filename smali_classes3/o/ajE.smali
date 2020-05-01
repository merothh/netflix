.class public Lo/ajE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lio/reactivex/disposables/Disposable;

.field private final e:Lcom/uber/rxdogtag/DogTagSingleObserver;


# direct methods
.method public constructor <init>(Lcom/uber/rxdogtag/DogTagSingleObserver;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ajE;->e:Lcom/uber/rxdogtag/DogTagSingleObserver;

    iput-object p2, p0, Lo/ajE;->b:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/ajE;->e:Lcom/uber/rxdogtag/DogTagSingleObserver;

    iget-object v1, p0, Lo/ajE;->b:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, v1}, Lcom/uber/rxdogtag/DogTagSingleObserver;->c(Lcom/uber/rxdogtag/DogTagSingleObserver;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
