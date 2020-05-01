.class public Lo/BluetoothUuid;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FullBackup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BluetoothUuid$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/FullBackup<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lo/BluetoothProfile;

.field private final e:Lo/RulesManager;


# direct methods
.method public constructor <init>(Lo/BluetoothProfile;Lo/RulesManager;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lo/BluetoothUuid;->c:Lo/BluetoothProfile;

    .line 25
    iput-object p2, p0, Lo/BluetoothUuid;->e:Lo/RulesManager;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;IILo/FullBackupAgent;)Lo/Slice;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lo/FullBackupAgent;",
            ")",
            "Lo/Slice<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 41
    instance-of v0, p1, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    if-eqz v0, :cond_0

    .line 42
    check-cast p1, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    const/4 v0, 0x0

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    iget-object v1, p0, Lo/BluetoothUuid;->e:Lo/RulesManager;

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lo/RulesManager;)V

    const/4 p1, 0x1

    move-object p1, v0

    const/4 v0, 0x1

    .line 53
    :goto_0
    invoke-static {p1}, Lo/BaseParceledListSlice;->e(Ljava/io/InputStream;)Lo/BaseParceledListSlice;

    move-result-object v1

    .line 59
    new-instance v3, Lo/InstantAppIntentFilter;

    invoke-direct {v3, v1}, Lo/InstantAppIntentFilter;-><init>(Ljava/io/InputStream;)V

    .line 60
    new-instance v7, Lo/BluetoothUuid$StateListAnimator;

    invoke-direct {v7, p1, v1}, Lo/BluetoothUuid$StateListAnimator;-><init>(Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Lo/BaseParceledListSlice;)V

    .line 62
    :try_start_0
    iget-object v2, p0, Lo/BluetoothUuid;->c:Lo/BluetoothProfile;

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lo/BluetoothProfile;->a(Ljava/io/InputStream;IILo/FullBackupAgent;Lo/BluetoothProfile$ActionBar;)Lo/Slice;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {v1}, Lo/BaseParceledListSlice;->d()V

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->a()V

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    .line 64
    invoke-virtual {v1}, Lo/BaseParceledListSlice;->d()V

    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->a()V

    :cond_2
    throw p2
.end method

.method public synthetic c(Ljava/lang/Object;Lo/FullBackupAgent;)Z
    .locals 0

    .line 18
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lo/BluetoothUuid;->d(Ljava/io/InputStream;Lo/FullBackupAgent;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/io/InputStream;Lo/FullBackupAgent;)Z
    .locals 0

    .line 30
    iget-object p2, p0, Lo/BluetoothUuid;->c:Lo/BluetoothProfile;

    invoke-virtual {p2, p1}, Lo/BluetoothProfile;->a(Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public synthetic e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/Slice;
    .locals 0

    .line 18
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/BluetoothUuid;->a(Ljava/io/InputStream;IILo/FullBackupAgent;)Lo/Slice;

    move-result-object p1

    return-object p1
.end method
