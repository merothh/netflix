.class Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/HttpNegotiateAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestData"
.end annotation


# instance fields
.field public account:Landroid/accounts/Account;

.field public accountManager:Landroid/accounts/AccountManager;

.field public authTokenType:Ljava/lang/String;

.field public nativeResultObject:J

.field public options:Landroid/os/Bundle;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
