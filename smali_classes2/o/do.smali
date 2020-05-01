.class public abstract Lo/do;
.super Lo/dj;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/do$Application;
    }
.end annotation


# instance fields
.field private l:[B

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lo/dj;-><init>()V

    .line 44
    new-instance v0, Lo/do$Application;

    invoke-virtual {p0}, Lo/do;->i()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/do$Application;-><init>(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;)V

    .line 46
    invoke-virtual {v0}, Lo/do$Application;->c()[B

    move-result-object v1

    .line 47
    invoke-virtual {v0}, Lo/do$Application;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/do;->n:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lo/do;->l:[B

    if-eqz v1, :cond_0

    .line 53
    invoke-direct {p0}, Lo/do;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/do;->o:Ljava/lang/String;

    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MediaDrm.uniqueDeviceId is null! We can not use this ESN implementation!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private t()Ljava/lang/String;
    .locals 4

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PRV-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lo/do;->g()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/util/DeviceCategory;->b:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne v1, v2, :cond_0

    const-string v1, "P-"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lo/do;->g()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/util/DeviceCategory;->a:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne v1, v2, :cond_1

    const-string v1, "T-"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0}, Lo/do;->g()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/util/DeviceCategory;->h:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne v1, v2, :cond_2

    const-string v1, "C-"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0}, Lo/do;->g()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/util/DeviceCategory;->i:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne v1, v2, :cond_3

    const-string v1, "B-"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lo/do;->i()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v1, v2, :cond_4

    const-string v1, "L3-"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_4
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 79
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2d

    if-le v2, v3, :cond_5

    const/4 v2, 0x0

    .line 80
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 86
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lo/do;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lo/do;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lo/aev;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v1}, Lo/do;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v1, p0, Lo/do;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected e(Landroid/content/Context;)[B
    .locals 0

    .line 138
    iget-object p1, p0, Lo/do;->l:[B

    return-object p1
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lo/do;->o:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lo/do;->n:Ljava/lang/String;

    return-object v0
.end method

.method protected m()V
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lo/do;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "PRV-"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p0}, Lo/do;->g()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/util/DeviceCategory;->b:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne v1, v2, :cond_0

    const-string v1, "P-"

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lo/do;->g()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/util/DeviceCategory;->a:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne v1, v2, :cond_1

    const-string v1, "T-"

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p0}, Lo/do;->g()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/util/DeviceCategory;->h:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne v1, v2, :cond_2

    const-string v1, "C-"

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p0}, Lo/do;->g()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/util/DeviceCategory;->i:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne v1, v2, :cond_3

    const-string v1, "B-"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lo/do;->i()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    if-ne v1, v2, :cond_4

    const-string v1, "L3-"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/do;->i:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lo/do;->i:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 119
    iget-object v0, p0, Lo/do;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_5

    .line 121
    iget-object v1, p0, Lo/do;->i:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/do;->i:Ljava/lang/String;

    :cond_5
    return-void
.end method
