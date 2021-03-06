.class public Lcom/netflix/mediaclient/util/CarrierUtils;
.super Landroid/telephony/PhoneStateListener;
.source "CarrierUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf-carrier"

.field private static instance:Lcom/netflix/mediaclient/util/CarrierUtils;


# instance fields
.field private carrier:Ljava/lang/String;

.field private context:Lcom/netflix/mediaclient/NetflixApplication;

.field private listening:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/netflix/mediaclient/util/CarrierUtils;
    .locals 2

    const-class v1, Lcom/netflix/mediaclient/util/CarrierUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/util/CarrierUtils;->instance:Lcom/netflix/mediaclient/util/CarrierUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/util/CarrierUtils;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/CarrierUtils;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/util/CarrierUtils;->instance:Lcom/netflix/mediaclient/util/CarrierUtils;

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/util/CarrierUtils;->instance:Lcom/netflix/mediaclient/util/CarrierUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized destroy(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/util/CarrierUtils;->listening:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/util/CarrierUtils;->listening:Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/util/CarrierUtils;->context:Lcom/netflix/mediaclient/NetflixApplication;

    const/4 v0, 0x0

    sput-object v0, Lcom/netflix/mediaclient/util/CarrierUtils;->instance:Lcom/netflix/mediaclient/util/CarrierUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCarrier()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/CarrierUtils;->context:Lcom/netflix/mediaclient/NetflixApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/util/CarrierUtils;->context:Lcom/netflix/mediaclient/NetflixApplication;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/util/CarrierUtils;->updateCarrier(Lcom/netflix/mediaclient/NetflixApplication;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/CarrierUtils;->carrier:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nf-carrier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceStateChanged: New carrier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", old carrier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/util/CarrierUtils;->carrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string/jumbo v1, "N/A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    :cond_0
    const-string/jumbo v0, "nf-carrier"

    const-string/jumbo v1, "onServiceStateChanged: Invalid carrier name, keep old carrier data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void

    :cond_1
    iput-object v0, p0, Lcom/netflix/mediaclient/util/CarrierUtils;->carrier:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "nf-carrier"

    const-string/jumbo v1, "onServiceStateChanged: null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized updateCarrier(Lcom/netflix/mediaclient/NetflixApplication;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/netflix/mediaclient/util/CarrierUtils;->context:Lcom/netflix/mediaclient/NetflixApplication;

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/NetflixApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/util/CarrierUtils;->carrier:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/util/CarrierUtils;->carrier:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/netflix/mediaclient/util/CarrierUtils;->carrier:Ljava/lang/String;

    const-string/jumbo v1, "nf-carrier"

    const-string/jumbo v2, "Carrier not received!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean v1, p0, Lcom/netflix/mediaclient/util/CarrierUtils;->listening:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/util/CarrierUtils;->listening:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    const-string/jumbo v1, "nf-carrier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Carrier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/util/CarrierUtils;->carrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "nf-carrier"

    const-string/jumbo v1, "Telephony manager not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
