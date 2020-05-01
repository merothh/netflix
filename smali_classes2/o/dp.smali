.class public final Lo/dp;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static c(Lcom/netflix/mediaclient/util/DeviceCategory;)Lo/dj;
    .locals 3

    .line 81
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->b:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne p0, v0, :cond_0

    .line 82
    new-instance p0, Lo/dv;

    invoke-direct {p0}, Lo/dv;-><init>()V

    return-object p0

    .line 83
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->a:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne p0, v0, :cond_1

    .line 84
    new-instance p0, Lo/du;

    invoke-direct {p0}, Lo/du;-><init>()V

    return-object p0

    .line 85
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->h:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne p0, v0, :cond_2

    .line 86
    new-instance p0, Lo/dr;

    invoke-direct {p0}, Lo/dr;-><init>()V

    return-object p0

    .line 87
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->i:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->c:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne p0, v0, :cond_3

    goto :goto_0

    .line 90
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not able to create ESN provider for not supported combination. Device category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", Crypto provider: Widevine L1"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_4
    :goto_0
    new-instance p0, Lo/dx;

    invoke-direct {p0}, Lo/dx;-><init>()V

    return-object p0
.end method

.method private static d(Lcom/netflix/mediaclient/util/DeviceCategory;)Lo/dj;
    .locals 3

    .line 96
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->b:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne p0, v0, :cond_0

    .line 97
    new-instance p0, Lo/dt;

    invoke-direct {p0}, Lo/dt;-><init>()V

    return-object p0

    .line 98
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->a:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne p0, v0, :cond_1

    .line 99
    new-instance p0, Lo/dz;

    invoke-direct {p0}, Lo/dz;-><init>()V

    return-object p0

    .line 100
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->h:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne p0, v0, :cond_2

    .line 101
    new-instance p0, Lo/dw;

    invoke-direct {p0}, Lo/dw;-><init>()V

    return-object p0

    .line 102
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->i:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/netflix/mediaclient/util/DeviceCategory;->c:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne p0, v0, :cond_3

    goto :goto_0

    .line 105
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not able to create ESN provider for not supported combination. Device category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", Crypto provider: Widevine L1"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_4
    :goto_0
    new-instance p0, Lo/dB;

    invoke-direct {p0}, Lo/dB;-><init>()V

    return-object p0
.end method

.method public static d(Landroid/content/Context;Lo/cz;)Lo/ds;
    .locals 3

    const-string v0, "nf_esn"

    const-string v1, "Create ESN"

    .line 38
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "JB MR2+ device with Widewine support, return ESN CDM implementation!"

    .line 40
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {p0, p1}, Lo/adU;->e(Landroid/content/Context;Lo/cz;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v1

    .line 42
    invoke-static {}, Lo/adU;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "JB MR2+ device with legacy Widewine support, return ESN CDM Nexus 7 implementation!"

    .line 43
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance p1, Lo/dk;

    invoke-direct {p1}, Lo/dk;-><init>()V

    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {p1}, Lo/cz;->b()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object p1

    .line 50
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->e:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v1, v0, :cond_2

    .line 52
    invoke-static {}, Lo/adU;->f()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 53
    new-instance p0, Lcom/netflix/mediaclient/service/configuration/esn/WidevineL1NotSupportedAfterOsUpgradeException;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/esn/WidevineL1NotSupportedAfterOsUpgradeException;-><init>()V

    throw p0

    .line 55
    :cond_1
    new-instance p0, Lcom/netflix/mediaclient/service/configuration/esn/WidevineNotSupportedException;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/esn/WidevineNotSupportedException;-><init>()V

    throw p0

    .line 61
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->c:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v1, v0, :cond_3

    .line 62
    invoke-static {p1}, Lo/dp;->c(Lcom/netflix/mediaclient/util/DeviceCategory;)Lo/dj;

    move-result-object p1

    goto :goto_0

    .line 63
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v1, v0, :cond_4

    .line 64
    invoke-static {p1}, Lo/dp;->d(Lcom/netflix/mediaclient/util/DeviceCategory;)Lo/dj;

    move-result-object p1

    .line 70
    :goto_0
    invoke-virtual {p1, p0}, Lo/dj;->a(Landroid/content/Context;)V

    return-object p1

    .line 66
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not able to create ESN provider for not supported combination. Device category: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", Crypto provider: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
