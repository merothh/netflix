.class abstract Lo/Gf;
.super Lo/Gc;
.source ""


# static fields
.field protected static c:Ljava/lang/String; = "nf_crypto_error_msl"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lo/Gc;-><init>()V

    return-void
.end method


# virtual methods
.method d()Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;
    .locals 1

    .line 18
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->e:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    return-object v0
.end method
