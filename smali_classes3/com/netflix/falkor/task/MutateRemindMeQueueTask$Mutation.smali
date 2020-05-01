.class public final enum Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/falkor/task/MutateRemindMeQueueTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mutation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic b:[Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

.field public static final enum c:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

.field public static final enum d:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;


# instance fields
.field private final a:Z

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    new-instance v1, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    const/4 v2, 0x0

    const-string v3, "ADD"

    const-string v4, "addToRemindMeQueue"

    .line 41
    invoke-direct {v1, v3, v2, v4, v2}, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;->d:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    const/4 v2, 0x1

    const-string v3, "REMOVE"

    const-string v4, "removeFromRemindMeQueue"

    .line 42
    invoke-direct {v1, v3, v2, v4, v2}, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;->c:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;->b:[Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;->e:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;->a:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;
    .locals 1

    const-class v0, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    return-object p0
.end method

.method public static values()[Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;
    .locals 1

    sget-object v0, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;->b:[Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    invoke-virtual {v0}, [Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    return-object v0
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;->a:Z

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;->e:Ljava/lang/String;

    return-object v0
.end method
