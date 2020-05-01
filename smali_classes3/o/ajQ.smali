.class public Lo/ajQ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final c:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final e:Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ajQ;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p2, p0, Lo/ajQ;->e:Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lo/ajQ;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    iget-object v1, p0, Lo/ajQ;->e:Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;

    invoke-static {v0, v1, p1, p2}, Lcom/uber/rxdogtag/RxDogTag;->b(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/uber/rxdogtag/RxDogTag$NonCheckingConsumer;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
