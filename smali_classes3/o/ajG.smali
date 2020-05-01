.class public Lo/ajG;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/uber/rxdogtag/DogTagSubscriber;

.field private final e:Lorg/reactivestreams/Subscription;


# direct methods
.method public constructor <init>(Lcom/uber/rxdogtag/DogTagSubscriber;Lorg/reactivestreams/Subscription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ajG;->a:Lcom/uber/rxdogtag/DogTagSubscriber;

    iput-object p2, p0, Lo/ajG;->e:Lorg/reactivestreams/Subscription;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/ajG;->a:Lcom/uber/rxdogtag/DogTagSubscriber;

    iget-object v1, p0, Lo/ajG;->e:Lorg/reactivestreams/Subscription;

    invoke-static {v0, v1}, Lcom/uber/rxdogtag/DogTagSubscriber;->c(Lcom/uber/rxdogtag/DogTagSubscriber;Lorg/reactivestreams/Subscription;)V

    return-void
.end method
