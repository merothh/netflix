.class final enum Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/JobScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "JobState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

.field public static final enum b:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

.field public static final enum c:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

.field public static final enum d:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

.field public static final enum e:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 50
    new-instance v0, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    const/4 v1, 0x0

    const-string v2, "IDLE"

    invoke-direct {v0, v2, v1}, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->c:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    new-instance v0, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    const/4 v2, 0x1

    const-string v3, "QUEUED"

    invoke-direct {v0, v3, v2}, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->e:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    new-instance v0, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    const/4 v3, 0x2

    const-string v4, "RUNNING"

    invoke-direct {v0, v4, v3}, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->d:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    new-instance v0, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    const/4 v4, 0x3

    const-string v5, "RUNNING_AND_PENDING"

    invoke-direct {v0, v5, v4}, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->b:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    .line 49
    sget-object v5, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->c:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    aput-object v5, v0, v1

    sget-object v1, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->e:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->d:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->b:Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->a:[Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;
    .locals 1

    .line 49
    const-class v0, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    return-object p0
.end method

.method public static values()[Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;
    .locals 1

    .line 49
    sget-object v0, Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->a:[Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    invoke-virtual {v0}, [Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/imagepipeline/producers/JobScheduler$JobState;

    return-object v0
.end method
