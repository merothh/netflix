.class public Lo/ajd;
.super Ljava/lang/Object;

# interfaces
.implements Lo/aja$StateListAnimator;


# instance fields
.field private final b:Lcom/netflix/upnp/UpnpDevice$Service;


# direct methods
.method public constructor <init>(Lcom/netflix/upnp/UpnpDevice$Service;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ajd;->b:Lcom/netflix/upnp/UpnpDevice$Service;

    return-void
.end method


# virtual methods
.method public d(Lorg/w3c/dom/Element;)V
    .locals 1

    iget-object v0, p0, Lo/ajd;->b:Lcom/netflix/upnp/UpnpDevice$Service;

    invoke-static {v0, p1}, Lcom/netflix/upnp/UpnpDevice$Service;->d(Lcom/netflix/upnp/UpnpDevice$Service;Lorg/w3c/dom/Element;)V

    return-void
.end method
