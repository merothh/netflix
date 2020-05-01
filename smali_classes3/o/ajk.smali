.class public Lo/ajk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;


# instance fields
.field private final d:Lcom/uber/rxdogtag/DogTagCompletableObserver;


# direct methods
.method public constructor <init>(Lcom/uber/rxdogtag/DogTagCompletableObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ajk;->d:Lcom/uber/rxdogtag/DogTagCompletableObserver;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/ajk;->d:Lcom/uber/rxdogtag/DogTagCompletableObserver;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/uber/rxdogtag/DogTagCompletableObserver;->c(Lcom/uber/rxdogtag/DogTagCompletableObserver;Ljava/lang/Throwable;)V

    return-void
.end method
