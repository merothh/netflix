.class Lo/yW$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/yW;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/yW;


# direct methods
.method constructor <init>(Lo/yW;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lo/yW$5;->b:Lo/yW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "nf_voip_bluetooth"

    const-string v1, "[BluetoothAudioManager] Headset connected"

    .line 73
    invoke-static {p1, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object p1, p0, Lo/yW$5;->b:Lo/yW;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p1, p2}, Lo/yW;->e(Lo/yW;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 75
    iget-object p1, p0, Lo/yW$5;->b:Lo/yW;

    invoke-static {p1, v0}, Lo/yW;->c(Lo/yW;Z)Z

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 80
    iget-object p1, p0, Lo/yW$5;->b:Lo/yW;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/yW;->e(Lo/yW;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 81
    iget-object p1, p0, Lo/yW$5;->b:Lo/yW;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/yW;->c(Lo/yW;Z)Z

    const-string p1, "nf_voip_bluetooth"

    const-string v0, "[BluetoothAudioManager] Headset disconnected"

    .line 82
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object p1, p0, Lo/yW$5;->b:Lo/yW;

    invoke-static {p1}, Lo/yW;->c(Lo/yW;)Lo/yW$ActionBar;

    move-result-object p1

    invoke-interface {p1}, Lo/yW$ActionBar;->P_()V

    :cond_0
    return-void
.end method
