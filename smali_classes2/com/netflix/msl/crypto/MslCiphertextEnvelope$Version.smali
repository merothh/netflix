.class public final enum Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/msl/crypto/MslCiphertextEnvelope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Version"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

.field public static final enum c:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

.field public static final enum e:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 72
    new-instance v0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    const/4 v1, 0x0

    const-string v2, "V1"

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->c:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    .line 96
    new-instance v0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    const/4 v2, 0x1

    const-string v3, "V2"

    invoke-direct {v0, v3, v2}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->e:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    .line 51
    sget-object v3, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->c:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->e:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->a:[Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static c(I)Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 106
    sget-object p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->e:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    return-object p0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ciphertext envelope version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    sget-object p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->c:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;
    .locals 1

    .line 51
    const-class v0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    return-object p0
.end method

.method public static values()[Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;
    .locals 1

    .line 51
    sget-object v0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->a:[Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    invoke-virtual {v0}, [Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    return-object v0
.end method


# virtual methods
.method public d()I
    .locals 3

    .line 115
    sget-object v0, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$3;->e:[I

    invoke-virtual {p0}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return v1

    .line 118
    :cond_0
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No integer value defined for version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v1
.end method
