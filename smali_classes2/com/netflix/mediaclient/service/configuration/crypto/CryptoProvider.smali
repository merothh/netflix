.class public final enum Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

.field public static final enum d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

.field public static final enum e:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

.field private static final synthetic g:[Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    const-string v1, ""

    const/4 v2, 0x0

    const-string v3, "LEGACY"

    invoke-direct {v0, v3, v2, v1, v2}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->e:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    const/4 v3, 0x1

    const-string v4, "WIDEVINE_L1"

    invoke-direct {v0, v4, v3, v1, v3}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->c:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    const/4 v1, 0x3

    const/4 v4, 0x2

    const-string v5, "WIDEVINE_L3"

    const-string v6, "L3-"

    invoke-direct {v0, v5, v4, v6, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    new-array v0, v1, [Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    .line 6
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->e:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->c:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->g:[Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->b:Ljava/lang/String;

    .line 17
    iput p4, p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->a:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 1

    .line 25
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->e:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    sget-object p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->e:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    return-object p0

    .line 27
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->c:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    sget-object p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->c:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    return-object p0

    .line 29
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 30
    sget-object p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 1

    .line 6
    const-class v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;
    .locals 1

    .line 6
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->g:[Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    return-object v0
.end method
