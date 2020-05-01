.class public Lo/aiZ;
.super Ljava/lang/Object;

# interfaces
.implements Lo/aja$StateListAnimator;


# instance fields
.field private final e:Lcom/netflix/upnp/UpnpDevice$ActionBar;


# direct methods
.method public constructor <init>(Lcom/netflix/upnp/UpnpDevice$ActionBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aiZ;->e:Lcom/netflix/upnp/UpnpDevice$ActionBar;

    return-void
.end method


# virtual methods
.method public d(Lorg/w3c/dom/Element;)V
    .locals 1

    iget-object v0, p0, Lo/aiZ;->e:Lcom/netflix/upnp/UpnpDevice$ActionBar;

    invoke-static {v0, p1}, Lcom/netflix/upnp/UpnpDevice$ActionBar;->a(Lcom/netflix/upnp/UpnpDevice$ActionBar;Lorg/w3c/dom/Element;)V

    return-void
.end method
