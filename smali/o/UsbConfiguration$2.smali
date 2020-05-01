.class Lo/UsbConfiguration$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/UsbConfiguration;->b(Lo/SoundTriggerModule;I[B)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/SoundTriggerModule;

.field final synthetic b:Lo/UsbConfiguration$StateListAnimator;

.field final synthetic c:[B

.field final synthetic d:Ljava/io/File;

.field final synthetic e:Ljava/io/File;

.field final synthetic f:Lo/UsbConfiguration;


# direct methods
.method constructor <init>(Lo/UsbConfiguration;Ljava/io/File;[BLo/UsbConfiguration$StateListAnimator;Ljava/io/File;Lo/SoundTriggerModule;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lo/UsbConfiguration$2;->f:Lo/UsbConfiguration;

    iput-object p2, p0, Lo/UsbConfiguration$2;->d:Ljava/io/File;

    iput-object p3, p0, Lo/UsbConfiguration$2;->c:[B

    iput-object p4, p0, Lo/UsbConfiguration$2;->b:Lo/UsbConfiguration$StateListAnimator;

    iput-object p5, p0, Lo/UsbConfiguration$2;->e:Ljava/io/File;

    iput-object p6, p0, Lo/UsbConfiguration$2;->a:Lo/SoundTriggerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, " (from syncer thread)"

    const-string v1, "rw"

    const-string v2, "releasing dso store lock for "

    const-string v3, "fb-UnpackingSoSource"

    :try_start_0
    const-string v4, "starting syncer worker"

    .line 343
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v4, Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lo/UsbConfiguration$2;->d:Ljava/io/File;

    invoke-direct {v4, v5, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 353
    :try_start_1
    iget-object v5, p0, Lo/UsbConfiguration$2;->c:[B

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->write([B)V

    .line 354
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 355
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 357
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lo/UsbConfiguration$2;->f:Lo/UsbConfiguration;

    iget-object v5, v5, Lo/UsbConfiguration;->b:Ljava/io/File;

    const-string v6, "dso_manifest"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 358
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {v5, v4, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 359
    :try_start_3
    iget-object v1, p0, Lo/UsbConfiguration$2;->b:Lo/UsbConfiguration$StateListAnimator;

    invoke-virtual {v1, v5}, Lo/UsbConfiguration$StateListAnimator;->e(Ljava/io/DataOutput;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 360
    :try_start_4
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 362
    iget-object v1, p0, Lo/UsbConfiguration$2;->f:Lo/UsbConfiguration;

    iget-object v1, v1, Lo/UsbConfiguration;->b:Ljava/io/File;

    invoke-static {v1}, Lcom/facebook/soloader/SysUtil;->e(Ljava/io/File;)V

    .line 363
    iget-object v1, p0, Lo/UsbConfiguration$2;->e:Ljava/io/File;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lo/UsbConfiguration;->c(Ljava/io/File;B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 365
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/UsbConfiguration$2;->f:Lo/UsbConfiguration;

    iget-object v2, v2, Lo/UsbConfiguration;->b:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lo/UsbConfiguration$2;->a:Lo/SoundTriggerModule;

    invoke-virtual {v0}, Lo/SoundTriggerModule;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    return-void

    :catchall_0
    move-exception v1

    .line 358
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v4

    .line 360
    :try_start_7
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v5

    :try_start_8
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_3
    move-exception v1

    .line 352
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v5

    .line 355
    :try_start_a
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v4

    :try_start_b
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :catchall_6
    move-exception v1

    .line 365
    :try_start_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/UsbConfiguration$2;->f:Lo/UsbConfiguration;

    iget-object v2, v2, Lo/UsbConfiguration;->b:Ljava/io/File;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lo/UsbConfiguration$2;->a:Lo/SoundTriggerModule;

    invoke-virtual {v0}, Lo/SoundTriggerModule;->close()V

    .line 367
    throw v1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception v0

    .line 369
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
