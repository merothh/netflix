.class public final enum Lcom/netflix/msl/util/MslContext$ReauthCode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/msl/util/MslContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReauthCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/msl/util/MslContext$ReauthCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/msl/util/MslContext$ReauthCode;

.field private static final synthetic c:[Lcom/netflix/msl/util/MslContext$ReauthCode;

.field public static final enum e:Lcom/netflix/msl/util/MslContext$ReauthCode;


# instance fields
.field private final b:Lcom/netflix/msl/MslConstants$ResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 54
    new-instance v0, Lcom/netflix/msl/util/MslContext$ReauthCode;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->c:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/4 v2, 0x0

    const-string v3, "ENTITY_REAUTH"

    invoke-direct {v0, v3, v2, v1}, Lcom/netflix/msl/util/MslContext$ReauthCode;-><init>(Ljava/lang/String;ILcom/netflix/msl/MslConstants$ResponseCode;)V

    sput-object v0, Lcom/netflix/msl/util/MslContext$ReauthCode;->a:Lcom/netflix/msl/util/MslContext$ReauthCode;

    .line 56
    new-instance v0, Lcom/netflix/msl/util/MslContext$ReauthCode;

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->i:Lcom/netflix/msl/MslConstants$ResponseCode;

    const/4 v3, 0x1

    const-string v4, "ENTITYDATA_REAUTH"

    invoke-direct {v0, v4, v3, v1}, Lcom/netflix/msl/util/MslContext$ReauthCode;-><init>(Ljava/lang/String;ILcom/netflix/msl/MslConstants$ResponseCode;)V

    sput-object v0, Lcom/netflix/msl/util/MslContext$ReauthCode;->e:Lcom/netflix/msl/util/MslContext$ReauthCode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/msl/util/MslContext$ReauthCode;

    .line 52
    sget-object v1, Lcom/netflix/msl/util/MslContext$ReauthCode;->a:Lcom/netflix/msl/util/MslContext$ReauthCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/msl/util/MslContext$ReauthCode;->e:Lcom/netflix/msl/util/MslContext$ReauthCode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/msl/util/MslContext$ReauthCode;->c:[Lcom/netflix/msl/util/MslContext$ReauthCode;

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

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput-object p3, p0, Lcom/netflix/msl/util/MslContext$ReauthCode;->b:Lcom/netflix/msl/MslConstants$ResponseCode;

    return-void
.end method

.method public static b(Lcom/netflix/msl/MslConstants$ResponseCode;)Lcom/netflix/msl/util/MslContext$ReauthCode;
    .locals 5

    .line 66
    invoke-static {}, Lcom/netflix/msl/util/MslContext$ReauthCode;->values()[Lcom/netflix/msl/util/MslContext$ReauthCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 67
    iget-object v4, v3, Lcom/netflix/msl/util/MslContext$ReauthCode;->b:Lcom/netflix/msl/MslConstants$ResponseCode;

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
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

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/util/MslContext$ReauthCode;
    .locals 1

    .line 52
    const-class v0, Lcom/netflix/msl/util/MslContext$ReauthCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/msl/util/MslContext$ReauthCode;

    return-object p0
.end method

.method public static values()[Lcom/netflix/msl/util/MslContext$ReauthCode;
    .locals 1

    .line 52
    sget-object v0, Lcom/netflix/msl/util/MslContext$ReauthCode;->c:[Lcom/netflix/msl/util/MslContext$ReauthCode;

    invoke-virtual {v0}, [Lcom/netflix/msl/util/MslContext$ReauthCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/util/MslContext$ReauthCode;

    return-object v0
.end method
