.class Lo/aiT;
.super Ljava/lang/Object;

# interfaces
.implements Lo/aiR$TaskDescription;


# static fields
.field public static final b:Lo/aiT;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/aiT;

    invoke-direct {v0}, Lo/aiT;-><init>()V

    sput-object v0, Lo/aiT;->b:Lo/aiT;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/net/DatagramSocket;
    .locals 1

    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    return-object v0
.end method
