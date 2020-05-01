.class public abstract Lo/SpannableStringBuilder;
.super Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SpannableStringBuilder$Application;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 36
    invoke-virtual {p0}, Lo/SpannableStringBuilder;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    sget-object v0, Lo/GpsBatteryStats;->d:Lo/GpsBatteryStats;

    invoke-virtual {p0}, Lo/SpannableStringBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/GpsBatteryStats;->c(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    check-cast v0, Lo/VintfRuntimeInfo;

    .line 39
    invoke-interface {v0, p0}, Lo/VintfRuntimeInfo;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/SpannableStringBuilder;->d:Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lo/SpannableStringBuilder;->d:Ljava/lang/Object;

    check-cast v0, Lo/SpannableStringBuilder$Application;

    move-object v1, p0

    check-cast v1, Lo/StaticLayout;

    invoke-interface {v0, v1}, Lo/SpannableStringBuilder$Application;->d(Lo/StaticLayout;)V

    .line 41
    invoke-super {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;->c()V

    .line 42
    invoke-virtual {p0}, Lo/SpannableStringBuilder;->e()V

    :cond_0
    return-void
.end method

.method public internal_only_getBinderComponent()Ljava/lang/Object;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/SpannableStringBuilder;->d:Ljava/lang/Object;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 48
    invoke-virtual {p0}, Lo/SpannableStringBuilder;->c()V

    .line 49
    invoke-super {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;->onAttachedToWindow()V

    return-void
.end method
