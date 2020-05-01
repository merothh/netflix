.class public final enum Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

.field public static final enum b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

.field public static final enum c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

.field public static final enum d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

.field public static final enum e:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

.field public static final enum f:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

.field public static final enum g:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

.field public static final enum h:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

.field public static final enum i:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

.field public static final enum j:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

.field public static final enum k:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

.field private static final synthetic l:[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

.field public static final enum m:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

.field public static final enum n:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

.field public static final enum o:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const/4 v1, 0x0

    const-string v2, "STATE_INIT"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const/4 v2, 0x1

    const-string v3, "STATE_NOPAIR"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const/4 v3, 0x2

    const-string v4, "STATE_HASPAIR"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const/4 v4, 0x3

    const-string v5, "STATE_MDXPING"

    invoke-direct {v0, v5, v4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->a:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const/4 v5, 0x4

    const-string v6, "STATE_SESSION_READY"

    invoke-direct {v0, v6, v5}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const/4 v6, 0x5

    const-string v7, "STATE_ACQUIRE_PAIR"

    invoke-direct {v0, v7, v6}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->f:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const/4 v7, 0x6

    const-string v8, "STATE_ACQUIRE_REMOTE_LOGIN_CONSENT"

    invoke-direct {v0, v8, v7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->j:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const/4 v8, 0x7

    const-string v9, "STATE_REMOTE_LOGIN"

    invoke-direct {v0, v9, v8}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->g:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const/16 v9, 0x8

    const-string v10, "STATE_REGPAIR"

    invoke-direct {v0, v10, v9}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->h:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const/16 v10, 0x9

    const-string v11, "STATE_START_SESSION"

    invoke-direct {v0, v11, v10}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->i:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const/16 v11, 0xa

    const-string v12, "STATE_HAND_SHAKE"

    invoke-direct {v0, v12, v11}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->m:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const/16 v12, 0xb

    const-string v13, "STATE_GET_CAPABILITIES"

    invoke-direct {v0, v13, v12}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->k:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const/16 v13, 0xc

    const-string v14, "STATE_GET_STATE"

    invoke-direct {v0, v14, v13}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->o:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const/16 v14, 0xd

    const-string v15, "STATE_SENDING_MESSAGE"

    invoke-direct {v0, v15, v14}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->n:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    .line 10
    sget-object v15, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    aput-object v15, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->a:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->f:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->j:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->g:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->h:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    aput-object v1, v0, v9

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->i:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    aput-object v1, v0, v10

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->m:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    aput-object v1, v0, v11

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->k:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    aput-object v1, v0, v12

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->o:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    aput-object v1, v0, v13

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->n:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    aput-object v1, v0, v14

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->l:[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;
    .locals 1

    .line 10
    const-class v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;
    .locals 1

    .line 10
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->l:[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateId;

    return-object v0
.end method
