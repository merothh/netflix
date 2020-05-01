.class public final Lo/ScanCallback;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lo/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/FullBackupDataOutput<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lo/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/FullBackupDataOutput<",
            "Lcom/bumptech/glide/load/DecodeFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->b:Lcom/bumptech/glide/load/DecodeFormat;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    invoke-static {v1, v0}, Lo/FullBackupDataOutput;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/FullBackupDataOutput;

    move-result-object v0

    sput-object v0, Lo/ScanCallback;->c:Lo/FullBackupDataOutput;

    const/4 v0, 0x0

    .line 27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    .line 26
    invoke-static {v1, v0}, Lo/FullBackupDataOutput;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/FullBackupDataOutput;

    move-result-object v0

    sput-object v0, Lo/ScanCallback;->a:Lo/FullBackupDataOutput;

    return-void
.end method
