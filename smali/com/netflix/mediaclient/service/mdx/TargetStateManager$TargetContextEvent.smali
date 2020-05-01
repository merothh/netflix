.class public final enum Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;
.super Ljava/lang/Enum;
.source "TargetStateManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

.field public static final enum DeletePairSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

.field public static final enum HandShakeFailed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

.field public static final enum HandShakeSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

.field public static final enum LaunchFailed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

.field public static final enum LaunchRetry:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

.field public static final enum LaunchSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

.field public static final enum PairFailed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

.field public static final enum PairFailedExistedPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

.field public static final enum PairFailedNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

.field public static final enum PairNotAllowed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

.field public static final enum PairSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

.field public static final enum PairingRetry:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

.field public static final enum RegistrationInProgress:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

.field public static final enum SendMessageFailed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

.field public static final enum SendMessageFailedNeedNewSession:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

.field public static final enum SendMessageFailedNeedRepair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

.field public static final enum SendMessageSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

.field public static final enum SessionCommandReceived:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

.field public static final enum SessionEnd:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

.field public static final enum SessionRetry:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

.field public static final enum StartSessionSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

.field public static final enum StartTarget:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

.field public static final enum TargetUpdate:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

.field public static final enum Timeout:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    const-string/jumbo v1, "StartTarget"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->StartTarget:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    .line 96
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    const-string/jumbo v1, "LaunchSucceed"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->LaunchSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    .line 97
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    const-string/jumbo v1, "LaunchFailed"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->LaunchFailed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    .line 98
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    const-string/jumbo v1, "PairSucceed"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    .line 99
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    const-string/jumbo v1, "PairFailed"

    invoke-direct {v0, v1, v7}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairFailed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    .line 100
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    const-string/jumbo v1, "PairFailedExistedPair"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairFailedExistedPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    .line 101
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    const-string/jumbo v1, "PairFailedNeedRegPair"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairFailedNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    .line 102
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    const-string/jumbo v1, "PairNotAllowed"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairNotAllowed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    .line 103
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    const-string/jumbo v1, "RegistrationInProgress"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->RegistrationInProgress:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    .line 104
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    const-string/jumbo v1, "DeletePairSucceed"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->DeletePairSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    .line 105
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    const-string/jumbo v1, "StartSessionSucceed"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->StartSessionSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    .line 106
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    const-string/jumbo v1, "HandShakeSucceed"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->HandShakeSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    .line 107
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    const-string/jumbo v1, "HandShakeFailed"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->HandShakeFailed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    .line 108
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    const-string/jumbo v1, "SendMessageSucceed"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SendMessageSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    .line 109
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    const-string/jumbo v1, "SendMessageFailed"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SendMessageFailed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    .line 110
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    const-string/jumbo v1, "SendMessageFailedNeedRepair"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SendMessageFailedNeedRepair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    .line 111
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    const-string/jumbo v1, "SendMessageFailedNeedNewSession"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SendMessageFailedNeedNewSession:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    .line 112
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    const-string/jumbo v1, "SessionEnd"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionEnd:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    .line 113
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    const-string/jumbo v1, "SessionCommandReceived"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionCommandReceived:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    .line 114
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    const-string/jumbo v1, "TargetUpdate"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->TargetUpdate:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    .line 115
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    const-string/jumbo v1, "SessionRetry"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionRetry:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    .line 116
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    const-string/jumbo v1, "PairingRetry"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairingRetry:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    .line 117
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    const-string/jumbo v1, "LaunchRetry"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->LaunchRetry:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    .line 118
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    const-string/jumbo v1, "Timeout"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->Timeout:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    .line 94
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->StartTarget:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->LaunchSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->LaunchFailed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairFailed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairFailedExistedPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairFailedNeedRegPair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairNotAllowed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->RegistrationInProgress:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->DeletePairSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->StartSessionSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->HandShakeSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->HandShakeFailed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SendMessageSucceed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SendMessageFailed:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SendMessageFailedNeedRepair:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SendMessageFailedNeedNewSession:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionEnd:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionCommandReceived:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->TargetUpdate:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->SessionRetry:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->PairingRetry:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->LaunchRetry:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->Timeout:Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->$VALUES:[Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;
    .locals 1

    .prologue
    .line 94
    const-class v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->$VALUES:[Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/mdx/TargetStateManager$TargetContextEvent;

    return-object v0
.end method
