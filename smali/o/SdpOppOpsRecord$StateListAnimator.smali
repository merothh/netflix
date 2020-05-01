.class public Lo/SdpOppOpsRecord$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/WallpaperBackupHelper$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SdpOppOpsRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/WallpaperBackupHelper$Application<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 45
    const-class v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public synthetic d(Ljava/lang/Object;)Lo/WallpaperBackupHelper;
    .locals 0

    .line 34
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lo/SdpOppOpsRecord$StateListAnimator;->e(Ljava/nio/ByteBuffer;)Lo/WallpaperBackupHelper;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/nio/ByteBuffer;)Lo/WallpaperBackupHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lo/WallpaperBackupHelper<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Lo/SdpOppOpsRecord;

    invoke-direct {v0, p1}, Lo/SdpOppOpsRecord;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method
