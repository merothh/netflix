.class public abstract Lcom/netflix/msl/MslConstants;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/msl/MslConstants$ResponseCode;,
        Lcom/netflix/msl/MslConstants$SignatureAlgo;,
        Lcom/netflix/msl/MslConstants$CipherSpec;,
        Lcom/netflix/msl/MslConstants$EncryptionAlgo;,
        Lcom/netflix/msl/MslConstants$CompressionAlgorithm;
    }
.end annotation


# static fields
.field public static final b:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 28
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/netflix/msl/MslConstants;->b:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
