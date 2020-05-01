.class Lo/UidHealthStats;
.super Ljava/lang/Object;

# interfaces
.implements Lo/StorageEventListener$Activity;


# static fields
.field public static final a:Lo/UidHealthStats;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/UidHealthStats;

    invoke-direct {v0}, Lo/UidHealthStats;-><init>()V

    sput-object v0, Lo/UidHealthStats;->a:Lo/UidHealthStats;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/upnp/UpnpDevice;Ljava/lang/String;)Lcom/netflix/dial/DialDevice;
    .locals 0

    invoke-static {p1, p2}, Lcom/netflix/dial/DialDevice;->c(Lcom/netflix/upnp/UpnpDevice;Ljava/lang/String;)Lcom/netflix/dial/DialDevice;

    move-result-object p1

    return-object p1
.end method
