.class final Lo/Base64$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FragmentManagerNonConfig$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Base64;->d(Landroid/content/Context;Lo/alB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/FragmentManagerNonConfig$StateListAnimator<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/Base64;


# direct methods
.method constructor <init>(Lo/Base64;)V
    .locals 0

    iput-object p1, p0, Lo/Base64$Activity;->c:Lo/Base64;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, "kid"

    .line 260
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "aid"

    .line 261
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "modulus"

    .line 262
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "response.getString(\"modulus\")"

    invoke-static {v5, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exponent"

    .line 263
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p1, "response.getString(\"exponent\")"

    invoke-static {v6, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iget-object p1, p0, Lo/Base64$Activity;->c:Lo/Base64;

    new-instance v0, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;-><init>(JILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lo/Base64;->d(Lcom/netflix/mediaclient/acquisition/util/crypto/NetflixPublicKey;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 257
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lo/Base64$Activity;->a(Lorg/json/JSONObject;)V

    return-void
.end method
