.class public abstract Lo/TextDirectionHeuristics;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lo/UserManagerInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/TextDirectionHeuristics$TaskDescription;
    }
.end annotation


# instance fields
.field a:Z

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lo/TextDirectionHeuristics;->a:Z

    return v0
.end method

.method public c()V
    .locals 2

    .line 51
    invoke-virtual {p0}, Lo/TextDirectionHeuristics;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lo/GpsBatteryStats;->d:Lo/GpsBatteryStats;

    invoke-virtual {p0}, Lo/TextDirectionHeuristics;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/GpsBatteryStats;->c(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    check-cast v0, Lo/VintfRuntimeInfo;

    .line 54
    invoke-interface {v0, p0}, Lo/VintfRuntimeInfo;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/TextDirectionHeuristics;->b:Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lo/TextDirectionHeuristics;->b:Ljava/lang/Object;

    check-cast v0, Lo/TextDirectionHeuristics$TaskDescription;

    move-object v1, p0

    check-cast v1, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;

    invoke-interface {v0, v1}, Lo/TextDirectionHeuristics$TaskDescription;->b(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;)V

    .line 56
    invoke-virtual {p0}, Lo/TextDirectionHeuristics;->e()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lo/TextDirectionHeuristics;->a:Z

    return-void
.end method

.method public internal_only_getBinderComponent()Ljava/lang/Object;
    .locals 1

    .line 36
    iget-object v0, p0, Lo/TextDirectionHeuristics;->b:Ljava/lang/Object;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 62
    invoke-virtual {p0}, Lo/TextDirectionHeuristics;->c()V

    .line 63
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    return-void
.end method
