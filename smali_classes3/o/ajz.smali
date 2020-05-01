.class public Lo/ajz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final d:Lcom/uber/rxdogtag/DogTagObserver;


# direct methods
.method public constructor <init>(Lcom/uber/rxdogtag/DogTagObserver;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ajz;->d:Lcom/uber/rxdogtag/DogTagObserver;

    iput-object p2, p0, Lo/ajz;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/ajz;->d:Lcom/uber/rxdogtag/DogTagObserver;

    iget-object v1, p0, Lo/ajz;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uber/rxdogtag/DogTagObserver;->d(Lcom/uber/rxdogtag/DogTagObserver;Ljava/lang/Object;)V

    return-void
.end method
