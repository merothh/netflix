.class public Lcom/netflix/upnp/UpnpDevice$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/upnp/UpnpDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionBar"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/netflix/upnp/UpnpDevice;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/netflix/upnp/UpnpDevice;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/netflix/upnp/UpnpDevice$ActionBar;->b:Lcom/netflix/upnp/UpnpDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance p1, Lo/aiZ;

    invoke-direct {p1, p0}, Lo/aiZ;-><init>(Lcom/netflix/upnp/UpnpDevice$ActionBar;)V

    invoke-static {p2, p1}, Lo/aja;->e(Lorg/w3c/dom/Element;Lo/aja$StateListAnimator;)V

    return-void
.end method

.method public static synthetic a(Lcom/netflix/upnp/UpnpDevice$ActionBar;Lorg/w3c/dom/Element;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/upnp/UpnpDevice$ActionBar;->e(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private synthetic e(Lorg/w3c/dom/Element;)V
    .locals 6

    .line 50
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
    const-string v1, "width"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "depth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "height"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "mimetype"

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

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found unknown tag while parsing icon.  TagName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UpnpDevice.Icon"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 64
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/upnp/UpnpDevice$ActionBar;->h:Ljava/lang/String;

    goto :goto_2

    .line 61
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/netflix/upnp/UpnpDevice$ActionBar;->c:I

    goto :goto_2

    .line 58
    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/netflix/upnp/UpnpDevice$ActionBar;->a:I

    goto :goto_2

    .line 55
    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/netflix/upnp/UpnpDevice$ActionBar;->d:I

    goto :goto_2

    .line 52
    :cond_5
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/upnp/UpnpDevice$ActionBar;->e:Ljava/lang/String;

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x52eb8692 -> :sswitch_4
        -0x48c76ed9 -> :sswitch_3
        0x1c56f -> :sswitch_2
        0x5b0cac3 -> :sswitch_1
        0x6be2dc6 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/netflix/upnp/UpnpDevice$ActionBar;->c:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/netflix/upnp/UpnpDevice$ActionBar;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/netflix/upnp/UpnpDevice$ActionBar;->d:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/netflix/upnp/UpnpDevice$ActionBar;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/netflix/upnp/UpnpDevice$ActionBar;->e:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 94
    instance-of v0, p1, Lcom/netflix/upnp/UpnpDevice$ActionBar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 98
    :cond_0
    check-cast p1, Lcom/netflix/upnp/UpnpDevice$ActionBar;

    .line 100
    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice$ActionBar;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice$ActionBar;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice$ActionBar;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice$ActionBar;->c()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 102
    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice$ActionBar;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice$ActionBar;->b()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 103
    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice$ActionBar;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice$ActionBar;->a()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 104
    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice$ActionBar;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice$ActionBar;->d()Ljava/lang/String;

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

    .line 109
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice$ActionBar;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mimeType"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice$ActionBar;->c()I

    move-result v1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice$ActionBar;->b()I

    move-result v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice$ActionBar;->a()I

    move-result v1

    const-string v2, "depth"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice$ActionBar;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
