.class public Lcom/netflix/upnp/UpnpDevice$Service;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/upnp/UpnpDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Service"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic b:Lcom/netflix/upnp/UpnpDevice;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/netflix/upnp/UpnpDevice;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/netflix/upnp/UpnpDevice$Service;->b:Lcom/netflix/upnp/UpnpDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance p1, Lo/ajd;

    invoke-direct {p1, p0}, Lo/ajd;-><init>(Lcom/netflix/upnp/UpnpDevice$Service;)V

    invoke-static {p2, p1}, Lo/aja;->e(Lorg/w3c/dom/Element;Lo/aja$StateListAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/netflix/upnp/UpnpDevice$Service;Lorg/w3c/dom/Element;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/upnp/UpnpDevice$Service;->e(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private synthetic e(Lorg/w3c/dom/Element;)V
    .locals 6

    .line 133
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "controlURL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "eventSubURL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "serviceId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "SCPDURL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "serviceType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found unknown tag while parsing service.  TagName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UpnpDevice.Service"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 147
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/upnp/UpnpDevice$Service;->i:Ljava/lang/String;

    goto :goto_2

    .line 144
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/upnp/UpnpDevice$Service;->c:Ljava/lang/String;

    goto :goto_2

    .line 141
    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/upnp/UpnpDevice$Service;->a:Ljava/lang/String;

    goto :goto_2

    .line 138
    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/upnp/UpnpDevice$Service;->e:Ljava/lang/String;

    goto :goto_2

    .line 135
    :cond_5
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/upnp/UpnpDevice$Service;->d:Ljava/lang/String;

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72f09871 -> :sswitch_4
        -0x627e8d75 -> :sswitch_3
        -0xb930950 -> :sswitch_2
        0x6696649 -> :sswitch_1
        0x25fe0ad2 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/netflix/upnp/UpnpDevice$Service;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/netflix/upnp/UpnpDevice$Service;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/netflix/upnp/UpnpDevice$Service;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/netflix/upnp/UpnpDevice$Service;->i:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/netflix/upnp/UpnpDevice$Service;->e:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 177
    instance-of v0, p1, Lcom/netflix/upnp/UpnpDevice$Service;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 181
    :cond_0
    check-cast p1, Lcom/netflix/upnp/UpnpDevice$Service;

    .line 183
    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice$Service;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice$Service;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice$Service;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice$Service;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice$Service;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice$Service;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice$Service;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice$Service;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice$Service;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice$Service;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 192
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 193
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice$Service;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "serviceType"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice$Service;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "serviceId"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice$Service;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scpdUrl"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice$Service;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "controlUrl"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice$Service;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eventSubUrl"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
