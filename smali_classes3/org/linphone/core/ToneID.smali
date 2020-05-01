.class public final enum Lorg/linphone/core/ToneID;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/linphone/core/ToneID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/linphone/core/ToneID;

.field public static final enum Busy:Lorg/linphone/core/ToneID;

.field public static final enum CallLost:Lorg/linphone/core/ToneID;

.field public static final enum CallOnHold:Lorg/linphone/core/ToneID;

.field public static final enum CallWaiting:Lorg/linphone/core/ToneID;

.field public static final enum Undefined:Lorg/linphone/core/ToneID;


# instance fields
.field protected final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lorg/linphone/core/ToneID;

    const/4 v1, 0x0

    const-string v2, "Undefined"

    invoke-direct {v0, v2, v1, v1}, Lorg/linphone/core/ToneID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/ToneID;->Undefined:Lorg/linphone/core/ToneID;

    .line 5
    new-instance v0, Lorg/linphone/core/ToneID;

    const/4 v2, 0x1

    const-string v3, "Busy"

    invoke-direct {v0, v3, v2, v2}, Lorg/linphone/core/ToneID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/ToneID;->Busy:Lorg/linphone/core/ToneID;

    .line 6
    new-instance v0, Lorg/linphone/core/ToneID;

    const/4 v3, 0x2

    const-string v4, "CallWaiting"

    invoke-direct {v0, v4, v3, v3}, Lorg/linphone/core/ToneID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/ToneID;->CallWaiting:Lorg/linphone/core/ToneID;

    .line 7
    new-instance v0, Lorg/linphone/core/ToneID;

    const/4 v4, 0x3

    const-string v5, "CallOnHold"

    invoke-direct {v0, v5, v4, v4}, Lorg/linphone/core/ToneID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/ToneID;->CallOnHold:Lorg/linphone/core/ToneID;

    .line 8
    new-instance v0, Lorg/linphone/core/ToneID;

    const/4 v5, 0x4

    const-string v6, "CallLost"

    invoke-direct {v0, v6, v5, v5}, Lorg/linphone/core/ToneID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/ToneID;->CallLost:Lorg/linphone/core/ToneID;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/linphone/core/ToneID;

    .line 3
    sget-object v6, Lorg/linphone/core/ToneID;->Undefined:Lorg/linphone/core/ToneID;

    aput-object v6, v0, v1

    sget-object v1, Lorg/linphone/core/ToneID;->Busy:Lorg/linphone/core/ToneID;

    aput-object v1, v0, v2

    sget-object v1, Lorg/linphone/core/ToneID;->CallWaiting:Lorg/linphone/core/ToneID;

    aput-object v1, v0, v3

    sget-object v1, Lorg/linphone/core/ToneID;->CallOnHold:Lorg/linphone/core/ToneID;

    aput-object v1, v0, v4

    sget-object v1, Lorg/linphone/core/ToneID;->CallLost:Lorg/linphone/core/ToneID;

    aput-object v1, v0, v5

    sput-object v0, Lorg/linphone/core/ToneID;->$VALUES:[Lorg/linphone/core/ToneID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lorg/linphone/core/ToneID;->mValue:I

    return-void
.end method

.method protected static fromInt(I)Lorg/linphone/core/ToneID;
    .locals 3

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 19
    sget-object p0, Lorg/linphone/core/ToneID;->CallLost:Lorg/linphone/core/ToneID;

    return-object p0

    .line 21
    :cond_0
    new-instance v0, Lorg/linphone/core/LinphoneCoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled enum value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " for LinphoneToneID"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_1
    sget-object p0, Lorg/linphone/core/ToneID;->CallOnHold:Lorg/linphone/core/ToneID;

    return-object p0

    .line 17
    :cond_2
    sget-object p0, Lorg/linphone/core/ToneID;->CallWaiting:Lorg/linphone/core/ToneID;

    return-object p0

    .line 16
    :cond_3
    sget-object p0, Lorg/linphone/core/ToneID;->Busy:Lorg/linphone/core/ToneID;

    return-object p0

    .line 15
    :cond_4
    sget-object p0, Lorg/linphone/core/ToneID;->Undefined:Lorg/linphone/core/ToneID;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/linphone/core/ToneID;
    .locals 1

    .line 3
    const-class v0, Lorg/linphone/core/ToneID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/linphone/core/ToneID;

    return-object p0
.end method

.method public static values()[Lorg/linphone/core/ToneID;
    .locals 1

    .line 3
    sget-object v0, Lorg/linphone/core/ToneID;->$VALUES:[Lorg/linphone/core/ToneID;

    invoke-virtual {v0}, [Lorg/linphone/core/ToneID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/linphone/core/ToneID;

    return-object v0
.end method
