.class public final enum Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

.field private static final synthetic c:[Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

.field public static final enum d:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

.field public static final enum e:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 189
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    const/4 v1, 0x0

    const-string v2, "notSuspended"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;->d:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    .line 190
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    const/4 v2, 0x1

    const-string v3, "suspended"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;->e:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    .line 191
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    const/4 v3, 0x2

    const-string v4, "inRestoration"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;->a:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    .line 188
    sget-object v4, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;->d:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;->e:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;->a:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;->c:[Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 188
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;
    .locals 1

    .line 188
    const-class v0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;
    .locals 1

    .line 188
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;->c:[Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$State;

    return-object v0
.end method
