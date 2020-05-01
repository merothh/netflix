.class public Lo/SdpOppOpsRecord;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/WallpaperBackupHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SdpOppOpsRecord$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/WallpaperBackupHelper<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lo/SdpOppOpsRecord;->c:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()Ljava/nio/ByteBuffer;
    .locals 2

    .line 22
    iget-object v0, p0, Lo/SdpOppOpsRecord;->c:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 23
    iget-object v0, p0, Lo/SdpOppOpsRecord;->c:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lo/SdpOppOpsRecord;->b()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
