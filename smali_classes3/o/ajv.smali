.class public Lo/ajv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final c:Lcom/uber/rxdogtag/DogTagMaybeObserver;


# direct methods
.method public constructor <init>(Lcom/uber/rxdogtag/DogTagMaybeObserver;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ajv;->c:Lcom/uber/rxdogtag/DogTagMaybeObserver;

    iput-object p2, p0, Lo/ajv;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/ajv;->c:Lcom/uber/rxdogtag/DogTagMaybeObserver;

    iget-object v1, p0, Lo/ajv;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uber/rxdogtag/DogTagMaybeObserver;->e(Lcom/uber/rxdogtag/DogTagMaybeObserver;Ljava/lang/Object;)V

    return-void
.end method
