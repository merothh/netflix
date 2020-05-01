.class Lo/aiX;
.super Ljava/lang/Object;

# interfaces
.implements Lo/aiV$TaskDescription;


# static fields
.field public static final a:Lo/aiX;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/aiX;

    invoke-direct {v0}, Lo/aiX;-><init>()V

    sput-object v0, Lo/aiX;->a:Lo/aiX;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/netflix/ssdp/SsdpDevice;Ljava/util/Map;Ljava/lang/String;)Lcom/netflix/upnp/UpnpDevice;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/netflix/upnp/UpnpDevice;->c(Lcom/netflix/ssdp/SsdpDevice;Ljava/util/Map;Ljava/lang/String;)Lcom/netflix/upnp/UpnpDevice;

    move-result-object p1

    return-object p1
.end method
