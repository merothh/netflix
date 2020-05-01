.class Lorg/chromium/net/AndroidCellularSignalStrength$CellStateListener;
.super Landroid/telephony/PhoneStateListener;
.source ""

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/AndroidCellularSignalStrength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellStateListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field final synthetic this$0:Lorg/chromium/net/AndroidCellularSignalStrength;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lorg/chromium/net/AndroidCellularSignalStrength;

    return-void
.end method

.method constructor <init>(Lorg/chromium/net/AndroidCellularSignalStrength;)V
    .locals 1

    .line 44
    iput-object p1, p0, Lorg/chromium/net/AndroidCellularSignalStrength$CellStateListener;->this$0:Lorg/chromium/net/AndroidCellularSignalStrength;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 45
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnBackgroundThread()V

    .line 48
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lorg/chromium/net/AndroidCellularSignalStrength$CellStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 51
    iget-object p1, p0, Lorg/chromium/net/AndroidCellularSignalStrength$CellStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->registerApplicationStateListener(Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;)V

    .line 54
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/chromium/net/AndroidCellularSignalStrength$CellStateListener;->onApplicationStateChange(I)V

    return-void
.end method

.method private register()V
    .locals 2

    .line 58
    iget-object v0, p0, Lorg/chromium/net/AndroidCellularSignalStrength$CellStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/16 v1, 0x100

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private unregister()V
    .locals 2

    .line 62
    iget-object v0, p0, Lorg/chromium/net/AndroidCellularSignalStrength$CellStateListener;->this$0:Lorg/chromium/net/AndroidCellularSignalStrength;

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Lorg/chromium/net/AndroidCellularSignalStrength;->access$002(Lorg/chromium/net/AndroidCellularSignalStrength;I)I

    .line 63
    iget-object v0, p0, Lorg/chromium/net/AndroidCellularSignalStrength$CellStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method


# virtual methods
.method public onApplicationStateChange(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 87
    invoke-direct {p0}, Lorg/chromium/net/AndroidCellularSignalStrength$CellStateListener;->register()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 89
    invoke-direct {p0}, Lorg/chromium/net/AndroidCellularSignalStrength$CellStateListener;->unregister()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 69
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 74
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/AndroidCellularSignalStrength$CellStateListener;->this$0:Lorg/chromium/net/AndroidCellularSignalStrength;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p1

    invoke-static {v0, p1}, Lorg/chromium/net/AndroidCellularSignalStrength;->access$002(Lorg/chromium/net/AndroidCellularSignalStrength;I)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    iget-object p1, p0, Lorg/chromium/net/AndroidCellularSignalStrength$CellStateListener;->this$0:Lorg/chromium/net/AndroidCellularSignalStrength;

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Lorg/chromium/net/AndroidCellularSignalStrength;->access$002(Lorg/chromium/net/AndroidCellularSignalStrength;I)I

    :goto_0
    return-void
.end method
