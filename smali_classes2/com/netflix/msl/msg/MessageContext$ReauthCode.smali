.class public final enum Lcom/netflix/msl/msg/MessageContext$ReauthCode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/msl/msg/MessageContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReauthCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/msl/msg/MessageContext$ReauthCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/netflix/msl/msg/MessageContext$ReauthCode;

.field public static final enum b:Lcom/netflix/msl/msg/MessageContext$ReauthCode;

.field public static final enum e:Lcom/netflix/msl/msg/MessageContext$ReauthCode;


# instance fields
.field private final d:Lcom/netflix/msl/MslConstants$ResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 48
    new-instance v0, Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->j:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/4 v2, 0x0

    const-string v3, "USERDATA_REAUTH"

    invoke-direct {v0, v3, v2, v1}, Lcom/netflix/msl/msg/MessageContext$ReauthCode;-><init>(Ljava/lang/String;ILcom/netflix/msl/MslConstants$ResponseCode;)V

    sput-object v0, Lcom/netflix/msl/msg/MessageContext$ReauthCode;->e:Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    .line 50
    new-instance v0, Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->f:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/4 v3, 0x1

    const-string v4, "SSOTOKEN_REJECTED"

    invoke-direct {v0, v4, v3, v1}, Lcom/netflix/msl/msg/MessageContext$ReauthCode;-><init>(Ljava/lang/String;ILcom/netflix/msl/MslConstants$ResponseCode;)V

    sput-object v0, Lcom/netflix/msl/msg/MessageContext$ReauthCode;->b:Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    .line 46
    sget-object v1, Lcom/netflix/msl/msg/MessageContext$ReauthCode;->e:Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/msl/msg/MessageContext$ReauthCode;->b:Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/msl/msg/MessageContext$ReauthCode;->a:[Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/netflix/msl/MslConstants$ResponseCode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/MslConstants$ResponseCode;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-object p3, p0, Lcom/netflix/msl/msg/MessageContext$ReauthCode;->d:Lcom/netflix/msl/MslConstants$ResponseCode;

    return-void
.end method

.method public static a(Lcom/netflix/msl/MslConstants$ResponseCode;)Lcom/netflix/msl/msg/MessageContext$ReauthCode;
    .locals 5

    .line 60
    invoke-static {}, Lcom/netflix/msl/msg/MessageContext$ReauthCode;->values()[Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 61
    iget-object v4, v3, Lcom/netflix/msl/msg/MessageContext$ReauthCode;->d:Lcom/netflix/msl/MslConstants$ResponseCode;

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown reauthentication code value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/msg/MessageContext$ReauthCode;
    .locals 1

    .line 46
    const-class v0, Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    return-object p0
.end method

.method public static values()[Lcom/netflix/msl/msg/MessageContext$ReauthCode;
    .locals 1

    .line 46
    sget-object v0, Lcom/netflix/msl/msg/MessageContext$ReauthCode;->a:[Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    invoke-virtual {v0}, [Lcom/netflix/msl/msg/MessageContext$ReauthCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    return-object v0
.end method
