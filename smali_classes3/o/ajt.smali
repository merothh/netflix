.class public Lo/ajt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;


# instance fields
.field private final e:Lcom/uber/rxdogtag/DogTagObserver;


# direct methods
.method public constructor <init>(Lcom/uber/rxdogtag/DogTagObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ajt;->e:Lcom/uber/rxdogtag/DogTagObserver;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/ajt;->e:Lcom/uber/rxdogtag/DogTagObserver;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/uber/rxdogtag/DogTagObserver;->c(Lcom/uber/rxdogtag/DogTagObserver;Ljava/lang/Throwable;)V

    return-void
.end method
