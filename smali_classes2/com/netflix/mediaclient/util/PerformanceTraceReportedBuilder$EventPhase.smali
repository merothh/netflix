.class final enum Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EventPhase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

.field public static final enum b:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

.field public static final enum c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

.field public static final enum d:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

.field public static final enum e:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

.field public static final enum f:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

.field public static final enum g:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

.field public static final enum h:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

.field public static final enum i:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

.field public static final enum j:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

.field public static final enum k:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

.field public static final enum l:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

.field public static final enum m:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

.field public static final enum n:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

.field public static final enum o:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

.field public static final enum p:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

.field public static final enum q:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

.field public static final enum r:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

.field public static final enum s:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

.field public static final enum t:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

.field public static final enum u:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

.field private static final synthetic x:[Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

.field public static final enum y:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;


# instance fields
.field private final v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 371
    new-instance v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/4 v1, 0x0

    const-string v2, "DURATION_START"

    const-string v3, "B"

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->e:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    .line 372
    new-instance v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/4 v2, 0x1

    const-string v3, "DURATION_END"

    const-string v4, "E"

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    .line 373
    new-instance v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/4 v3, 0x2

    const-string v4, "COMPLETE"

    const-string v5, "X"

    invoke-direct {v0, v4, v3, v5}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->d:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    .line 374
    new-instance v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/4 v4, 0x3

    const-string v5, "INSTANT"

    const-string v6, "i"

    invoke-direct {v0, v5, v4, v6}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->a:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    .line 375
    new-instance v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/4 v5, 0x4

    const-string v6, "COUNTER"

    const-string v7, "C"

    invoke-direct {v0, v6, v5, v7}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->b:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    .line 376
    new-instance v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/4 v6, 0x5

    const-string v7, "ASYNC_START"

    const-string v8, "b"

    invoke-direct {v0, v7, v6, v8}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->j:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    .line 377
    new-instance v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/4 v7, 0x6

    const-string v8, "ASYNC_INSTANT"

    const-string v9, "n"

    invoke-direct {v0, v8, v7, v9}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->f:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    .line 378
    new-instance v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/4 v8, 0x7

    const-string v9, "ASYNC_END"

    const-string v10, "e"

    invoke-direct {v0, v9, v8, v10}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->h:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    .line 379
    new-instance v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/16 v9, 0x8

    const-string v10, "FLOW_START"

    const-string v11, "s"

    invoke-direct {v0, v10, v9, v11}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->i:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    .line 380
    new-instance v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/16 v10, 0x9

    const-string v11, "FLOW_STEP"

    const-string v12, "t"

    invoke-direct {v0, v11, v10, v12}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->g:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    .line 381
    new-instance v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/16 v11, 0xa

    const-string v12, "FLOW_END"

    const-string v13, "f"

    invoke-direct {v0, v12, v11, v13}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->n:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    .line 382
    new-instance v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/16 v12, 0xb

    const-string v13, "SAMPLE"

    const-string v14, "P"

    invoke-direct {v0, v13, v12, v14}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->k:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    .line 383
    new-instance v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/16 v13, 0xc

    const-string v14, "OBJECT_CREATED"

    const-string v15, "N"

    invoke-direct {v0, v14, v13, v15}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->l:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    .line 384
    new-instance v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/16 v14, 0xd

    const-string v15, "OBJECT_SNAPSHOT"

    const-string v13, "O"

    invoke-direct {v0, v15, v14, v13}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->m:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    .line 385
    new-instance v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/16 v13, 0xe

    const-string v15, "OBJECT_DESTROYED"

    const-string v14, "D"

    invoke-direct {v0, v15, v13, v14}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->o:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    .line 386
    new-instance v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const-string v14, "METADATA"

    const/16 v15, 0xf

    const-string v13, "M"

    invoke-direct {v0, v14, v15, v13}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->s:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    .line 387
    new-instance v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const-string v13, "MEMORY_DUMP_GLOBAL"

    const/16 v14, 0x10

    const-string v15, "V"

    invoke-direct {v0, v13, v14, v15}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->r:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    .line 388
    new-instance v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const-string v13, "MEMORY_DUMP_PROCESS"

    const/16 v14, 0x11

    const-string v15, "v"

    invoke-direct {v0, v13, v14, v15}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->q:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    .line 389
    new-instance v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const-string v13, "MARK"

    const/16 v14, 0x12

    const-string v15, "R"

    invoke-direct {v0, v13, v14, v15}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->p:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    .line 390
    new-instance v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const-string v13, "CLOCK_SYNC"

    const/16 v14, 0x13

    const-string v15, "c"

    invoke-direct {v0, v13, v14, v15}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->t:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    .line 391
    new-instance v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const-string v13, "CONTEXT_BEGIN"

    const/16 v14, 0x14

    const-string v15, "("

    invoke-direct {v0, v13, v14, v15}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->u:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    .line 392
    new-instance v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const-string v13, "CONTEXT_END"

    const/16 v14, 0x15

    const-string v15, ")"

    invoke-direct {v0, v13, v14, v15}, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->y:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/16 v0, 0x16

    new-array v0, v0, [Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    .line 370
    sget-object v13, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->e:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    aput-object v13, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->c:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->d:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->a:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->b:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->j:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->f:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->h:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->i:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    aput-object v1, v0, v9

    sget-object v1, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->g:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    aput-object v1, v0, v10

    sget-object v1, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->n:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    aput-object v1, v0, v11

    sget-object v1, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->k:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    aput-object v1, v0, v12

    sget-object v1, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->l:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->m:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->o:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->s:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->r:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->q:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->p:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->t:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->u:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->y:Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->x:[Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 394
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 395
    iput-object p3, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->v:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;)Ljava/lang/String;
    .locals 0

    .line 370
    iget-object p0, p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->v:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;
    .locals 1

    .line 370
    const-class v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;
    .locals 1

    .line 370
    sget-object v0, Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->x:[Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/util/PerformanceTraceReportedBuilder$EventPhase;

    return-object v0
.end method
