.class public final Lo/aeY$StateListAnimator;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aeY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "FrescoImageLoader"

    .line 64
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lo/aeY$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/content/Context;Lo/FragmentHostCallback;I)Lcom/netflix/mediaclient/util/gfx/ImageLoader;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestQueue"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    move-object v0, p0

    check-cast v0, Lo/aeY$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 71
    invoke-static {}, Lo/CursorToBulkCursorAdaptor;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 705
    const-class v0, Lo/afi;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    check-cast v0, Lo/afi;

    .line 79
    invoke-virtual {v0}, Lo/afi;->b()Lo/aeX;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lo/aeX;->e(Lo/FragmentHostCallback;I)V

    .line 81
    new-instance p2, Lo/aeY;

    invoke-virtual {v0}, Lo/afi;->a()Lo/afi$ActionBar;

    move-result-object p3

    check-cast p3, Lo/afc;

    invoke-direct {p2, p1, p3}, Lo/aeY;-><init>(Landroid/content/Context;Lo/afc;)V

    check-cast p2, Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    return-object p2

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Fresco should be initialized before using image loader. This was likely due to an image fetch before Application.onCreate completing."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
