.class public Lo/ajs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;


# instance fields
.field private final b:Lcom/uber/rxdogtag/DogTagMaybeObserver;


# direct methods
.method public constructor <init>(Lcom/uber/rxdogtag/DogTagMaybeObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ajs;->b:Lcom/uber/rxdogtag/DogTagMaybeObserver;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/ajs;->b:Lcom/uber/rxdogtag/DogTagMaybeObserver;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/uber/rxdogtag/DogTagMaybeObserver;->b(Lcom/uber/rxdogtag/DogTagMaybeObserver;Ljava/lang/Throwable;)V

    return-void
.end method
