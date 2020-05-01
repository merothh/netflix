.class public Lo/ajl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final c:Lcom/uber/rxdogtag/DogTagCompletableObserver;

.field private final e:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>(Lcom/uber/rxdogtag/DogTagCompletableObserver;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ajl;->c:Lcom/uber/rxdogtag/DogTagCompletableObserver;

    iput-object p2, p0, Lo/ajl;->e:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/ajl;->c:Lcom/uber/rxdogtag/DogTagCompletableObserver;

    iget-object v1, p0, Lo/ajl;->e:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, v1}, Lcom/uber/rxdogtag/DogTagCompletableObserver;->b(Lcom/uber/rxdogtag/DogTagCompletableObserver;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
