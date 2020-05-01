.class public abstract Lo/HB;
.super Lo/GR;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/HB$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/GR<",
        "Lo/HB$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field private f:I

.field private h:Ljava/lang/CharSequence;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lo/GR;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILo/HB$TaskDescription;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    check-cast p2, Lo/TimeUnit;

    invoke-super {p0, p1, p2}, Lo/GR;->c(ILo/TimeUnit;)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    new-array p1, p2, [Lkotlin/Pair;

    const/4 p2, 0x0

    .line 63
    iget v0, p0, Lo/HB;->i:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notificationCnt"

    invoke-static {v1, v0}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x1

    .line 64
    iget v0, p0, Lo/HB;->f:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unreadNotificationCnt"

    invoke-static {v1, v0}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p1, p2

    .line 62
    invoke-static {p1}, Lo/akI;->c([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 61
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Ljava/util/Map;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    const-string p2, "CLv2Utils.createTracking\u2026          )\n            )"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    .line 68
    new-instance v0, Lcom/netflix/cl/model/event/session/Presentation;

    sget-object v1, Lcom/netflix/cl/model/AppView;->notificationSelector:Lcom/netflix/cl/model/AppView;

    invoke-direct {v0, v1, p1}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    check-cast v0, Lcom/netflix/cl/model/event/session/Session;

    .line 67
    invoke-virtual {p2, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/HB;->b(Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 71
    invoke-virtual {p0}, Lo/HB;->s()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 72
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    const/4 p1, 0x0

    .line 73
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lo/HB;->b(Ljava/lang/Long;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected b()I
    .locals 1

    .line 30
    sget v0, Lo/GS$FragmentManager;->l:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    .line 41
    iput p1, p0, Lo/HB;->f:I

    return-void
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lo/HB$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/HB;->a(ILo/HB$TaskDescription;)V

    return-void
.end method

.method public b(Lo/HB$TaskDescription;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lo/eq;->a:Lo/eq$Activity;

    invoke-virtual {v0}, Lo/eq$Activity;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p1}, Lo/HB$TaskDescription;->g()Landroid/view/View;

    move-result-object v0

    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 47
    :cond_0
    invoke-virtual {p1}, Lo/HB$TaskDescription;->a()Lo/ImageSwitcher;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lo/HB;->h:Ljava/lang/CharSequence;

    invoke-static {v0, v2}, Lo/NdefFormatable;->a(Landroidx/appcompat/widget/AppCompatTextView;Ljava/lang/CharSequence;)V

    .line 49
    iget v0, p0, Lo/HB;->f:I

    if-lez v0, :cond_1

    .line 50
    invoke-virtual {p1}, Lo/HB$TaskDescription;->c()Lo/GridLayout;

    move-result-object v0

    sget v1, Lo/GS$Application;->a:I

    invoke-virtual {v0, v1}, Lo/GridLayout;->setImageResource(I)V

    .line 51
    invoke-virtual {p1}, Lo/HB$TaskDescription;->c()Lo/GridLayout;

    move-result-object p1

    sget v0, Lo/GS$Application;->j:I

    invoke-virtual {p1, v0}, Lo/GridLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p1}, Lo/HB$TaskDescription;->c()Lo/GridLayout;

    move-result-object v0

    sget v2, Lo/GS$Application;->b:I

    invoke-virtual {v0, v2}, Lo/GridLayout;->setImageResource(I)V

    .line 54
    invoke-virtual {p1}, Lo/HB$TaskDescription;->c()Lo/GridLayout;

    move-result-object p1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Lo/GridLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final c(I)V
    .locals 0

    .line 38
    iput p1, p0, Lo/HB;->i:I

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 27
    check-cast p2, Lo/HB$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/HB;->a(ILo/HB$TaskDescription;)V

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 27
    check-cast p1, Lo/HB$TaskDescription;

    invoke-virtual {p0, p1}, Lo/HB;->b(Lo/HB$TaskDescription;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lo/HB$TaskDescription;

    invoke-virtual {p0, p1}, Lo/HB;->b(Lo/HB$TaskDescription;)V

    return-void
.end method

.method public final e(Ljava/lang/CharSequence;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lo/HB;->h:Ljava/lang/CharSequence;

    return-void
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lo/HB;->p()Lo/HB$TaskDescription;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method

.method protected p()Lo/HB$TaskDescription;
    .locals 1

    .line 32
    new-instance v0, Lo/HB$TaskDescription;

    invoke-direct {v0}, Lo/HB$TaskDescription;-><init>()V

    return-object v0
.end method

.method public final q()Ljava/lang/CharSequence;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/HB;->h:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final r()I
    .locals 1

    .line 38
    iget v0, p0, Lo/HB;->i:I

    return v0
.end method

.method public final u()I
    .locals 1

    .line 41
    iget v0, p0, Lo/HB;->f:I

    return v0
.end method
