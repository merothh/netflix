.class public final enum Lcom/netflix/msl/MslConstants$CipherSpec;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/msl/MslConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CipherSpec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/msl/MslConstants$CipherSpec;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/msl/MslConstants$CipherSpec;

.field public static final enum c:Lcom/netflix/msl/MslConstants$CipherSpec;

.field public static final enum d:Lcom/netflix/msl/MslConstants$CipherSpec;

.field private static final synthetic e:[Lcom/netflix/msl/MslConstants$CipherSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 102
    new-instance v0, Lcom/netflix/msl/MslConstants$CipherSpec;

    const/4 v1, 0x0

    const-string v2, "AES_CBC_PKCS5Padding"

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/MslConstants$CipherSpec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/MslConstants$CipherSpec;->d:Lcom/netflix/msl/MslConstants$CipherSpec;

    .line 104
    new-instance v0, Lcom/netflix/msl/MslConstants$CipherSpec;

    const/4 v2, 0x1

    const-string v3, "AESWrap"

    invoke-direct {v0, v3, v2}, Lcom/netflix/msl/MslConstants$CipherSpec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/MslConstants$CipherSpec;->c:Lcom/netflix/msl/MslConstants$CipherSpec;

    .line 106
    new-instance v0, Lcom/netflix/msl/MslConstants$CipherSpec;

    const/4 v3, 0x2

    const-string v4, "RSA_ECB_PKCS1Padding"

    invoke-direct {v0, v4, v3}, Lcom/netflix/msl/MslConstants$CipherSpec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/MslConstants$CipherSpec;->a:Lcom/netflix/msl/MslConstants$CipherSpec;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/msl/MslConstants$CipherSpec;

    .line 100
    sget-object v4, Lcom/netflix/msl/MslConstants$CipherSpec;->d:Lcom/netflix/msl/MslConstants$CipherSpec;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/msl/MslConstants$CipherSpec;->c:Lcom/netflix/msl/MslConstants$CipherSpec;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/msl/MslConstants$CipherSpec;->a:Lcom/netflix/msl/MslConstants$CipherSpec;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/msl/MslConstants$CipherSpec;->e:[Lcom/netflix/msl/MslConstants$CipherSpec;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$CipherSpec;
    .locals 1

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 120
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    sget-object p0, Lcom/netflix/msl/MslConstants$CipherSpec;->d:Lcom/netflix/msl/MslConstants$CipherSpec;

    return-object p0

    :cond_0
    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 122
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    sget-object p0, Lcom/netflix/msl/MslConstants$CipherSpec;->a:Lcom/netflix/msl/MslConstants$CipherSpec;

    return-object p0

    .line 124
    :cond_1
    const-class v0, Lcom/netflix/msl/MslConstants$CipherSpec;

    invoke-static {v0, p0}, Lcom/netflix/msl/MslConstants$CipherSpec;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/msl/MslConstants$CipherSpec;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$CipherSpec;
    .locals 1

    .line 100
    const-class v0, Lcom/netflix/msl/MslConstants$CipherSpec;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/msl/MslConstants$CipherSpec;

    return-object p0
.end method

.method public static values()[Lcom/netflix/msl/MslConstants$CipherSpec;
    .locals 1

    .line 100
    sget-object v0, Lcom/netflix/msl/MslConstants$CipherSpec;->e:[Lcom/netflix/msl/MslConstants$CipherSpec;

    invoke-virtual {v0}, [Lcom/netflix/msl/MslConstants$CipherSpec;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/MslConstants$CipherSpec;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 137
    sget-object v0, Lcom/netflix/msl/MslConstants$4;->d:[I

    invoke-virtual {p0}, Lcom/netflix/msl/MslConstants$CipherSpec;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/netflix/msl/MslConstants$CipherSpec;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "RSA/ECB/PKCS1Padding"

    return-object v0

    :cond_1
    const-string v0, "AES/CBC/PKCS5Padding"

    return-object v0
.end method
