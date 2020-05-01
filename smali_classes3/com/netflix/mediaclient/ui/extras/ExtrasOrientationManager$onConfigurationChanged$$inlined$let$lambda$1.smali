.class public final Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GL;->e(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;Lo/If;Lo/Ic;Lo/GK;Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic b:Landroidx/recyclerview/widget/LinearLayoutManager;

.field final synthetic c:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

.field final synthetic d:Landroid/content/res/Configuration;

.field final synthetic e:Lo/GL;

.field final synthetic f:Lo/GK;

.field final synthetic i:Lo/If;

.field final synthetic j:Lo/Ic;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroidx/recyclerview/widget/LinearLayoutManager;Lo/GL;Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;Landroid/content/res/Configuration;Lo/GK;Lo/If;Lo/Ic;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;->e:Lo/GL;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;->c:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;->d:Landroid/content/res/Configuration;

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;->f:Lo/GK;

    iput-object p7, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;->i:Lo/If;

    iput-object p8, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;->j:Lo/Ic;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(II)Lo/akj;
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 172
    sget v1, Lo/GS$Dialog;->D:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_3

    .line 177
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;->e:Lo/GL;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-static {v2, v3}, Lo/GL;->c(Lo/GL;Landroid/os/Parcelable;)V

    .line 180
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;->e:Lo/GL;

    invoke-static {v2}, Lo/GL;->a(Lo/GL;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 181
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;->e:Lo/GL;

    invoke-static {v2}, Lo/GL;->a(Lo/GL;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 182
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;->e:Lo/GL;

    invoke-static {v2}, Lo/GL;->a(Lo/GL;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;->e:Lo/GL;

    invoke-static {v0}, Lo/GL;->a(Lo/GL;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 186
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    neg-int v0, v0

    invoke-virtual {v1, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->e(II)V

    .line 193
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;->i:Lo/If;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lo/If;->setScrollingLocked(Z)V

    .line 196
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;->j:Lo/Ic;

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2, v1}, Lo/Ic;->b(Z)V

    .line 199
    :cond_2
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const-string v2, "netflixActivity.window"

    invoke-static {p2, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lo/BatteryStatsInternal;->e(Landroid/view/Window;)V

    .line 200
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;->a:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->hideActionAndBottomBars()V

    .line 203
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;->f:Lo/GK;

    invoke-virtual {p2, v0}, Lo/GK;->e(Z)V

    .line 206
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;->c:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    check-cast p2, Lo/UnicodeScript;

    .line 207
    new-instance v0, Lo/GY$ActionBar$TaskDescription;

    invoke-direct {v0, v1, p1}, Lo/GY$ActionBar$TaskDescription;-><init>(ZI)V

    check-cast v0, Lo/VintfObject;

    .line 287
    sget-object p1, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    invoke-virtual {p1, p2}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object p1

    .line 288
    const-class p2, Lo/GY;

    invoke-virtual {p1, p2}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    .line 289
    const-class p2, Lo/GY;

    invoke-virtual {p1, p2, v0}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 214
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;->e:Lo/GL;

    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/UiLandscapeMode;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/UiLandscapeMode;-><init>()V

    check-cast v0, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {p2, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lo/GL;->d(Lo/GL;Ljava/lang/Long;)V

    .line 215
    sget-object v2, Lo/akj;->a:Lo/akj;

    :cond_3
    return-object v2
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;->d(II)Lo/akj;

    move-result-object p1

    return-object p1
.end method
