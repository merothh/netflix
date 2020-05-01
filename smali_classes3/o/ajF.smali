.class public Lo/ajF;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/uber/rxdogtag/DogTagSingleObserver;

.field private final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/uber/rxdogtag/DogTagSingleObserver;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ajF;->a:Lcom/uber/rxdogtag/DogTagSingleObserver;

    iput-object p2, p0, Lo/ajF;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/ajF;->a:Lcom/uber/rxdogtag/DogTagSingleObserver;

    iget-object v1, p0, Lo/ajF;->e:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uber/rxdogtag/DogTagSingleObserver;->d(Lcom/uber/rxdogtag/DogTagSingleObserver;Ljava/lang/Object;)V

    return-void
.end method
