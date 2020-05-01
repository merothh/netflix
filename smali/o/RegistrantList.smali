.class public final Lo/RegistrantList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lo/aot<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/RegistrantList;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static final synthetic b(Lo/RegistrantList;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/RegistrantList;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method


# virtual methods
.method public final d(Lo/alA;Lo/ale;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alA<",
            "-",
            "Lo/ale<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lo/ale<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$1;

    iget v1, v0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$1;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$1;->b:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$1;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$1;

    invoke-direct {v0, p0, p2}, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$1;-><init>(Lo/RegistrantList;Lo/ale;)V

    :goto_0
    iget-object p2, v0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$1;->d:Ljava/lang/Object;

    invoke-static {}, Lo/alh;->d()Ljava/lang/Object;

    move-result-object v1

    .line 60
    iget v2, v0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$1;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$1;->c:Ljava/lang/Object;

    check-cast p1, Lo/alA;

    iget-object p1, v0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$1;->e:Ljava/lang/Object;

    check-cast p1, Lo/RegistrantList;

    invoke-static {p2}, Lo/akf;->b(Ljava/lang/Object;)V

    goto :goto_2

    .line 64
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_2
    iget-object p1, v0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$1;->c:Ljava/lang/Object;

    check-cast p1, Lo/alA;

    iget-object v2, v0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$1;->e:Ljava/lang/Object;

    check-cast v2, Lo/RegistrantList;

    invoke-static {p2}, Lo/akf;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lo/akf;->b(Ljava/lang/Object;)V

    .line 62
    iget-object p2, p0, Lo/RegistrantList;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/aot;

    if-eqz p2, :cond_4

    check-cast p2, Lo/aoU;

    iput-object p0, v0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$1;->e:Ljava/lang/Object;

    iput-object p1, v0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$1;->c:Ljava/lang/Object;

    iput v4, v0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$1;->b:I

    invoke-static {p2, v0}, Lo/aoS;->b(Lo/aoU;Lo/ale;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 64
    :goto_1
    new-instance p2, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;

    const/4 v4, 0x0

    invoke-direct {p2, v2, p1, v4}, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$2;-><init>(Lo/RegistrantList;Lo/alA;Lo/ale;)V

    check-cast p2, Lo/alN;

    iput-object v2, v0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$1;->e:Ljava/lang/Object;

    iput-object p1, v0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$1;->c:Ljava/lang/Object;

    iput v3, v0, Lcom/netflix/android/widgetry/utils/coroutines/ControlledRunner$cancelPreviousThenRun$1;->b:I

    invoke-static {p2, v0}, Lo/aoq;->c(Lo/alN;Lo/ale;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p2
.end method
