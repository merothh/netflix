.class public final enum Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

.field public static final enum b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

.field public static final enum c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

.field public static final enum d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

.field public static final enum e:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

.field public static final enum f:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

.field public static final enum g:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

.field public static final enum h:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

.field public static final enum i:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

.field public static final enum j:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

.field public static final enum k:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

.field public static final enum l:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

.field public static final enum n:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

.field public static final enum o:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

.field private static final synthetic v:[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;


# instance fields
.field private m:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

.field private s:I

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 11
    new-instance v7, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const-string v1, "StateInit"

    const/4 v2, 0x0

    const-string v4, "STATE_INIT"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;Ljava/lang/String;II)V

    sput-object v7, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    sget-object v11, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const-string v9, "StateHasPair"

    const/4 v10, 0x1

    const-string v12, "STATE_HASPAIR"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->a:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    sget-object v4, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const-string v2, "StateNoPair"

    const/4 v3, 0x2

    const-string v5, "STATE_NOPAIR"

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    sget-object v11, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const-string v9, "StateSessionReady"

    const/4 v10, 0x3

    const-string v12, "STATE_SESSION_READY"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    sget-object v4, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->a:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const-string v2, "StateMdxPing"

    const/4 v3, 0x4

    const-string v5, "STATE_MDXPING"

    const/4 v6, 0x3

    const/16 v7, 0x1f40

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    sget-object v11, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->j:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const-string v9, "StateAcquireRemoteLoginConsent"

    const/4 v10, 0x5

    const-string v12, "STATE_ACQUIRE_REMOTE_LOGIN_CONSENT"

    const v14, 0xfa00

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->f:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    sget-object v4, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->g:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const-string v2, "StateRemoteLogin"

    const/4 v3, 0x6

    const-string v5, "STATE_REMOTE_LOGIN"

    const/4 v6, 0x0

    const v7, 0x1d4c0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->j:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    sget-object v11, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->f:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const-string v9, "StateAcquirePair"

    const/4 v10, 0x7

    const-string v12, "STATE_ACQUIRE_PAIR"

    const/4 v13, 0x3

    const/16 v14, 0x3e80

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->h:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    sget-object v4, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->h:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const-string v2, "StateRegPair"

    const/16 v3, 0x8

    const-string v5, "STATE_REGPAIR"

    const/4 v6, 0x3

    const/16 v7, 0x7d00

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->g:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    sget-object v11, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->i:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const-string v9, "StateStartSession"

    const/16 v10, 0x9

    const-string v12, "STATE_START_SESSION"

    const/16 v14, 0x1f40

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->i:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    sget-object v4, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->m:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const-string v2, "StateHandShake"

    const/16 v3, 0xa

    const-string v5, "STATE_HAND_SHAKE"

    const/16 v7, 0x1f40

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->n:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    sget-object v11, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->k:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const-string v9, "StateGetCapabilities"

    const/16 v10, 0xb

    const-string v12, "STATE_GET_CAPABILITIES"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->o:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    sget-object v4, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->o:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const-string v2, "StateGetState"

    const/16 v3, 0xc

    const-string v5, "STATE_GET_STATE"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->l:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    sget-object v11, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->n:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const-string v9, "StateSendingMessage"

    const/16 v10, 0xd

    const-string v12, "STATE_SENDING_MESSAGE"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->k:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    .line 9
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->a:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->f:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->j:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->h:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->g:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->i:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->n:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->o:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->l:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->k:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->v:[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->m:Ljava/lang/String;

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->s:I

    if-lez p5, :cond_0

    const/4 p1, 0x3

    .line 30
    invoke-static {p5, p1}, Ljava/lang/Math;->max(II)I

    move-result p5

    :cond_0
    iput p5, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->q:I

    .line 31
    iget p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->q:I

    iput p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->p:I

    .line 32
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->r:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    .line 33
    iput p6, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->t:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;
    .locals 1

    .line 9
    const-class v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;
    .locals 1

    .line 9
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->v:[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 56
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->s:I

    iget v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->q:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    add-int/2addr v0, v2

    .line 57
    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->s:I

    :cond_0
    const/4 v0, 0x0

    .line 61
    iget v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->s:I

    shl-int v3, v2, v1

    if-lez v1, :cond_1

    sub-int/2addr v1, v2

    shl-int v0, v2, v1

    .line 67
    :cond_1
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public b()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->t:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->m:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 71
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->q:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->p:I

    if-gtz v0, :cond_0

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

.method public d(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;)Z
    .locals 0

    .line 69
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->e()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->d(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;)Z

    move-result p1

    return p1
.end method

.method public d(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;)Z
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->e()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->r:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    return-object v0
.end method

.method public i()V
    .locals 1

    .line 74
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->p:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 75
    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->p:I

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->s:I

    .line 87
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->q:I

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetState;->p:I

    return-void
.end method
