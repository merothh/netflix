.class synthetic Lcom/netflix/msl/crypto/MslSignatureEnvelope$3;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/msl/crypto/MslSignatureEnvelope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 96
    invoke-static {}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->values()[Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$3;->b:[I

    :try_start_0
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$3;->b:[I

    sget-object v1, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->b:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    invoke-virtual {v1}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$3;->b:[I

    sget-object v1, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->d:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    invoke-virtual {v1}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
