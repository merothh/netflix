.class public abstract Lo/TextLine;
.super Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/TextLine$Activity;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 37
    invoke-virtual {p0}, Lo/TextLine;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    sget-object v0, Lo/GpsBatteryStats;->d:Lo/GpsBatteryStats;

    invoke-virtual {p0}, Lo/TextLine;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/GpsBatteryStats;->c(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    check-cast v0, Lo/VintfRuntimeInfo;

    .line 40
    invoke-interface {v0, p0}, Lo/VintfRuntimeInfo;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/TextLine;->d:Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lo/TextLine;->d:Ljava/lang/Object;

    check-cast v0, Lo/TextLine$Activity;

    move-object v1, p0

    check-cast v1, Lo/Time;

    invoke-interface {v0, v1}, Lo/TextLine$Activity;->b(Lo/Time;)V

    .line 42
    invoke-super {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;->c()V

    .line 43
    invoke-virtual {p0}, Lo/TextLine;->e()V

    :cond_0
    return-void
.end method

.method public internal_only_getBinderComponent()Ljava/lang/Object;
    .locals 1

    .line 32
    iget-object v0, p0, Lo/TextLine;->d:Ljava/lang/Object;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 49
    invoke-virtual {p0}, Lo/TextLine;->c()V

    .line 50
    invoke-super {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;->onAttachedToWindow()V

    return-void
.end method
