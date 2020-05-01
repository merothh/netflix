.class public final enum Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

.field public static final enum b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

.field public static final enum c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

.field public static final enum d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

.field public static final enum e:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

.field public static final enum f:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

.field public static final enum g:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

.field public static final enum h:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

.field public static final enum i:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

.field public static final enum j:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

.field public static final enum k:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

.field public static final enum l:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

.field public static final enum m:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

.field public static final enum n:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

.field public static final enum o:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

.field public static final enum q:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

.field public static final enum r:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

.field private static final synthetic s:[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;


# instance fields
.field public p:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    const/4 v1, 0x0

    const-string v2, "MESSAGE_TYPE_STARTSESSION"

    invoke-direct {v0, v2, v1, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    const/4 v2, 0x1

    const-string v3, "MESSAGE_TYPE_HANDSHAKE"

    invoke-direct {v0, v3, v2, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    const/4 v3, 0x2

    const-string v4, "MESSAGE_TYPE_ENDSESSOIN"

    invoke-direct {v0, v4, v3, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    const/4 v4, 0x3

    const/16 v5, 0x8

    const-string v6, "MESSAGE_TYPE_ERROR_BADPAIR"

    invoke-direct {v0, v6, v4, v5}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->a:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    const/4 v6, 0x4

    const/16 v7, 0x9

    const-string v8, "MESSAGE_TYPE_ERROR_BADSESSION"

    invoke-direct {v0, v8, v6, v7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    const/4 v8, 0x5

    const/16 v9, 0xa

    const-string v10, "MESSAGE_TYPE_GENERIC"

    invoke-direct {v0, v10, v8, v9}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->f:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    const/16 v10, 0xb

    const-string v11, "MESSAGE_TYPE_CAPABILITY"

    const/4 v12, 0x6

    invoke-direct {v0, v11, v12, v10}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->g:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    const/16 v11, 0xc

    const-string v12, "MESSAGE_TYPE_CURRENT_STATE"

    const/4 v13, 0x7

    invoke-direct {v0, v12, v13, v11}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->i:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    const/16 v12, 0xd

    const-string v13, "MESSAGE_TYPE_STATE_CHANGED"

    invoke-direct {v0, v13, v5, v12}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->h:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    const/16 v13, 0xe

    const-string v14, "MESSAGE_TYPE_AUDIO_SUBTITLES_CHANGED"

    invoke-direct {v0, v14, v7, v13}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->j:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    const/16 v14, 0xf

    const-string v15, "MESSAGE_TYPE_AUDIO_SUBTITLE_SETTINGS"

    invoke-direct {v0, v15, v9, v14}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->n:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    const/16 v15, 0x10

    const-string v9, "MESSAGE_TYPE_DIALOG_SHOW"

    invoke-direct {v0, v9, v10, v15}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->o:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    const-string v9, "MESSAGE_TYPE_DIALOG_CANCEL"

    const/16 v10, 0x11

    invoke-direct {v0, v9, v11, v10}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->m:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    const-string v9, "MESSAGE_TYPE_META_DATA_CHANGED"

    const/16 v10, 0x12

    invoke-direct {v0, v9, v12, v10}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->l:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    const-string v9, "MESSAGE_TYPE_PIN_VERIFICATION_SHOW"

    const/16 v10, 0x13

    invoke-direct {v0, v9, v13, v10}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->k:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    const-string v9, "MESSAGE_TYPE_PIN_VERIFICATION_NOT_REQUIRED"

    const/16 v10, 0x14

    invoke-direct {v0, v9, v14, v10}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->r:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    const-string v9, "MESSAGE_TYPE_PIN_VERIFICATION_INCORRECT_PIN"

    const/16 v10, 0x15

    invoke-direct {v0, v9, v15, v10}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->q:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    .line 7
    sget-object v9, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->c:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    aput-object v9, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->b:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->a:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->f:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->g:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->i:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->h:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->j:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->n:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->o:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->m:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->l:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->k:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->r:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->q:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    aput-object v1, v0, v15

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->s:[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->p:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;
    .locals 1

    .line 7
    const-class v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;
    .locals 1

    .line 7
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->s:[Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TargetSessionMessageType."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetSessionMessageType;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
