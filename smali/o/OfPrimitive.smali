.class public abstract Lo/OfPrimitive;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/OfPrimitive$TaskDescription;,
        Lo/OfPrimitive$Application;,
        Lo/OfPrimitive$StateListAnimator;
    }
.end annotation


# static fields
.field private static final DELAY_TO_CHECK_ADAPTER_COUNT_MS:I = 0xbb8

.field private static final NO_OP_TIMER:Lo/CipherOutputStream;

.field public static defaultDiffingHandler:Landroid/os/Handler;

.field public static defaultModelBuildingHandler:Landroid/os/Handler;

.field private static filterDuplicatesDefault:Z

.field private static globalDebugLoggingEnabled:Z

.field private static globalExceptionHandler:Lo/OfPrimitive$TaskDescription;


# instance fields
.field private final adapter:Lo/OfLong;

.field private final buildModelsRunnable:Ljava/lang/Runnable;

.field private debugObserver:Lo/BiFunction;

.field private volatile filterDuplicates:Z

.field private volatile hasBuiltModelsEver:Z

.field private final helper:Lo/Random;

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/OfPrimitive$Application;",
            ">;"
        }
    .end annotation
.end field

.field private final modelBuildHandler:Landroid/os/Handler;

.field private modelInterceptorCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/OfPrimitive$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private modelsBeingBuilt:Lcom/airbnb/epoxy/ControllerModelList;

.field private recyclerViewAttachCount:I

.field private volatile requestedModelBuildType:I

.field private stagedModel:Lo/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BiConsumer<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile threadBuildingModels:Ljava/lang/Thread;

.field private timer:Lo/CipherOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lo/IntStream;

    invoke-direct {v0}, Lo/IntStream;-><init>()V

    sput-object v0, Lo/OfPrimitive;->NO_OP_TIMER:Lo/CipherOutputStream;

    .line 54
    sget-object v0, Lo/BaseStream;->d:Lo/BaseStream;

    iget-object v0, v0, Lo/BaseStream;->b:Landroid/os/Handler;

    sput-object v0, Lo/OfPrimitive;->defaultModelBuildingHandler:Landroid/os/Handler;

    .line 55
    sget-object v0, Lo/BaseStream;->d:Lo/BaseStream;

    iget-object v0, v0, Lo/BaseStream;->b:Landroid/os/Handler;

    sput-object v0, Lo/OfPrimitive;->defaultDiffingHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 56
    sput-boolean v0, Lo/OfPrimitive;->filterDuplicatesDefault:Z

    .line 57
    sput-boolean v0, Lo/OfPrimitive;->globalDebugLoggingEnabled:Z

    .line 755
    new-instance v0, Lo/OfPrimitive$4;

    invoke-direct {v0}, Lo/OfPrimitive$4;-><init>()V

    sput-object v0, Lo/OfPrimitive;->globalExceptionHandler:Lo/OfPrimitive$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 104
    sget-object v0, Lo/OfPrimitive;->defaultModelBuildingHandler:Landroid/os/Handler;

    sget-object v1, Lo/OfPrimitive;->defaultDiffingHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1}, Lo/OfPrimitive;-><init>(Landroid/os/Handler;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lo/OfPrimitive;->recyclerViewAttachCount:I

    .line 68
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lo/OfPrimitive;->interceptors:Ljava/util/List;

    .line 71
    sget-boolean v1, Lo/OfPrimitive;->filterDuplicatesDefault:Z

    iput-boolean v1, p0, Lo/OfPrimitive;->filterDuplicates:Z

    const/4 v1, 0x0

    .line 79
    iput-object v1, p0, Lo/OfPrimitive;->threadBuildingModels:Ljava/lang/Thread;

    .line 95
    sget-object v1, Lo/OfPrimitive;->NO_OP_TIMER:Lo/CipherOutputStream;

    iput-object v1, p0, Lo/OfPrimitive;->timer:Lo/CipherOutputStream;

    .line 96
    invoke-static {p0}, Lo/RandomAccess;->d(Lo/OfPrimitive;)Lo/Random;

    move-result-object v1

    iput-object v1, p0, Lo/OfPrimitive;->helper:Lo/Random;

    .line 120
    iput v0, p0, Lo/OfPrimitive;->requestedModelBuildType:I

    .line 253
    new-instance v0, Lo/OfPrimitive$5;

    invoke-direct {v0, p0}, Lo/OfPrimitive$5;-><init>(Lo/OfPrimitive;)V

    iput-object v0, p0, Lo/OfPrimitive;->buildModelsRunnable:Ljava/lang/Runnable;

    .line 108
    new-instance v0, Lo/OfLong;

    invoke-direct {v0, p0, p2}, Lo/OfLong;-><init>(Lo/OfPrimitive;Landroid/os/Handler;)V

    iput-object v0, p0, Lo/OfPrimitive;->adapter:Lo/OfLong;

    .line 109
    iput-object p1, p0, Lo/OfPrimitive;->modelBuildHandler:Landroid/os/Handler;

    .line 110
    sget-boolean p1, Lo/OfPrimitive;->globalDebugLoggingEnabled:Z

    invoke-virtual {p0, p1}, Lo/OfPrimitive;->setDebugLoggingEnabled(Z)V

    return-void
.end method

.method static synthetic access$002(Lo/OfPrimitive;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 42
    iput-object p1, p0, Lo/OfPrimitive;->threadBuildingModels:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$100(Lo/OfPrimitive;)Lo/Random;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/OfPrimitive;->helper:Lo/Random;

    return-object p0
.end method

.method static synthetic access$1000(Lo/OfPrimitive;)I
    .locals 0

    .line 42
    iget p0, p0, Lo/OfPrimitive;->recyclerViewAttachCount:I

    return p0
.end method

.method static synthetic access$200(Lo/OfPrimitive;)Lcom/airbnb/epoxy/ControllerModelList;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/OfPrimitive;->modelsBeingBuilt:Lcom/airbnb/epoxy/ControllerModelList;

    return-object p0
.end method

.method static synthetic access$202(Lo/OfPrimitive;Lcom/airbnb/epoxy/ControllerModelList;)Lcom/airbnb/epoxy/ControllerModelList;
    .locals 0

    .line 42
    iput-object p1, p0, Lo/OfPrimitive;->modelsBeingBuilt:Lcom/airbnb/epoxy/ControllerModelList;

    return-object p1
.end method

.method static synthetic access$300(Lo/OfPrimitive;)I
    .locals 0

    .line 42
    invoke-direct {p0}, Lo/OfPrimitive;->getExpectedModelCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lo/OfPrimitive;)Lo/CipherOutputStream;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/OfPrimitive;->timer:Lo/CipherOutputStream;

    return-object p0
.end method

.method static synthetic access$502(Lo/OfPrimitive;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lo/OfPrimitive;->hasBuiltModelsEver:Z

    return p1
.end method

.method static synthetic access$602(Lo/OfPrimitive;Lo/BiConsumer;)Lo/BiConsumer;
    .locals 0

    .line 42
    iput-object p1, p0, Lo/OfPrimitive;->stagedModel:Lo/BiConsumer;

    return-object p1
.end method

.method static synthetic access$700(Lo/OfPrimitive;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lo/OfPrimitive;->runInterceptors()V

    return-void
.end method

.method static synthetic access$800(Lo/OfPrimitive;Ljava/util/List;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lo/OfPrimitive;->filterDuplicatesIfNeeded(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lo/OfPrimitive;)Lo/OfLong;
    .locals 0

    .line 42
    iget-object p0, p0, Lo/OfPrimitive;->adapter:Lo/OfLong;

    return-object p0
.end method

.method private assertIsBuildingModels()V
    .locals 2

    .line 446
    invoke-virtual {p0}, Lo/OfPrimitive;->isBuildingModels()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 447
    :cond_0
    new-instance v0, Lcom/airbnb/epoxy/IllegalEpoxyUsage;

    const-string v1, "Can only call this when inside the `buildModels` method"

    invoke-direct {v0, v1}, Lcom/airbnb/epoxy/IllegalEpoxyUsage;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertNotBuildingModels()V
    .locals 2

    .line 452
    invoke-virtual {p0}, Lo/OfPrimitive;->isBuildingModels()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 453
    :cond_0
    new-instance v0, Lcom/airbnb/epoxy/IllegalEpoxyUsage;

    const-string v1, "Cannot call this from inside `buildModels`"

    invoke-direct {v0, v1}, Lcom/airbnb/epoxy/IllegalEpoxyUsage;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private filterDuplicatesIfNeeded(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/BiConsumer<",
            "*>;>;)V"
        }
    .end annotation

    .line 553
    iget-boolean v0, p0, Lo/OfPrimitive;->filterDuplicates:Z

    if-nez v0, :cond_0

    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lo/OfPrimitive;->timer:Lo/CipherOutputStream;

    const-string v1, "Duplicates filtered"

    invoke-interface {v0, v1}, Lo/CipherOutputStream;->a(Ljava/lang/String;)V

    .line 558
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 560
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 561
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 562
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/BiConsumer;

    .line 563
    invoke-virtual {v2}, Lo/BiConsumer;->d()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 564
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v3

    .line 565
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 567
    invoke-direct {p0, p1, v2}, Lo/OfPrimitive;->findPositionOfDuplicate(Ljava/util/List;Lo/BiConsumer;)I

    move-result v4

    .line 568
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/BiConsumer;

    if-gt v3, v4, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 574
    :cond_2
    new-instance v6, Lcom/airbnb/epoxy/IllegalEpoxyUsage;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Two models have the same ID. ID\'s must be unique!\nOriginal has position "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":\n"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\nDuplicate has position "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/airbnb/epoxy/IllegalEpoxyUsage;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lo/OfPrimitive;->onExceptionSwallowed(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 582
    :cond_3
    iget-object p1, p0, Lo/OfPrimitive;->timer:Lo/CipherOutputStream;

    invoke-interface {p1}, Lo/CipherOutputStream;->a()V

    return-void
.end method

.method private findPositionOfDuplicate(Ljava/util/List;Lo/BiConsumer;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/BiConsumer<",
            "*>;>;",
            "Lo/BiConsumer<",
            "*>;)I"
        }
    .end annotation

    .line 586
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 588
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/BiConsumer;

    .line 589
    invoke-virtual {v2}, Lo/BiConsumer;->d()J

    move-result-wide v2

    invoke-virtual {p2}, Lo/BiConsumer;->d()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 594
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No duplicates in list"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getExpectedModelCount()I
    .locals 1

    .line 306
    iget-object v0, p0, Lo/OfPrimitive;->adapter:Lo/OfLong;

    invoke-virtual {v0}, Lo/OfLong;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x19

    :goto_0
    return v0
.end method

.method private runInterceptors()V
    .locals 3

    .line 372
    iget-object v0, p0, Lo/OfPrimitive;->interceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 373
    iget-object v0, p0, Lo/OfPrimitive;->modelInterceptorCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 374
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/OfPrimitive$StateListAnimator;

    .line 375
    invoke-interface {v1, p0}, Lo/OfPrimitive$StateListAnimator;->a(Lo/OfPrimitive;)V

    goto :goto_0

    .line 379
    :cond_0
    iget-object v0, p0, Lo/OfPrimitive;->timer:Lo/CipherOutputStream;

    const-string v1, "Interceptors executed"

    invoke-interface {v0, v1}, Lo/CipherOutputStream;->a(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lo/OfPrimitive;->interceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/OfPrimitive$Application;

    .line 382
    iget-object v2, p0, Lo/OfPrimitive;->modelsBeingBuilt:Lcom/airbnb/epoxy/ControllerModelList;

    invoke-interface {v1, v2}, Lo/OfPrimitive$Application;->b(Ljava/util/List;)V

    goto :goto_1

    .line 385
    :cond_1
    iget-object v0, p0, Lo/OfPrimitive;->timer:Lo/CipherOutputStream;

    invoke-interface {v0}, Lo/CipherOutputStream;->a()V

    .line 387
    iget-object v0, p0, Lo/OfPrimitive;->modelInterceptorCallbacks:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 388
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/OfPrimitive$StateListAnimator;

    .line 389
    invoke-interface {v1, p0}, Lo/OfPrimitive$StateListAnimator;->b(Lo/OfPrimitive;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 397
    iput-object v0, p0, Lo/OfPrimitive;->modelInterceptorCallbacks:Ljava/util/List;

    return-void
.end method

.method public static setGlobalDebugLoggingEnabled(Z)V
    .locals 0

    .line 663
    sput-boolean p0, Lo/OfPrimitive;->globalDebugLoggingEnabled:Z

    return-void
.end method

.method public static setGlobalDuplicateFilteringDefault(Z)V
    .locals 0

    .line 621
    sput-boolean p0, Lo/OfPrimitive;->filterDuplicatesDefault:Z

    return-void
.end method

.method public static setGlobalExceptionHandler(Lo/OfPrimitive$TaskDescription;)V
    .locals 0

    .line 781
    sput-object p0, Lo/OfPrimitive;->globalExceptionHandler:Lo/OfPrimitive$TaskDescription;

    return-void
.end method


# virtual methods
.method protected add(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;)V"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lo/OfPrimitive;->modelsBeingBuilt:Lcom/airbnb/epoxy/ControllerModelList;

    invoke-virtual {v0}, Lcom/airbnb/epoxy/ControllerModelList;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/ControllerModelList;->ensureCapacity(I)V

    .line 484
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BiConsumer;

    .line 485
    invoke-virtual {v0, p0}, Lo/BiConsumer;->a(Lo/OfPrimitive;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public add(Lo/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer<",
            "*>;)V"
        }
    .end annotation

    .line 462
    invoke-virtual {p1, p0}, Lo/BiConsumer;->a(Lo/OfPrimitive;)V

    return-void
.end method

.method protected varargs add([Lo/BiConsumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lo/BiConsumer<",
            "*>;)V"
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lo/OfPrimitive;->modelsBeingBuilt:Lcom/airbnb/epoxy/ControllerModelList;

    invoke-virtual {v0}, Lcom/airbnb/epoxy/ControllerModelList;->size()I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/ControllerModelList;->ensureCapacity(I)V

    .line 472
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 473
    invoke-virtual {v2, p0}, Lo/BiConsumer;->a(Lo/OfPrimitive;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected addAfterInterceptorCallback(Lo/OfPrimitive$StateListAnimator;)V
    .locals 1

    .line 353
    invoke-direct {p0}, Lo/OfPrimitive;->assertIsBuildingModels()V

    .line 355
    iget-object v0, p0, Lo/OfPrimitive;->modelInterceptorCallbacks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/OfPrimitive;->modelInterceptorCallbacks:Ljava/util/List;

    .line 359
    :cond_0
    iget-object v0, p0, Lo/OfPrimitive;->modelInterceptorCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addCurrentlyStagedModelIfExists()V
    .locals 1

    .line 534
    iget-object v0, p0, Lo/OfPrimitive;->stagedModel:Lo/BiConsumer;

    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {v0, p0}, Lo/BiConsumer;->a(Lo/OfPrimitive;)V

    :cond_0
    const/4 v0, 0x0

    .line 537
    iput-object v0, p0, Lo/OfPrimitive;->stagedModel:Lo/BiConsumer;

    return-void
.end method

.method public addInterceptor(Lo/OfPrimitive$Application;)V
    .locals 1

    .line 424
    iget-object v0, p0, Lo/OfPrimitive;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addInternal(Lo/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer<",
            "*>;)V"
        }
    .end annotation

    .line 494
    invoke-direct {p0}, Lo/OfPrimitive;->assertIsBuildingModels()V

    .line 496
    invoke-virtual {p1}, Lo/BiConsumer;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 502
    invoke-virtual {p1}, Lo/BiConsumer;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p0, p1}, Lo/OfPrimitive;->clearModelFromStaging(Lo/BiConsumer;)V

    const/4 v0, 0x0

    .line 511
    iput-object v0, p1, Lo/BiConsumer;->d:Lo/OfPrimitive;

    .line 512
    iget-object v0, p0, Lo/OfPrimitive;->modelsBeingBuilt:Lcom/airbnb/epoxy/ControllerModelList;

    invoke-virtual {v0, p1}, Lcom/airbnb/epoxy/ControllerModelList;->a(Lo/BiConsumer;)Z

    return-void

    .line 503
    :cond_0
    new-instance p1, Lcom/airbnb/epoxy/IllegalEpoxyUsage;

    const-string v0, "You cannot hide a model in an EpoxyController. Use `addIf` to conditionally add a model instead."

    invoke-direct {p1, v0}, Lcom/airbnb/epoxy/IllegalEpoxyUsage;-><init>(Ljava/lang/String;)V

    throw p1

    .line 497
    :cond_1
    new-instance p1, Lcom/airbnb/epoxy/IllegalEpoxyUsage;

    const-string v0, "You must set an id on a model before adding it. Use the @AutoModel annotation if you want an id to be automatically generated for you."

    invoke-direct {p1, v0}, Lcom/airbnb/epoxy/IllegalEpoxyUsage;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addModelBuildListener(Lo/BadPaddingException;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lo/OfPrimitive;->adapter:Lo/OfLong;

    invoke-virtual {v0, p1}, Lo/OfLong;->b(Lo/BadPaddingException;)V

    return-void
.end method

.method protected abstract buildModels()V
.end method

.method public declared-synchronized cancelPendingModelBuild()V
    .locals 2

    monitor-enter p0

    .line 247
    :try_start_0
    iget v0, p0, Lo/OfPrimitive;->requestedModelBuildType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 248
    iput v0, p0, Lo/OfPrimitive;->requestedModelBuildType:I

    .line 249
    iget-object v0, p0, Lo/OfPrimitive;->modelBuildHandler:Landroid/os/Handler;

    iget-object v1, p0, Lo/OfPrimitive;->buildModelsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method clearModelFromStaging(Lo/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer<",
            "*>;)V"
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lo/OfPrimitive;->stagedModel:Lo/BiConsumer;

    if-eq v0, p1, :cond_0

    .line 542
    invoke-virtual {p0}, Lo/OfPrimitive;->addCurrentlyStagedModelIfExists()V

    :cond_0
    const/4 p1, 0x0

    .line 544
    iput-object p1, p0, Lo/OfPrimitive;->stagedModel:Lo/BiConsumer;

    return-void
.end method

.method public getAdapter()Lo/OfLong;
    .locals 1

    .line 694
    iget-object v0, p0, Lo/OfPrimitive;->adapter:Lo/OfLong;

    return-object v0
.end method

.method getFirstIndexOfModelInBuildingList(Lo/BiConsumer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer<",
            "*>;)I"
        }
    .end annotation

    .line 326
    invoke-direct {p0}, Lo/OfPrimitive;->assertIsBuildingModels()V

    .line 328
    iget-object v0, p0, Lo/OfPrimitive;->modelsBeingBuilt:Lcom/airbnb/epoxy/ControllerModelList;

    invoke-virtual {v0}, Lcom/airbnb/epoxy/ControllerModelList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 330
    iget-object v2, p0, Lo/OfPrimitive;->modelsBeingBuilt:Lcom/airbnb/epoxy/ControllerModelList;

    invoke-virtual {v2, v1}, Lcom/airbnb/epoxy/ControllerModelList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected getModelCountBuiltSoFar()I
    .locals 1

    .line 441
    invoke-direct {p0}, Lo/OfPrimitive;->assertIsBuildingModels()V

    .line 442
    iget-object v0, p0, Lo/OfPrimitive;->modelsBeingBuilt:Lcom/airbnb/epoxy/ControllerModelList;

    invoke-virtual {v0}, Lcom/airbnb/epoxy/ControllerModelList;->size()I

    move-result v0

    return v0
.end method

.method public getSpanCount()I
    .locals 1

    .line 728
    iget-object v0, p0, Lo/OfPrimitive;->adapter:Lo/OfLong;

    invoke-virtual {v0}, Lo/OfLong;->b()I

    move-result v0

    return v0
.end method

.method public getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;
    .locals 1

    .line 713
    iget-object v0, p0, Lo/OfPrimitive;->adapter:Lo/OfLong;

    invoke-virtual {v0}, Lo/OfLong;->c()Landroidx/recyclerview/widget/GridLayoutManager$StateListAnimator;

    move-result-object v0

    return-object v0
.end method

.method public hasPendingModelBuild()Z
    .locals 1

    .line 171
    iget v0, p0, Lo/OfPrimitive;->requestedModelBuildType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/OfPrimitive;->threadBuildingModels:Ljava/lang/Thread;

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/OfPrimitive;->adapter:Lo/OfLong;

    .line 173
    invoke-virtual {v0}, Lo/OfLong;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected isBuildingModels()Z
    .locals 2

    .line 549
    iget-object v0, p0, Lo/OfPrimitive;->threadBuildingModels:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDebugLoggingEnabled()Z
    .locals 2

    .line 653
    iget-object v0, p0, Lo/OfPrimitive;->timer:Lo/CipherOutputStream;

    sget-object v1, Lo/OfPrimitive;->NO_OP_TIMER:Lo/CipherOutputStream;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDuplicateFilteringEnabled()Z
    .locals 1

    .line 612
    iget-boolean v0, p0, Lo/OfPrimitive;->filterDuplicates:Z

    return v0
.end method

.method protected isModelAddedMultipleTimes(Lo/BiConsumer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer<",
            "*>;)Z"
        }
    .end annotation

    .line 339
    invoke-direct {p0}, Lo/OfPrimitive;->assertIsBuildingModels()V

    .line 342
    iget-object v0, p0, Lo/OfPrimitive;->modelsBeingBuilt:Lcom/airbnb/epoxy/ControllerModelList;

    invoke-virtual {v0}, Lcom/airbnb/epoxy/ControllerModelList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 344
    iget-object v4, p0, Lo/OfPrimitive;->modelsBeingBuilt:Lcom/airbnb/epoxy/ControllerModelList;

    invoke-virtual {v4, v2}, Lcom/airbnb/epoxy/ControllerModelList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-le v3, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public isMultiSpan()Z
    .locals 1

    .line 732
    iget-object v0, p0, Lo/OfPrimitive;->adapter:Lo/OfLong;

    invoke-virtual {v0}, Lo/OfLong;->h()Z

    move-result v0

    return v0
.end method

.method public moveModel(II)V
    .locals 1

    .line 681
    invoke-direct {p0}, Lo/OfPrimitive;->assertNotBuildingModels()V

    .line 683
    iget-object v0, p0, Lo/OfPrimitive;->adapter:Lo/OfLong;

    invoke-virtual {v0, p1, p2}, Lo/OfLong;->b(II)V

    const/16 p1, 0x1f4

    .line 685
    invoke-virtual {p0, p1}, Lo/OfPrimitive;->requestDelayedModelBuild(I)V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method onAttachedToRecyclerViewInternal(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .line 798
    iget v0, p0, Lo/OfPrimitive;->recyclerViewAttachCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lo/OfPrimitive;->recyclerViewAttachCount:I

    .line 800
    iget v0, p0, Lo/OfPrimitive;->recyclerViewAttachCount:I

    if-le v0, v1, :cond_0

    .line 801
    sget-object v0, Lo/BaseStream;->d:Lo/BaseStream;

    iget-object v0, v0, Lo/BaseStream;->b:Landroid/os/Handler;

    new-instance v1, Lo/OfPrimitive$1;

    invoke-direct {v1, p0}, Lo/OfPrimitive$1;-><init>(Lo/OfPrimitive;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 823
    :cond_0
    invoke-virtual {p0, p1}, Lo/OfPrimitive;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method onDetachedFromRecyclerViewInternal(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 827
    iget v0, p0, Lo/OfPrimitive;->recyclerViewAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/OfPrimitive;->recyclerViewAttachCount:I

    .line 828
    invoke-virtual {p0, p1}, Lo/OfPrimitive;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method protected onExceptionSwallowed(Ljava/lang/RuntimeException;)V
    .locals 1

    .line 748
    sget-object v0, Lo/OfPrimitive;->globalExceptionHandler:Lo/OfPrimitive$TaskDescription;

    invoke-interface {v0, p0, p1}, Lo/OfPrimitive$TaskDescription;->c(Lo/OfPrimitive;Ljava/lang/RuntimeException;)V

    return-void
.end method

.method protected onModelBound(Lo/Consumer;Lo/BiConsumer;ILo/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Consumer;",
            "Lo/BiConsumer<",
            "*>;I",
            "Lo/BiConsumer<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method protected onModelUnbound(Lo/Consumer;Lo/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Consumer;",
            "Lo/BiConsumer<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 702
    iget-object v0, p0, Lo/OfPrimitive;->adapter:Lo/OfLong;

    invoke-virtual {v0, p1}, Lo/OfLong;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 698
    iget-object v0, p0, Lo/OfPrimitive;->adapter:Lo/OfLong;

    invoke-virtual {v0, p1}, Lo/OfLong;->e(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onViewAttachedToWindow(Lo/Consumer;Lo/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Consumer;",
            "Lo/BiConsumer<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method protected onViewDetachedFromWindow(Lo/Consumer;Lo/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Consumer;",
            "Lo/BiConsumer<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public removeInterceptor(Lo/OfPrimitive$Application;)V
    .locals 1

    .line 429
    iget-object v0, p0, Lo/OfPrimitive;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeModelBuildListener(Lo/BadPaddingException;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lo/OfPrimitive;->adapter:Lo/OfLong;

    invoke-virtual {v0, p1}, Lo/OfLong;->c(Lo/BadPaddingException;)V

    return-void
.end method

.method public declared-synchronized requestDelayedModelBuild(I)V
    .locals 4

    monitor-enter p0

    .line 219
    :try_start_0
    invoke-virtual {p0}, Lo/OfPrimitive;->isBuildingModels()Z

    move-result v0

    if-nez v0, :cond_3

    .line 224
    iget v0, p0, Lo/OfPrimitive;->requestedModelBuildType:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 225
    invoke-virtual {p0}, Lo/OfPrimitive;->cancelPendingModelBuild()V

    goto :goto_0

    .line 226
    :cond_0
    iget v0, p0, Lo/OfPrimitive;->requestedModelBuildType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    .line 227
    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    .line 230
    :goto_1
    :try_start_1
    iput v1, p0, Lo/OfPrimitive;->requestedModelBuildType:I

    .line 233
    iget-object v0, p0, Lo/OfPrimitive;->modelBuildHandler:Landroid/os/Handler;

    iget-object v1, p0, Lo/OfPrimitive;->buildModelsRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 220
    :cond_3
    :try_start_2
    new-instance p1, Lcom/airbnb/epoxy/IllegalEpoxyUsage;

    const-string v0, "Cannot call `requestDelayedModelBuild` from inside `buildModels`"

    invoke-direct {p1, v0}, Lcom/airbnb/epoxy/IllegalEpoxyUsage;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public requestModelBuild()V
    .locals 2

    .line 149
    invoke-virtual {p0}, Lo/OfPrimitive;->isBuildingModels()Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    iget-boolean v0, p0, Lo/OfPrimitive;->hasBuiltModelsEver:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, v0}, Lo/OfPrimitive;->requestDelayedModelBuild(I)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lo/OfPrimitive;->buildModelsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    .line 150
    :cond_1
    new-instance v0, Lcom/airbnb/epoxy/IllegalEpoxyUsage;

    const-string v1, "Cannot call `requestModelBuild` from inside `buildModels`"

    invoke-direct {v0, v1}, Lcom/airbnb/epoxy/IllegalEpoxyUsage;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDebugLoggingEnabled(Z)V
    .locals 1

    .line 636
    invoke-direct {p0}, Lo/OfPrimitive;->assertNotBuildingModels()V

    if-eqz p1, :cond_1

    .line 639
    new-instance p1, Lo/Properties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lo/Properties;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/OfPrimitive;->timer:Lo/CipherOutputStream;

    .line 640
    iget-object p1, p0, Lo/OfPrimitive;->debugObserver:Lo/BiFunction;

    if-nez p1, :cond_0

    .line 641
    new-instance p1, Lo/BiFunction;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lo/BiFunction;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/OfPrimitive;->debugObserver:Lo/BiFunction;

    .line 643
    :cond_0
    iget-object p1, p0, Lo/OfPrimitive;->adapter:Lo/OfLong;

    iget-object v0, p0, Lo/OfPrimitive;->debugObserver:Lo/BiFunction;

    invoke-virtual {p1, v0}, Lo/OfLong;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;)V

    goto :goto_0

    .line 645
    :cond_1
    sget-object p1, Lo/OfPrimitive;->NO_OP_TIMER:Lo/CipherOutputStream;

    iput-object p1, p0, Lo/OfPrimitive;->timer:Lo/CipherOutputStream;

    .line 646
    iget-object p1, p0, Lo/OfPrimitive;->debugObserver:Lo/BiFunction;

    if-eqz p1, :cond_2

    .line 647
    iget-object v0, p0, Lo/OfPrimitive;->adapter:Lo/OfLong;

    invoke-virtual {v0, p1}, Lo/OfLong;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$StateListAnimator;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setFilterDuplicates(Z)V
    .locals 0

    .line 608
    iput-boolean p1, p0, Lo/OfPrimitive;->filterDuplicates:Z

    return-void
.end method

.method public setSpanCount(I)V
    .locals 1

    .line 724
    iget-object v0, p0, Lo/OfPrimitive;->adapter:Lo/OfLong;

    invoke-virtual {v0, p1}, Lo/OfLong;->d(I)V

    return-void
.end method

.method setStagedModel(Lo/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer<",
            "*>;)V"
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lo/OfPrimitive;->stagedModel:Lo/BiConsumer;

    if-eq p1, v0, :cond_0

    .line 527
    invoke-virtual {p0}, Lo/OfPrimitive;->addCurrentlyStagedModelIfExists()V

    .line 530
    :cond_0
    iput-object p1, p0, Lo/OfPrimitive;->stagedModel:Lo/BiConsumer;

    return-void
.end method
