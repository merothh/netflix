.class Lcom/facebook/imagepipeline/producers/JobScheduler$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/JobScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation


# static fields
.field private static e:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 32
    sget-object v0, Lcom/facebook/imagepipeline/producers/JobScheduler$StateListAnimator;->e:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/producers/JobScheduler$StateListAnimator;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 35
    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/producers/JobScheduler$StateListAnimator;->e:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method
