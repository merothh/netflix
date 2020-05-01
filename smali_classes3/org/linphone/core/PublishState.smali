.class public final enum Lorg/linphone/core/PublishState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/linphone/core/PublishState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/linphone/core/PublishState;

.field public static final enum Cleared:Lorg/linphone/core/PublishState;

.field public static final enum Error:Lorg/linphone/core/PublishState;

.field public static final enum Expiring:Lorg/linphone/core/PublishState;

.field public static final enum None:Lorg/linphone/core/PublishState;

.field public static final enum Ok:Lorg/linphone/core/PublishState;

.field public static final enum Progress:Lorg/linphone/core/PublishState;


# instance fields
.field protected final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 7
    new-instance v0, Lorg/linphone/core/PublishState;

    const/4 v1, 0x0

    const-string v2, "None"

    invoke-direct {v0, v2, v1, v1}, Lorg/linphone/core/PublishState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PublishState;->None:Lorg/linphone/core/PublishState;

    .line 11
    new-instance v0, Lorg/linphone/core/PublishState;

    const/4 v2, 0x1

    const-string v3, "Progress"

    invoke-direct {v0, v3, v2, v2}, Lorg/linphone/core/PublishState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PublishState;->Progress:Lorg/linphone/core/PublishState;

    .line 15
    new-instance v0, Lorg/linphone/core/PublishState;

    const/4 v3, 0x2

    const-string v4, "Ok"

    invoke-direct {v0, v4, v3, v3}, Lorg/linphone/core/PublishState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PublishState;->Ok:Lorg/linphone/core/PublishState;

    .line 20
    new-instance v0, Lorg/linphone/core/PublishState;

    const/4 v4, 0x3

    const-string v5, "Error"

    invoke-direct {v0, v5, v4, v4}, Lorg/linphone/core/PublishState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PublishState;->Error:Lorg/linphone/core/PublishState;

    .line 26
    new-instance v0, Lorg/linphone/core/PublishState;

    const/4 v5, 0x4

    const-string v6, "Expiring"

    invoke-direct {v0, v6, v5, v5}, Lorg/linphone/core/PublishState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PublishState;->Expiring:Lorg/linphone/core/PublishState;

    .line 30
    new-instance v0, Lorg/linphone/core/PublishState;

    const/4 v6, 0x5

    const-string v7, "Cleared"

    invoke-direct {v0, v7, v6, v6}, Lorg/linphone/core/PublishState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PublishState;->Cleared:Lorg/linphone/core/PublishState;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/linphone/core/PublishState;

    .line 3
    sget-object v7, Lorg/linphone/core/PublishState;->None:Lorg/linphone/core/PublishState;

    aput-object v7, v0, v1

    sget-object v1, Lorg/linphone/core/PublishState;->Progress:Lorg/linphone/core/PublishState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/linphone/core/PublishState;->Ok:Lorg/linphone/core/PublishState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/linphone/core/PublishState;->Error:Lorg/linphone/core/PublishState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/linphone/core/PublishState;->Expiring:Lorg/linphone/core/PublishState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/linphone/core/PublishState;->Cleared:Lorg/linphone/core/PublishState;

    aput-object v1, v0, v6

    sput-object v0, Lorg/linphone/core/PublishState;->$VALUES:[Lorg/linphone/core/PublishState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lorg/linphone/core/PublishState;->mValue:I

    return-void
.end method

.method protected static fromInt(I)Lorg/linphone/core/PublishState;
    .locals 3

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 43
    sget-object p0, Lorg/linphone/core/PublishState;->Cleared:Lorg/linphone/core/PublishState;

    return-object p0

    .line 45
    :cond_0
    new-instance v0, Lorg/linphone/core/LinphoneCoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled enum value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " for PublishState"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    sget-object p0, Lorg/linphone/core/PublishState;->Expiring:Lorg/linphone/core/PublishState;

    return-object p0

    .line 41
    :cond_2
    sget-object p0, Lorg/linphone/core/PublishState;->Error:Lorg/linphone/core/PublishState;

    return-object p0

    .line 40
    :cond_3
    sget-object p0, Lorg/linphone/core/PublishState;->Ok:Lorg/linphone/core/PublishState;

    return-object p0

    .line 39
    :cond_4
    sget-object p0, Lorg/linphone/core/PublishState;->Progress:Lorg/linphone/core/PublishState;

    return-object p0

    .line 38
    :cond_5
    sget-object p0, Lorg/linphone/core/PublishState;->None:Lorg/linphone/core/PublishState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/linphone/core/PublishState;
    .locals 1

    .line 3
    const-class v0, Lorg/linphone/core/PublishState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/linphone/core/PublishState;

    return-object p0
.end method

.method public static values()[Lorg/linphone/core/PublishState;
    .locals 1

    .line 3
    sget-object v0, Lorg/linphone/core/PublishState;->$VALUES:[Lorg/linphone/core/PublishState;

    invoke-virtual {v0}, [Lorg/linphone/core/PublishState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/linphone/core/PublishState;

    return-object v0
.end method
