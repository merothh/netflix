.class Lo/aiQ;
.super Ljava/lang/Object;

# interfaces
.implements Lo/aiR$StateListAnimator;


# static fields
.field public static final e:Lo/aiQ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/aiQ;

    invoke-direct {v0}, Lo/aiQ;-><init>()V

    sput-object v0, Lo/aiQ;->e:Lo/aiQ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/netflix/ssdp/SsdpDevice;
    .locals 9

    new-instance v8, Lcom/netflix/ssdp/SsdpDevice;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/netflix/ssdp/SsdpDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-object v8
.end method
