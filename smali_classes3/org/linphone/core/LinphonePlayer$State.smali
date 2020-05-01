.class public final enum Lorg/linphone/core/LinphonePlayer$State;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/linphone/core/LinphonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/linphone/core/LinphonePlayer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/linphone/core/LinphonePlayer$State;

.field public static final enum closed:Lorg/linphone/core/LinphonePlayer$State;

.field public static final enum paused:Lorg/linphone/core/LinphonePlayer$State;

.field public static final enum playing:Lorg/linphone/core/LinphonePlayer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Lorg/linphone/core/LinphonePlayer$State;

    const/4 v1, 0x0

    const-string v2, "closed"

    invoke-direct {v0, v2, v1}, Lorg/linphone/core/LinphonePlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/linphone/core/LinphonePlayer$State;->closed:Lorg/linphone/core/LinphonePlayer$State;

    .line 18
    new-instance v0, Lorg/linphone/core/LinphonePlayer$State;

    const/4 v2, 0x1

    const-string v3, "paused"

    invoke-direct {v0, v3, v2}, Lorg/linphone/core/LinphonePlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/linphone/core/LinphonePlayer$State;->paused:Lorg/linphone/core/LinphonePlayer$State;

    .line 19
    new-instance v0, Lorg/linphone/core/LinphonePlayer$State;

    const/4 v3, 0x2

    const-string v4, "playing"

    invoke-direct {v0, v4, v3}, Lorg/linphone/core/LinphonePlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/linphone/core/LinphonePlayer$State;->playing:Lorg/linphone/core/LinphonePlayer$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/linphone/core/LinphonePlayer$State;

    .line 16
    sget-object v4, Lorg/linphone/core/LinphonePlayer$State;->closed:Lorg/linphone/core/LinphonePlayer$State;

    aput-object v4, v0, v1

    sget-object v1, Lorg/linphone/core/LinphonePlayer$State;->paused:Lorg/linphone/core/LinphonePlayer$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/linphone/core/LinphonePlayer$State;->playing:Lorg/linphone/core/LinphonePlayer$State;

    aput-object v1, v0, v3

    sput-object v0, Lorg/linphone/core/LinphonePlayer$State;->$VALUES:[Lorg/linphone/core/LinphonePlayer$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromValue(I)Lorg/linphone/core/LinphonePlayer$State;
    .locals 1

    if-nez p0, :cond_0

    .line 23
    sget-object p0, Lorg/linphone/core/LinphonePlayer$State;->closed:Lorg/linphone/core/LinphonePlayer$State;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 25
    sget-object p0, Lorg/linphone/core/LinphonePlayer$State;->paused:Lorg/linphone/core/LinphonePlayer$State;

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 27
    sget-object p0, Lorg/linphone/core/LinphonePlayer$State;->playing:Lorg/linphone/core/LinphonePlayer$State;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/linphone/core/LinphonePlayer$State;
    .locals 1

    .line 16
    const-class v0, Lorg/linphone/core/LinphonePlayer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/linphone/core/LinphonePlayer$State;

    return-object p0
.end method

.method public static values()[Lorg/linphone/core/LinphonePlayer$State;
    .locals 1

    .line 16
    sget-object v0, Lorg/linphone/core/LinphonePlayer$State;->$VALUES:[Lorg/linphone/core/LinphonePlayer$State;

    invoke-virtual {v0}, [Lorg/linphone/core/LinphonePlayer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/linphone/core/LinphonePlayer$State;

    return-object v0
.end method
