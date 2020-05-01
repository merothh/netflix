.class public final enum Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic B:[Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

.field public static final enum a:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

.field public static final enum b:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

.field public static final enum c:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

.field public static final enum d:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

.field public static final enum e:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

.field public static final enum f:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

.field public static final enum g:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

.field public static final enum h:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

.field public static final enum i:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

.field public static final enum j:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

.field public static final enum k:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

.field public static final enum l:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

.field public static final enum m:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

.field public static final enum n:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

.field public static final enum o:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

.field public static final enum p:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

.field public static final enum q:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

.field public static final enum r:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

.field public static final enum s:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

.field public static final enum t:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

.field public static final enum u:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

.field public static final enum v:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

.field public static final enum w:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

.field public static final enum x:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

.field public static final enum y:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;


# instance fields
.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    const/16 v3, 0x3e9

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->b:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/4 v2, 0x1

    const-string v3, "Exception"

    const/16 v4, 0x3ea

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->d:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/4 v3, 0x2

    const-string v4, "PingTimeout"

    const/16 v5, 0x3eb

    invoke-direct {v0, v4, v3, v5}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->e:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/4 v4, 0x3

    const-string v5, "PingFail"

    const/16 v6, 0x3ec

    invoke-direct {v0, v5, v4, v6}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->a:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/4 v5, 0x4

    const-string v6, "DiscoveryTimeout"

    const/16 v7, 0x4b1

    invoke-direct {v0, v6, v5, v7}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->c:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/4 v6, 0x5

    const-string v7, "DiscoveryFailed"

    const/16 v8, 0x4b2

    invoke-direct {v0, v7, v6, v8}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->i:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/4 v7, 0x6

    const-string v8, "DeviceIsLost"

    const/16 v9, 0x4bb

    invoke-direct {v0, v8, v7, v9}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->j:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/4 v8, 0x7

    const-string v9, "MdxInitTimeout"

    const/16 v10, 0x515

    invoke-direct {v0, v9, v8, v10}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->h:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/16 v9, 0x8

    const-string v10, "MdxInitFailed"

    const/16 v11, 0x516

    invoke-direct {v0, v10, v9, v11}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->g:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/16 v10, 0x9

    const-string v11, "LaunchTimeout"

    const/16 v12, 0x7d1

    invoke-direct {v0, v11, v10, v12}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->f:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/16 v11, 0xa

    const-string v12, "LaunchFailed"

    const/16 v13, 0x7d2

    invoke-direct {v0, v12, v11, v13}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->m:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/16 v12, 0xb

    const-string v13, "PairTimeout"

    const/16 v14, 0x835

    invoke-direct {v0, v13, v12, v14}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->n:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 29
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/16 v13, 0xc

    const-string v14, "PairFailed"

    const/16 v15, 0x836

    invoke-direct {v0, v14, v13, v15}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->k:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/16 v14, 0xd

    const-string v15, "RegPairFailed"

    const/16 v13, 0x837

    invoke-direct {v0, v15, v14, v13}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->l:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/16 v13, 0xe

    const-string v15, "RemoteLoginCancelled"

    const/16 v14, 0x838

    invoke-direct {v0, v15, v13, v14}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->o:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const-string v14, "RemoteLoginAndPairFailed"

    const/16 v15, 0xf

    const/16 v13, 0x839

    invoke-direct {v0, v14, v15, v13}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->q:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const-string v13, "RemoteLoginOnlyFailed"

    const/16 v14, 0x10

    const/16 v15, 0x83a

    invoke-direct {v0, v13, v14, v15}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->t:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 34
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const-string v13, "RemoteLoginDisabled"

    const/16 v14, 0x11

    const/16 v15, 0x83b

    invoke-direct {v0, v13, v14, v15}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->s:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 35
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const-string v13, "SessionTimeout"

    const/16 v14, 0x12

    const/16 v15, 0x899

    invoke-direct {v0, v13, v14, v15}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->r:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 36
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const-string v13, "SessionFailed"

    const/16 v14, 0x13

    const/16 v15, 0x89a

    invoke-direct {v0, v13, v14, v15}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->p:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 37
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const-string v13, "SessionStartFailed"

    const/16 v14, 0x14

    const/16 v15, 0x89b

    invoke-direct {v0, v13, v14, v15}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->w:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const-string v13, "SessionResumeFailed"

    const/16 v14, 0x15

    const/16 v15, 0x89c

    invoke-direct {v0, v13, v14, v15}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->y:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const-string v13, "SessionHandshakeFailed"

    const/16 v14, 0x16

    const/16 v15, 0x89d

    invoke-direct {v0, v13, v14, v15}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->x:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 40
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const-string v13, "SessionAbruptlyEnded"

    const/16 v14, 0x17

    const/16 v15, 0x8a3

    invoke-direct {v0, v13, v14, v15}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->v:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 41
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const-string v13, "ShowToast"

    const/16 v14, 0x18

    const/16 v15, 0x270f

    invoke-direct {v0, v13, v14, v15}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->u:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/16 v0, 0x19

    new-array v0, v0, [Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 16
    sget-object v13, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->b:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    aput-object v13, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->d:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->e:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->a:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->c:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->i:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->j:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->h:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->g:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->f:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    aput-object v1, v0, v10

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->m:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    aput-object v1, v0, v11

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->n:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    aput-object v1, v0, v12

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->k:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->l:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->o:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->q:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->t:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->s:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->r:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->p:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->w:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->y:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->x:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->v:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->u:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->B:[Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->z:I

    return-void
.end method

.method public static b(I)Z
    .locals 2

    .line 75
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->b:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    .line 76
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->d:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->a()I

    move-result v0

    if-ne p0, v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x7d0

    if-le p0, v0, :cond_2

    const/16 v0, 0x8a2

    if-gt p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static e(I)Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;
    .locals 5

    .line 59
    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->values()[Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 60
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->a()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;
    .locals 1

    .line 16
    const-class v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;
    .locals 1

    .line 16
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->B:[Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->z:I

    return v0
.end method

.method public e(Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->a()I

    move-result p1

    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->z:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 50
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->z:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
