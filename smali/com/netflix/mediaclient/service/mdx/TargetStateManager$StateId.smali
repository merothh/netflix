.class public final enum Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;
.super Ljava/lang/Enum;
.source "TargetStateManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

.field public static final enum StateBadPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

.field public static final enum StateHasError:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

.field public static final enum StateHasPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

.field public static final enum StateLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

.field public static final enum StateNeedHandShake:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

.field public static final enum StateNeedLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

.field public static final enum StateNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

.field public static final enum StateNoPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

.field public static final enum StateNoPairNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

.field public static final enum StateNotLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

.field public static final enum StateRetryExhausted:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

.field public static final enum StateSendingMessage:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

.field public static final enum StateSessionEnd:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

.field public static final enum StateSessionReady:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

.field public static final enum StateTimeout:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v1, "StateNotLaunched"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateNotLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v1, "StateNeedLaunched"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateNeedLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v1, "StateLaunched"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v1, "StateHasPair"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateHasPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v1, "StateBadPair"

    invoke-direct {v0, v1, v7}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateBadPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v1, "StateNoPair"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateNoPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v1, "StateNoPairNeedRegPair"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateNoPairNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v1, "StateNeedRegPair"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v1, "StateNeedHandShake"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateNeedHandShake:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v1, "StateSessionReady"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateSessionReady:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v1, "StateSendingMessage"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateSendingMessage:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v1, "StateSessionEnd"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateSessionEnd:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v1, "StateRetryExhausted"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateRetryExhausted:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v1, "StateTimeout"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateTimeout:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const-string/jumbo v1, "StateHasError"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateHasError:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateNotLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateNeedLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateLaunched:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateHasPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateBadPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateNoPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateNoPairNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateNeedHandShake:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateSessionReady:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateSendingMessage:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateSessionEnd:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateRetryExhausted:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateTimeout:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->StateHasError:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->$VALUES:[Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->$VALUES:[Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/mdx/TargetStateManager$StateId;

    return-object v0
.end method
