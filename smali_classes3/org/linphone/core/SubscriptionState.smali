.class public final enum Lorg/linphone/core/SubscriptionState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/linphone/core/SubscriptionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/linphone/core/SubscriptionState;

.field public static final enum Active:Lorg/linphone/core/SubscriptionState;

.field public static final enum Error:Lorg/linphone/core/SubscriptionState;

.field public static final enum Expiring:Lorg/linphone/core/SubscriptionState;

.field public static final enum IncomingReceived:Lorg/linphone/core/SubscriptionState;

.field public static final enum None:Lorg/linphone/core/SubscriptionState;

.field public static final enum OutoingProgress:Lorg/linphone/core/SubscriptionState;

.field public static final enum Pending:Lorg/linphone/core/SubscriptionState;

.field public static final enum Terminated:Lorg/linphone/core/SubscriptionState;


# instance fields
.field protected final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 7
    new-instance v0, Lorg/linphone/core/SubscriptionState;

    const/4 v1, 0x0

    const-string v2, "None"

    invoke-direct {v0, v2, v1, v1}, Lorg/linphone/core/SubscriptionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/SubscriptionState;->None:Lorg/linphone/core/SubscriptionState;

    .line 11
    new-instance v0, Lorg/linphone/core/SubscriptionState;

    const/4 v2, 0x1

    const-string v3, "OutoingProgress"

    invoke-direct {v0, v3, v2, v2}, Lorg/linphone/core/SubscriptionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/SubscriptionState;->OutoingProgress:Lorg/linphone/core/SubscriptionState;

    .line 15
    new-instance v0, Lorg/linphone/core/SubscriptionState;

    const/4 v3, 0x2

    const-string v4, "IncomingReceived"

    invoke-direct {v0, v4, v3, v3}, Lorg/linphone/core/SubscriptionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/SubscriptionState;->IncomingReceived:Lorg/linphone/core/SubscriptionState;

    .line 19
    new-instance v0, Lorg/linphone/core/SubscriptionState;

    const/4 v4, 0x3

    const-string v5, "Pending"

    invoke-direct {v0, v5, v4, v4}, Lorg/linphone/core/SubscriptionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/SubscriptionState;->Pending:Lorg/linphone/core/SubscriptionState;

    .line 23
    new-instance v0, Lorg/linphone/core/SubscriptionState;

    const/4 v5, 0x4

    const-string v6, "Active"

    invoke-direct {v0, v6, v5, v5}, Lorg/linphone/core/SubscriptionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/SubscriptionState;->Active:Lorg/linphone/core/SubscriptionState;

    .line 27
    new-instance v0, Lorg/linphone/core/SubscriptionState;

    const/4 v6, 0x5

    const-string v7, "Terminated"

    invoke-direct {v0, v7, v6, v6}, Lorg/linphone/core/SubscriptionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/SubscriptionState;->Terminated:Lorg/linphone/core/SubscriptionState;

    .line 31
    new-instance v0, Lorg/linphone/core/SubscriptionState;

    const/4 v7, 0x6

    const-string v8, "Error"

    invoke-direct {v0, v8, v7, v7}, Lorg/linphone/core/SubscriptionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/SubscriptionState;->Error:Lorg/linphone/core/SubscriptionState;

    .line 36
    new-instance v0, Lorg/linphone/core/SubscriptionState;

    const/4 v8, 0x7

    const-string v9, "Expiring"

    invoke-direct {v0, v9, v8, v8}, Lorg/linphone/core/SubscriptionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/SubscriptionState;->Expiring:Lorg/linphone/core/SubscriptionState;

    const/16 v0, 0x8

    new-array v0, v0, [Lorg/linphone/core/SubscriptionState;

    .line 3
    sget-object v9, Lorg/linphone/core/SubscriptionState;->None:Lorg/linphone/core/SubscriptionState;

    aput-object v9, v0, v1

    sget-object v1, Lorg/linphone/core/SubscriptionState;->OutoingProgress:Lorg/linphone/core/SubscriptionState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/linphone/core/SubscriptionState;->IncomingReceived:Lorg/linphone/core/SubscriptionState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/linphone/core/SubscriptionState;->Pending:Lorg/linphone/core/SubscriptionState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/linphone/core/SubscriptionState;->Active:Lorg/linphone/core/SubscriptionState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/linphone/core/SubscriptionState;->Terminated:Lorg/linphone/core/SubscriptionState;

    aput-object v1, v0, v6

    sget-object v1, Lorg/linphone/core/SubscriptionState;->Error:Lorg/linphone/core/SubscriptionState;

    aput-object v1, v0, v7

    sget-object v1, Lorg/linphone/core/SubscriptionState;->Expiring:Lorg/linphone/core/SubscriptionState;

    aput-object v1, v0, v8

    sput-object v0, Lorg/linphone/core/SubscriptionState;->$VALUES:[Lorg/linphone/core/SubscriptionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lorg/linphone/core/SubscriptionState;->mValue:I

    return-void
.end method

.method protected static fromInt(I)Lorg/linphone/core/SubscriptionState;
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 52
    new-instance v0, Lorg/linphone/core/LinphoneCoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled enum value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " for SubscriptionState"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :pswitch_0
    sget-object p0, Lorg/linphone/core/SubscriptionState;->Expiring:Lorg/linphone/core/SubscriptionState;

    return-object p0

    .line 49
    :pswitch_1
    sget-object p0, Lorg/linphone/core/SubscriptionState;->Error:Lorg/linphone/core/SubscriptionState;

    return-object p0

    .line 48
    :pswitch_2
    sget-object p0, Lorg/linphone/core/SubscriptionState;->Terminated:Lorg/linphone/core/SubscriptionState;

    return-object p0

    .line 47
    :pswitch_3
    sget-object p0, Lorg/linphone/core/SubscriptionState;->Active:Lorg/linphone/core/SubscriptionState;

    return-object p0

    .line 46
    :pswitch_4
    sget-object p0, Lorg/linphone/core/SubscriptionState;->Pending:Lorg/linphone/core/SubscriptionState;

    return-object p0

    .line 45
    :pswitch_5
    sget-object p0, Lorg/linphone/core/SubscriptionState;->IncomingReceived:Lorg/linphone/core/SubscriptionState;

    return-object p0

    .line 44
    :pswitch_6
    sget-object p0, Lorg/linphone/core/SubscriptionState;->OutoingProgress:Lorg/linphone/core/SubscriptionState;

    return-object p0

    .line 43
    :pswitch_7
    sget-object p0, Lorg/linphone/core/SubscriptionState;->None:Lorg/linphone/core/SubscriptionState;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/linphone/core/SubscriptionState;
    .locals 1

    .line 3
    const-class v0, Lorg/linphone/core/SubscriptionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/linphone/core/SubscriptionState;

    return-object p0
.end method

.method public static values()[Lorg/linphone/core/SubscriptionState;
    .locals 1

    .line 3
    sget-object v0, Lorg/linphone/core/SubscriptionState;->$VALUES:[Lorg/linphone/core/SubscriptionState;

    invoke-virtual {v0}, [Lorg/linphone/core/SubscriptionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/linphone/core/SubscriptionState;

    return-object v0
.end method
