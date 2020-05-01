.class public final Lo/abU$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/abU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lo/abU$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;)Lo/abU;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lo/abU;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p2}, Lo/abU;-><init>(Landroid/content/Context;ZZLcom/netflix/mediaclient/service/configuration/ImageResolutionClass;)V

    return-object v0
.end method

.method public final d(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;)Lo/abU;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lo/abU;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1, p2}, Lo/abU;-><init>(Landroid/content/Context;ZZLcom/netflix/mediaclient/service/configuration/ImageResolutionClass;)V

    return-object v0
.end method

.method public final d(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;Landroid/view/ViewGroup;Landroid/view/View;)Lo/abU;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetView"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lo/abU;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1, p2}, Lo/abU;-><init>(Landroid/content/Context;ZZLcom/netflix/mediaclient/service/configuration/ImageResolutionClass;)V

    .line 55
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    const/4 p2, -0x1

    const/4 v2, -0x2

    invoke-virtual {p3, p1, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 56
    invoke-virtual {v0, v1}, Lo/abU;->setGravity(I)V

    .line 57
    invoke-static {v0, p4}, Lo/abU;->b(Lo/abU;Landroid/view/View;)V

    return-object v0
.end method
