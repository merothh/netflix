.class public final Lo/BluetoothLeAdvertiser;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BackupManager$StateListAnimator;


# instance fields
.field private final a:Lo/RulesUpdaterContract;

.field private final e:Lo/RulesManager;


# direct methods
.method public constructor <init>(Lo/RulesUpdaterContract;Lo/RulesManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lo/BluetoothLeAdvertiser;->a:Lo/RulesUpdaterContract;

    .line 35
    iput-object p2, p0, Lo/BluetoothLeAdvertiser;->e:Lo/RulesManager;

    return-void
.end method


# virtual methods
.method public a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/BluetoothLeAdvertiser;->a:Lo/RulesUpdaterContract;

    invoke-interface {v0, p1, p2, p3}, Lo/RulesUpdaterContract;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public a(I)[B
    .locals 2

    .line 52
    iget-object v0, p0, Lo/BluetoothLeAdvertiser;->e:Lo/RulesManager;

    if-nez v0, :cond_0

    .line 53
    new-array p1, p1, [B

    return-object p1

    .line 55
    :cond_0
    const-class v1, [B

    invoke-interface {v0, p1, v1}, Lo/RulesManager;->b(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public c(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lo/BluetoothLeAdvertiser;->a:Lo/RulesUpdaterContract;

    invoke-interface {v0, p1}, Lo/RulesUpdaterContract;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public d([B)V
    .locals 1

    .line 60
    iget-object v0, p0, Lo/BluetoothLeAdvertiser;->e:Lo/RulesManager;

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-interface {v0, p1}, Lo/RulesManager;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public e([I)V
    .locals 1

    .line 78
    iget-object v0, p0, Lo/BluetoothLeAdvertiser;->e:Lo/RulesManager;

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-interface {v0, p1}, Lo/RulesManager;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public e(I)[I
    .locals 2

    .line 69
    iget-object v0, p0, Lo/BluetoothLeAdvertiser;->e:Lo/RulesManager;

    if-nez v0, :cond_0

    .line 70
    new-array p1, p1, [I

    return-object p1

    .line 72
    :cond_0
    const-class v1, [I

    invoke-interface {v0, p1, v1}, Lo/RulesManager;->b(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    return-object p1
.end method
