.class public final Lo/aeZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BD;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/app/Application;)V
    .locals 2

    const-string v0, "application"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lo/dN;->d:Lo/dN$ActionBar;

    invoke-virtual {v0}, Lo/dN$ActionBar;->e()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 12
    new-instance v0, Lo/afi;

    invoke-direct {v0}, Lo/afi;-><init>()V

    .line 13
    check-cast p1, Landroid/content/Context;

    invoke-virtual {v0, p1}, Lo/afi;->b(Landroid/content/Context;)V

    .line 14
    const-class p1, Lo/afi;

    invoke-static {p1, v0}, Lo/TextViewMetrics;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
