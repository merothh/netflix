.class public final enum Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;
.super Ljava/lang/Enum;
.source "TargetStateManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

.field public static final enum StateBadPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

.field public static final enum StateHasError:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

.field public static final enum StateHasPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

.field public static final enum StateLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

.field public static final enum StateNeedHandShake:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

.field public static final enum StateNeedLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

.field public static final enum StateNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

.field public static final enum StateNoPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

.field public static final enum StateNoPairNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

.field public static final enum StateNotLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

.field public static final enum StateRetryExhausted:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

.field public static final enum StateSendingMessage:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

.field public static final enum StateSessionEnd:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

.field public static final enum StateSessionReady:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

.field public static final enum StateTimeout:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;


# instance fields
.field private mBaseRetryIntreval:I

.field private mId:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

.field private mName:Ljava/lang/String;

.field private mRetry:I

.field private mTimeOut:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    const-string/jumbo v1, "StateNotLaunched"

    const/4 v2, 0x0

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateNotLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v4, "notlaunched"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNotLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    const-string/jumbo v1, "StateNeedLaunched"

    const/4 v2, 0x1

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateNeedLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v4, "needlaunch"

    const/4 v5, 0x1

    const v6, 0xfa00

    const/16 v7, 0x1b58

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNeedLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    const-string/jumbo v1, "StateLaunched"

    const/4 v2, 0x2

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v4, "launched"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    const-string/jumbo v1, "StateHasPair"

    const/4 v2, 0x3

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateHasPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v4, "haspair"

    const/4 v5, 0x4

    const/16 v6, 0x1f40

    const/16 v7, 0x3e8

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateHasPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    const-string/jumbo v1, "StateBadPair"

    const/4 v2, 0x4

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateBadPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v4, "badpair"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateBadPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    const-string/jumbo v1, "StateNoPair"

    const/4 v2, 0x5

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateNoPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v4, "nopair"

    const/4 v5, 0x3

    const/16 v6, 0x5dc0

    const/16 v7, 0xbb8

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNoPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    const-string/jumbo v1, "StateNoPairNeedRegPair"

    const/4 v2, 0x6

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateNoPairNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v4, "nopairneedregpair"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNoPairNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    const-string/jumbo v1, "StateNeedRegPair"

    const/4 v2, 0x7

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v4, "needregpair"

    const/4 v5, 0x3

    const/16 v6, 0x7d00

    const/16 v7, 0xfa0

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    const-string/jumbo v1, "StateNeedHandShake"

    const/16 v2, 0x8

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateNeedHandShake:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v4, "needhandshake"

    const/4 v5, 0x4

    const/16 v6, 0x1f40

    const/16 v7, 0x3e8

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNeedHandShake:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    const-string/jumbo v1, "StateSessionReady"

    const/16 v2, 0x9

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateSessionReady:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v4, "sessionready"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateSessionReady:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    const-string/jumbo v1, "StateSendingMessage"

    const/16 v2, 0xa

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateSendingMessage:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v4, "sendingmessage"

    const/4 v5, 0x4

    const/16 v6, 0x1f40

    const/16 v7, 0x3e8

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateSendingMessage:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    const-string/jumbo v1, "StateSessionEnd"

    const/16 v2, 0xb

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateSessionEnd:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v4, "sessionend"

    const/4 v5, 0x0

    const/16 v6, 0x1f40

    const/16 v7, 0x3e8

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateSessionEnd:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    const-string/jumbo v1, "StateRetryExhausted"

    const/16 v2, 0xc

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateRetryExhausted:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v4, "retryexhausted"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateRetryExhausted:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    const-string/jumbo v1, "StateTimeout"

    const/16 v2, 0xd

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateTimeout:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v4, "timeout"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateTimeout:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    const-string/jumbo v1, "StateHasError"

    const/16 v2, 0xe

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateHasError:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v4, "haserror"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateHasError:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNotLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNeedLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateHasPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateBadPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNoPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNoPairNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateNeedHandShake:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateSessionReady:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateSendingMessage:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateSessionEnd:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateRetryExhausted:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateTimeout:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->StateHasError:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->$VALUES:[Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;Ljava/lang/String;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->mRetry:I

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->mBaseRetryIntreval:I

    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->mName:Ljava/lang/String;

    iput p5, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->mRetry:I

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->mId:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    iput p6, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->mTimeOut:I

    iput p7, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->mBaseRetryIntreval:I

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->$VALUES:[Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;

    return-object v0
.end method


# virtual methods
.method public getId()Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->mId:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRetry()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->mRetry:I

    return v0
.end method

.method public getRetryInterval()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->mBaseRetryIntreval:I

    return v0
.end method

.method public getTimeOut()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetState;->mTimeOut:I

    return v0
.end method
