.class public Lo/ajb;
.super Ljava/lang/Object;

# interfaces
.implements Lo/aja$StateListAnimator;


# instance fields
.field private final d:Lcom/netflix/upnp/UpnpDevice;


# direct methods
.method public constructor <init>(Lcom/netflix/upnp/UpnpDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ajb;->d:Lcom/netflix/upnp/UpnpDevice;

    return-void
.end method


# virtual methods
.method public d(Lorg/w3c/dom/Element;)V
    .locals 1

    iget-object v0, p0, Lo/ajb;->d:Lcom/netflix/upnp/UpnpDevice;

    invoke-static {v0, p1}, Lcom/netflix/upnp/UpnpDevice;->b(Lcom/netflix/upnp/UpnpDevice;Lorg/w3c/dom/Element;)V

    return-void
.end method
