.class Lo/AdvertisingSetCallback$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AdvertisingSetCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method b(Lo/BackupManager$StateListAnimator;Lo/FileBackupHelper;Ljava/nio/ByteBuffer;I)Lo/BackupManager;
    .locals 1

    .line 147
    new-instance v0, Lo/BackupProgress;

    invoke-direct {v0, p1, p2, p3, p4}, Lo/BackupProgress;-><init>(Lo/BackupManager$StateListAnimator;Lo/FileBackupHelper;Ljava/nio/ByteBuffer;I)V

    return-object v0
.end method
