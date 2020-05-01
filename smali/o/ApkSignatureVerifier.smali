.class public final Lo/ApkSignatureVerifier;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/ApkSignatureSchemeV2Verifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lo/ApkSignatureVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/ApkSignatureVerifier;

    invoke-direct {v0}, Lo/ApkSignatureVerifier;-><init>()V

    sput-object v0, Lo/ApkSignatureVerifier;->a:Lo/ApkSignatureVerifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lo/ApkSignatureVerifier;
    .locals 1

    .line 19
    sget-object v0, Lo/ApkSignatureVerifier;->a:Lo/ApkSignatureVerifier;

    return-object v0
.end method


# virtual methods
.method public b()Lo/ApkSignatureSchemeV2Verifier;
    .locals 1

    .line 15
    new-instance v0, Lo/ApkSignatureSchemeV2Verifier;

    invoke-direct {v0}, Lo/ApkSignatureSchemeV2Verifier;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/ApkSignatureVerifier;->b()Lo/ApkSignatureSchemeV2Verifier;

    move-result-object v0

    return-object v0
.end method
