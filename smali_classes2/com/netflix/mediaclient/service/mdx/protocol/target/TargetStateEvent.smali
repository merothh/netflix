.class public final enum Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

.field public static final enum b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

.field public static final enum c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

.field public static final enum d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

.field public static final enum e:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

.field public static final enum f:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

.field public static final enum g:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

.field public static final enum h:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

.field public static final enum i:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

.field public static final enum j:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

.field public static final enum k:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

.field public static final enum l:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

.field public static final enum m:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

.field public static final enum n:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

.field public static final enum o:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

.field public static final enum p:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

.field public static final enum q:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

.field public static final enum r:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

.field public static final enum s:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

.field public static final enum t:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

.field public static final enum w:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

.field public static final enum x:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

.field private static final synthetic y:[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;


# instance fields
.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const/4 v1, 0x0

    const-string v2, "PairSucceed"

    invoke-direct {v0, v2, v1, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const/4 v2, 0x1

    const-string v3, "PairFail"

    invoke-direct {v0, v3, v2, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const/4 v3, 0x2

    const-string v4, "PairFailedNeedRegPair"

    invoke-direct {v0, v4, v3, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const/4 v4, 0x3

    const-string v5, "StartSessionSucceed"

    invoke-direct {v0, v5, v4, v4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const/4 v5, 0x4

    const-string v6, "StartSessionFail"

    invoke-direct {v0, v6, v5, v5}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->a:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const/4 v6, 0x5

    const-string v7, "HandShakeSucceed"

    invoke-direct {v0, v7, v6, v6}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->j:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const/4 v7, 0x6

    const-string v8, "HandShakeFailed"

    invoke-direct {v0, v8, v7, v7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->f:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const/4 v8, 0x7

    const-string v9, "PingSucceed"

    invoke-direct {v0, v9, v8, v8}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->i:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const/16 v9, 0x8

    const/16 v10, 0xa

    const-string v11, "SendMessageSucceed"

    invoke-direct {v0, v11, v9, v10}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->h:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const/16 v11, 0xb

    const-string v12, "SendMessageFail"

    const/16 v13, 0x9

    invoke-direct {v0, v12, v13, v11}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->g:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const/16 v12, 0xc

    const-string v13, "SendMessageFailedNeedNewSession"

    invoke-direct {v0, v13, v10, v12}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->n:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const/16 v13, 0xd

    const-string v14, "SendMessageFailedBadPair"

    invoke-direct {v0, v14, v11, v13}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->m:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const/16 v14, 0x14

    const-string v15, "MessageReceived"

    invoke-direct {v0, v15, v12, v14}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->l:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const/16 v15, 0x15

    const-string v12, "SendMessageRequested"

    invoke-direct {v0, v12, v13, v15}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->k:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const-string v12, "MessageFailRetry"

    const/16 v13, 0xe

    const/16 v11, 0x1e

    invoke-direct {v0, v12, v13, v11}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->o:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const-string v11, "Timeout"

    const/16 v12, 0xf

    const/16 v13, 0x1f

    invoke-direct {v0, v11, v12, v13}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->p:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const-string v11, "Start"

    const/16 v12, 0x10

    const/16 v13, 0x20

    invoke-direct {v0, v11, v12, v13}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->r:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const-string v11, "PeriodicStateCheck"

    const/16 v12, 0x11

    const/16 v13, 0x21

    invoke-direct {v0, v11, v12, v13}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->s:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const-string v11, "RemoteLoginApproved"

    const/16 v12, 0x12

    const/16 v13, 0x28

    invoke-direct {v0, v11, v12, v13}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->t:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const-string v11, "RemoteLoginRejected"

    const/16 v12, 0x13

    const/16 v13, 0x29

    invoke-direct {v0, v11, v12, v13}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->q:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const-string v11, "RemoteLoginSucceed"

    const/16 v12, 0x2a

    invoke-direct {v0, v11, v14, v12}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->x:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const-string v11, "RemoteLoginFail"

    const/16 v12, 0x2b

    invoke-direct {v0, v11, v15, v12}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->w:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const/16 v0, 0x16

    new-array v0, v0, [Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    .line 7
    sget-object v11, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    aput-object v11, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->a:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->j:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->f:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->i:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->h:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    aput-object v1, v0, v9

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->g:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->n:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    aput-object v1, v0, v10

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->m:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->l:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->k:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->o:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->p:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->r:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->s:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->t:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->q:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->x:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    aput-object v1, v0, v14

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->w:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    aput-object v1, v0, v15

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->y:[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->u:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;
    .locals 1

    .line 7
    const-class v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;
    .locals 1

    .line 7
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->y:[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    return-object v0
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->u:I

    return v0
.end method

.method public e(I)Z
    .locals 1

    .line 37
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->u:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
