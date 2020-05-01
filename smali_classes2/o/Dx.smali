.class public abstract Lo/Dx;
.super Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
.source ""

# interfaces
.implements Lo/UserManagerInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Dx$Application;
    }
.end annotation


# instance fields
.field private K:Ljava/lang/Object;

.field d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 51
    invoke-virtual {p0}, Lo/Dx;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lo/GpsBatteryStats;->d:Lo/GpsBatteryStats;

    invoke-virtual {p0}, Lo/Dx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/GpsBatteryStats;->c(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    check-cast v0, Lo/VintfRuntimeInfo;

    .line 54
    invoke-interface {v0, p0}, Lo/VintfRuntimeInfo;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/Dx;->K:Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lo/Dx;->K:Ljava/lang/Object;

    check-cast v0, Lo/Dx$Application;

    move-object v1, p0

    check-cast v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;

    invoke-interface {v0, v1}, Lo/Dx$Application;->b(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroupPhone;)V

    .line 56
    invoke-virtual {p0}, Lo/Dx;->c()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lo/Dx;->d:Z

    return-void
.end method

.method public e()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lo/Dx;->d:Z

    return v0
.end method

.method public internal_only_getBinderComponent()Ljava/lang/Object;
    .locals 1

    .line 36
    iget-object v0, p0, Lo/Dx;->K:Ljava/lang/Object;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 62
    invoke-virtual {p0}, Lo/Dx;->a()V

    .line 63
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->onAttachedToWindow()V

    return-void
.end method
