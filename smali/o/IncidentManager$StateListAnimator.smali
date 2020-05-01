.class public final Lo/IncidentManager$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/IncidentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lo/IncidentManager$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIILandroid/graphics/RectF;)Lo/IncidentManager;
    .locals 1

    const-string v0, "secondarySection"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lo/IHwBinder;->c:Lo/IHwBinder$Application;

    invoke-virtual {v0, p3}, Lo/IHwBinder$Application;->c(I)Landroid/graphics/Paint;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    new-instance p1, Lo/IHwBinder;

    invoke-direct {p1, v0}, Lo/IHwBinder;-><init>(Landroid/graphics/Paint;)V

    .line 27
    sget-object v0, Lo/IHwBinder;->c:Lo/IHwBinder$Application;

    invoke-virtual {v0, p3}, Lo/IHwBinder$Application;->c(I)Landroid/graphics/Paint;

    move-result-object p3

    .line 28
    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    new-instance p2, Lo/IHwBinder;

    invoke-direct {p2, p3}, Lo/IHwBinder;-><init>(Landroid/graphics/Paint;)V

    .line 31
    new-instance p3, Lo/IncidentManager;

    check-cast p1, Lo/IInterface;

    check-cast p2, Lo/IInterface;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, p4, v0}, Lo/IncidentManager;-><init>(Lo/IInterface;Lo/IInterface;Landroid/graphics/RectF;Lo/amc;)V

    return-object p3
.end method
