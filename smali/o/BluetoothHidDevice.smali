.class public Lo/BluetoothHidDevice;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RestoreDescription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/RestoreDescription<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lo/RestoreDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RestoreDescription<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lo/RulesUpdaterContract;


# direct methods
.method public constructor <init>(Lo/RulesUpdaterContract;Lo/RestoreDescription;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RulesUpdaterContract;",
            "Lo/RestoreDescription<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lo/BluetoothHidDevice;->d:Lo/RulesUpdaterContract;

    .line 23
    iput-object p2, p0, Lo/BluetoothHidDevice;->b:Lo/RestoreDescription;

    return-void
.end method


# virtual methods
.method public a(Lo/FullBackupAgent;)Lcom/bumptech/glide/load/EncodeStrategy;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/BluetoothHidDevice;->b:Lo/RestoreDescription;

    invoke-interface {v0, p1}, Lo/RestoreDescription;->a(Lo/FullBackupAgent;)Lcom/bumptech/glide/load/EncodeStrategy;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Ljava/lang/Object;Ljava/io/File;Lo/FullBackupAgent;)Z
    .locals 0

    .line 16
    check-cast p1, Lo/Slice;

    invoke-virtual {p0, p1, p2, p3}, Lo/BluetoothHidDevice;->e(Lo/Slice;Ljava/io/File;Lo/FullBackupAgent;)Z

    move-result p1

    return p1
.end method

.method public e(Lo/Slice;Ljava/io/File;Lo/FullBackupAgent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Slice<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;",
            "Ljava/io/File;",
            "Lo/FullBackupAgent;",
            ")Z"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lo/BluetoothHidDevice;->b:Lo/RestoreDescription;

    new-instance v1, Lo/BluetoothHidDeviceAppQosSettings;

    invoke-interface {p1}, Lo/Slice;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v2, p0, Lo/BluetoothHidDevice;->d:Lo/RulesUpdaterContract;

    invoke-direct {v1, p1, v2}, Lo/BluetoothHidDeviceAppQosSettings;-><init>(Landroid/graphics/Bitmap;Lo/RulesUpdaterContract;)V

    invoke-interface {v0, v1, p2, p3}, Lo/RestoreDescription;->c(Ljava/lang/Object;Ljava/io/File;Lo/FullBackupAgent;)Z

    move-result p1

    return p1
.end method
