.class public Lcom/netflix/dial/DialDevice;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/dial/DialDevice$AppState;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Date;

.field private c:Ljava/lang/String;

.field private d:Lcom/netflix/upnp/UpnpDevice;

.field private e:Lcom/netflix/dial/DialDevice$AppState;

.field private j:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/netflix/upnp/UpnpDevice;Lorg/w3c/dom/Element;)V
    .locals 5

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/Date;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/32 v3, 0x240c8400

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/netflix/dial/DialDevice;->b:Ljava/util/Date;

    .line 70
    invoke-static {}, Lo/mo;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/dial/DialDevice;->j:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/netflix/dial/DialDevice;->d:Lcom/netflix/upnp/UpnpDevice;

    const-string p1, "dialVer"

    .line 75
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/dial/DialDevice;->a:Ljava/lang/String;

    .line 77
    invoke-direct {p0, p2}, Lcom/netflix/dial/DialDevice;->e(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private synthetic b(Lorg/w3c/dom/Element;)V
    .locals 4

    .line 163
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x337a8b

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x68ac491

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "state"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    goto :goto_2

    .line 168
    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/dial/DialDevice$AppState;->e(Ljava/lang/String;)Lcom/netflix/dial/DialDevice$AppState;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/dial/DialDevice;->e:Lcom/netflix/dial/DialDevice$AppState;

    goto :goto_2

    .line 165
    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/dial/DialDevice;->c:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method public static c(Lcom/netflix/upnp/UpnpDevice;Ljava/lang/String;)Lcom/netflix/dial/DialDevice;
    .locals 3

    .line 83
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 86
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 89
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 91
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "service"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lcom/netflix/dial/DialDevice;

    invoke-direct {v0, p0, p1}, Lcom/netflix/dial/DialDevice;-><init>(Lcom/netflix/upnp/UpnpDevice;Lorg/w3c/dom/Element;)V

    return-object v0

    .line 92
    :cond_0
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "No service element in body"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic c(Lcom/netflix/dial/DialDevice;Lorg/w3c/dom/Element;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/dial/DialDevice;->b(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private e(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 162
    new-instance v0, Lo/DiskInfo;

    invoke-direct {v0, p0}, Lo/DiskInfo;-><init>(Lcom/netflix/dial/DialDevice;)V

    invoke-static {p1, v0}, Lo/aja;->e(Lorg/w3c/dom/Element;Lo/aja$StateListAnimator;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/netflix/dial/DialDevice;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/netflix/upnp/UpnpDevice;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/netflix/dial/DialDevice;->d:Lcom/netflix/upnp/UpnpDevice;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/netflix/dial/DialDevice;->d:Lcom/netflix/upnp/UpnpDevice;

    invoke-virtual {v0}, Lcom/netflix/upnp/UpnpDevice;->d()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Application-URL"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/netflix/dial/DialDevice$AppState;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/netflix/dial/DialDevice;->e:Lcom/netflix/dial/DialDevice$AppState;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/netflix/dial/DialDevice;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 139
    instance-of v0, p1, Lcom/netflix/dial/DialDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 143
    :cond_0
    check-cast p1, Lcom/netflix/dial/DialDevice;

    .line 145
    invoke-virtual {p0}, Lcom/netflix/dial/DialDevice;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/dial/DialDevice;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/netflix/dial/DialDevice;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/dial/DialDevice;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/netflix/dial/DialDevice;->d()Lcom/netflix/dial/DialDevice$AppState;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/dial/DialDevice;->d()Lcom/netflix/dial/DialDevice$AppState;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/netflix/dial/DialDevice;->b()Lcom/netflix/upnp/UpnpDevice;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/dial/DialDevice;->b()Lcom/netflix/upnp/UpnpDevice;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/netflix/dial/DialDevice;->d:Lcom/netflix/upnp/UpnpDevice;

    invoke-virtual {v0}, Lcom/netflix/upnp/UpnpDevice;->c()Lcom/netflix/ssdp/SsdpDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/ssdp/SsdpDevice;->f()Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 1

    .line 134
    sget-object v0, Lcom/netflix/dial/DialDevice$AppState;->b:Lcom/netflix/dial/DialDevice$AppState;

    iput-object v0, p0, Lcom/netflix/dial/DialDevice;->e:Lcom/netflix/dial/DialDevice$AppState;

    return-void
.end method

.method public h()Ljava/lang/Boolean;
    .locals 2

    .line 126
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/netflix/dial/DialDevice;->b:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/netflix/dial/DialDevice;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/netflix/dial/DialDevice;->d:Lcom/netflix/upnp/UpnpDevice;

    invoke-virtual {v0}, Lcom/netflix/upnp/UpnpDevice;->c()Lcom/netflix/ssdp/SsdpDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/ssdp/SsdpDevice;->i()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 153
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Lcom/netflix/dial/DialDevice;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dialVer"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Lcom/netflix/dial/DialDevice;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Lcom/netflix/dial/DialDevice;->d()Lcom/netflix/dial/DialDevice$AppState;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Lcom/netflix/dial/DialDevice;->b()Lcom/netflix/upnp/UpnpDevice;

    move-result-object v1

    const-string v2, "upnpDevice"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
