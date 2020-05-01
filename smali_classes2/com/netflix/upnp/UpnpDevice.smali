.class public Lcom/netflix/upnp/UpnpDevice;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/upnp/UpnpDevice$Service;,
        Lcom/netflix/upnp/UpnpDevice$ActionBar;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/netflix/ssdp/SsdpDevice;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/upnp/UpnpDevice$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/upnp/UpnpDevice$Service;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/upnp/UpnpDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/netflix/ssdp/SsdpDevice;Ljava/util/Map;Lorg/w3c/dom/Element;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/ssdp/SsdpDevice;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/w3c/dom/Element;",
            ")V"
        }
    .end annotation

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lcom/netflix/upnp/UpnpDevice;->c:Lcom/netflix/ssdp/SsdpDevice;

    .line 245
    iput-object p2, p0, Lcom/netflix/upnp/UpnpDevice;->b:Ljava/util/Map;

    .line 247
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/netflix/upnp/UpnpDevice;->l:Ljava/util/List;

    .line 248
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/netflix/upnp/UpnpDevice;->q:Ljava/util/List;

    .line 249
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/netflix/upnp/UpnpDevice;->r:Ljava/util/List;

    .line 251
    invoke-direct {p0, p3}, Lcom/netflix/upnp/UpnpDevice;->c(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private a(Lorg/w3c/dom/Element;)V
    .locals 5

    const-string v0, "device"

    .line 431
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 432
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 433
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 435
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 436
    check-cast v1, Lorg/w3c/dom/Element;

    .line 437
    new-instance v2, Lcom/netflix/upnp/UpnpDevice;

    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->c()Lcom/netflix/ssdp/SsdpDevice;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->d()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/netflix/upnp/UpnpDevice;-><init>(Lcom/netflix/ssdp/SsdpDevice;Ljava/util/Map;Lorg/w3c/dom/Element;)V

    .line 439
    iget-object v1, p0, Lcom/netflix/upnp/UpnpDevice;->r:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/netflix/upnp/UpnpDevice;Lorg/w3c/dom/Element;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/upnp/UpnpDevice;->d(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private b(Lorg/w3c/dom/Element;)V
    .locals 4

    const-string v0, "icon"

    .line 459
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 460
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 461
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 463
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 464
    check-cast v1, Lorg/w3c/dom/Element;

    .line 465
    new-instance v2, Lcom/netflix/upnp/UpnpDevice$ActionBar;

    invoke-direct {v2, p0, v1}, Lcom/netflix/upnp/UpnpDevice$ActionBar;-><init>(Lcom/netflix/upnp/UpnpDevice;Lorg/w3c/dom/Element;)V

    .line 467
    iget-object v1, p0, Lcom/netflix/upnp/UpnpDevice;->l:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static c(Lcom/netflix/ssdp/SsdpDevice;Ljava/util/Map;Ljava/lang/String;)Lcom/netflix/upnp/UpnpDevice;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/ssdp/SsdpDevice;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/netflix/upnp/UpnpDevice;"
        }
    .end annotation

    .line 225
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 227
    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 228
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p2

    .line 231
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p2

    const-string v0, "device"

    .line 234
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p2

    check-cast p2, Lorg/w3c/dom/Element;

    if-eqz p2, :cond_0

    .line 240
    new-instance v0, Lcom/netflix/upnp/UpnpDevice;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/upnp/UpnpDevice;-><init>(Lcom/netflix/ssdp/SsdpDevice;Ljava/util/Map;Lorg/w3c/dom/Element;)V

    return-object v0

    .line 237
    :cond_0
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "No device element in body"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private c(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 377
    new-instance v0, Lo/ajb;

    invoke-direct {v0, p0}, Lo/ajb;-><init>(Lcom/netflix/upnp/UpnpDevice;)V

    invoke-static {p1, v0}, Lo/aja;->e(Lorg/w3c/dom/Element;Lo/aja$StateListAnimator;)V

    return-void
.end method

.method private c(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    .line 476
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 477
    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 478
    invoke-interface {p2, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method private synthetic d(Lorg/w3c/dom/Element;)V
    .locals 2

    .line 378
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "presentationURL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "deviceType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "deviceList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "friendlyName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "manufacturerURL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "modelNumber"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v1, "serialNumber"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_7
    const-string v1, "UPC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_8
    const-string v1, "UDN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_9
    const-string v1, "modelURL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_a
    const-string v1, "iconList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_b
    const-string v1, "modelDescription"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_c
    const-string v1, "serviceList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_d
    const-string v1, "manufacturer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_e
    const-string v1, "modelName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found unknown tag while parsing device.  TagName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UpnpDevice"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 422
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/netflix/upnp/UpnpDevice;->a(Lorg/w3c/dom/Element;)V

    goto :goto_2

    .line 419
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/netflix/upnp/UpnpDevice;->e(Lorg/w3c/dom/Element;)V

    goto :goto_2

    .line 416
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/netflix/upnp/UpnpDevice;->b(Lorg/w3c/dom/Element;)V

    goto :goto_2

    .line 413
    :pswitch_3
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/upnp/UpnpDevice;->o:Ljava/lang/String;

    goto :goto_2

    .line 410
    :pswitch_4
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/upnp/UpnpDevice;->m:Ljava/lang/String;

    goto :goto_2

    .line 407
    :pswitch_5
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/upnp/UpnpDevice;->n:Ljava/lang/String;

    goto :goto_2

    .line 404
    :pswitch_6
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/upnp/UpnpDevice;->k:Ljava/lang/String;

    goto :goto_2

    .line 401
    :pswitch_7
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/upnp/UpnpDevice;->h:Ljava/lang/String;

    goto :goto_2

    .line 398
    :pswitch_8
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/upnp/UpnpDevice;->i:Ljava/lang/String;

    goto :goto_2

    .line 395
    :pswitch_9
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/upnp/UpnpDevice;->f:Ljava/lang/String;

    goto :goto_2

    .line 392
    :pswitch_a
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/upnp/UpnpDevice;->j:Ljava/lang/String;

    goto :goto_2

    .line 389
    :pswitch_b
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/upnp/UpnpDevice;->g:Ljava/lang/String;

    goto :goto_2

    .line 386
    :pswitch_c
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/upnp/UpnpDevice;->a:Ljava/lang/String;

    goto :goto_2

    .line 383
    :pswitch_d
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/upnp/UpnpDevice;->e:Ljava/lang/String;

    goto :goto_2

    .line 380
    :pswitch_e
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/upnp/UpnpDevice;->d:Ljava/lang/String;

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x77dad2ac -> :sswitch_e
        -0x7561dc2f -> :sswitch_d
        -0x72f4770d -> :sswitch_c
        -0x6edc32ed -> :sswitch_b
        -0x2bff8349 -> :sswitch_a
        -0x24e5ee7a -> :sswitch_9
        0x1479f -> :sswitch_8
        0x14908 -> :sswitch_7
        0x4fe7e5d -> :sswitch_6
        0x14a8ffd2 -> :sswitch_5
        0x18eb47de -> :sswitch_4
        0x1b8889d6 -> :sswitch_3
        0x2e8c2814 -> :sswitch_2
        0x2e9006b0 -> :sswitch_1
        0x662dbbf5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e(Lorg/w3c/dom/Element;)V
    .locals 4

    const-string v0, "service"

    .line 445
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 446
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 447
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 449
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 450
    check-cast v1, Lorg/w3c/dom/Element;

    .line 451
    new-instance v2, Lcom/netflix/upnp/UpnpDevice$Service;

    invoke-direct {v2, p0, v1}, Lcom/netflix/upnp/UpnpDevice$Service;-><init>(Lcom/netflix/upnp/UpnpDevice;Lorg/w3c/dom/Element;)V

    .line 453
    iget-object v1, p0, Lcom/netflix/upnp/UpnpDevice;->q:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/netflix/upnp/UpnpDevice;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/netflix/upnp/UpnpDevice;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/netflix/ssdp/SsdpDevice;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/netflix/upnp/UpnpDevice;->c:Lcom/netflix/ssdp/SsdpDevice;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/netflix/upnp/UpnpDevice;->b:Ljava/util/Map;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/netflix/upnp/UpnpDevice;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 328
    instance-of v0, p1, Lcom/netflix/upnp/UpnpDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 332
    :cond_0
    check-cast p1, Lcom/netflix/upnp/UpnpDevice;

    .line 334
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->l()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice;->l()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/netflix/upnp/UpnpDevice;->c(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->t()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice;->t()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/netflix/upnp/UpnpDevice;->c(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->s()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice;->s()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/netflix/upnp/UpnpDevice;->c(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->d()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice;->d()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->c()Lcom/netflix/ssdp/SsdpDevice;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice;->c()Lcom/netflix/ssdp/SsdpDevice;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/netflix/upnp/UpnpDevice;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/netflix/upnp/UpnpDevice;->j:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/netflix/upnp/UpnpDevice;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/netflix/upnp/UpnpDevice;->f:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/netflix/upnp/UpnpDevice;->h:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/netflix/upnp/UpnpDevice;->o:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/netflix/upnp/UpnpDevice$ActionBar;",
            ">;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/netflix/upnp/UpnpDevice;->l:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/netflix/upnp/UpnpDevice;->k:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/netflix/upnp/UpnpDevice;->n:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/netflix/upnp/UpnpDevice;->m:Ljava/lang/String;

    return-object v0
.end method

.method public s()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/netflix/upnp/UpnpDevice;",
            ">;"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/netflix/upnp/UpnpDevice;->r:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public t()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/netflix/upnp/UpnpDevice$Service;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/netflix/upnp/UpnpDevice;->q:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 355
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 356
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceType"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 357
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "friendlyName"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 358
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "manufacturer"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 359
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "manufacturerUrl"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 360
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "modelDescription"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 361
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "modelName"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 362
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "modelNumber"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 363
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "modelUrl"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 364
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "serialNumber"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 365
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->n()Ljava/lang/String;

    move-result-object v1

    const-string v2, "udn"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 366
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "upc"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 367
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "presentationUrl"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 368
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->l()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const-string v2, "iconList"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 369
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->t()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const-string v2, "serviceList"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 370
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->s()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const-string v2, "deviceList"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 371
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->d()Ljava/util/Map;

    move-result-object v1

    const-string v2, "headers"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 372
    invoke-virtual {p0}, Lcom/netflix/upnp/UpnpDevice;->c()Lcom/netflix/ssdp/SsdpDevice;

    move-result-object v1

    const-string v2, "ssdpDevice"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
