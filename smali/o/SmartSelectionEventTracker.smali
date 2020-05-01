.class public final Lo/SmartSelectionEventTracker;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final c:Landroid/content/Context;

.field private d:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SmartSelectionEventTracker;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final b(ZZI)Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;
    .locals 3

    const/16 v0, 0xf0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    if-gt p3, v0, :cond_0

    .line 23
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->e:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    goto :goto_0

    .line 25
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->b:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    if-gt p3, v0, :cond_2

    .line 30
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->a:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    goto :goto_0

    .line 32
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->e:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    goto :goto_0

    :cond_3
    if-gt p3, v0, :cond_4

    .line 36
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->e:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    goto :goto_0

    .line 38
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->b:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    .line 43
    :goto_0
    iput-object v0, p0, Lo/SmartSelectionEventTracker;->d:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    .line 44
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v2

    const/4 p3, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, p3

    const/4 p2, 0x3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, p2

    const-string p1, "ImageResolutionCalculator"

    const-string p2, "calculate() [%s] dpi: %s, isTablet:%s, isLowMem:%s"

    invoke-static {p1, p2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v0
.end method

.method public final d()Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;
    .locals 3

    .line 51
    iget-object v0, p0, Lo/SmartSelectionEventTracker;->d:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    .line 52
    invoke-static {}, Lo/amh;->c()V

    :cond_0
    return-object v0

    .line 55
    :cond_1
    invoke-static {}, Lo/aek;->g()Z

    move-result v0

    .line 56
    iget-object v1, p0, Lo/SmartSelectionEventTracker;->c:Landroid/content/Context;

    invoke-static {v1}, Lo/aek;->e(Landroid/content/Context;)Z

    move-result v1

    .line 57
    iget-object v2, p0, Lo/SmartSelectionEventTracker;->c:Landroid/content/Context;

    invoke-static {v2}, Lo/adq;->a(Landroid/content/Context;)I

    move-result v2

    .line 58
    invoke-virtual {p0, v0, v1, v2}, Lo/SmartSelectionEventTracker;->b(ZZI)Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    move-result-object v0

    return-object v0
.end method
