.class public Lo/VerifierDeviceIdentity;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final b:Lo/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserInfo<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lo/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserInfo<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lo/VerifierDeviceIdentity$5;

    invoke-direct {v0}, Lo/VerifierDeviceIdentity$5;-><init>()V

    sput-object v0, Lo/VerifierDeviceIdentity;->b:Lo/UserInfo;

    .line 36
    new-instance v0, Lo/VerifierDeviceIdentity$1;

    invoke-direct {v0}, Lo/VerifierDeviceIdentity$1;-><init>()V

    sput-object v0, Lo/VerifierDeviceIdentity;->e:Lo/UserInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/Object;)Lo/UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lo/UserInfo<",
            "TT;>;"
        }
    .end annotation

    .line 18
    new-instance v0, Lo/VerifierDeviceIdentity$2;

    invoke-direct {v0, p0}, Lo/VerifierDeviceIdentity$2;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
