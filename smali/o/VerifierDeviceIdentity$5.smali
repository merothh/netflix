.class final Lo/VerifierDeviceIdentity$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UserInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/VerifierDeviceIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/UserInfo<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    .line 31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lo/VerifierDeviceIdentity$5;->c()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
