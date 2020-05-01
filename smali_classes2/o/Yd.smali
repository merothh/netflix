.class public abstract Lo/Yd;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lo/Yh$Application;

.field private final c:Landroid/graphics/drawable/ColorDrawable;

.field private d:Z

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-boolean v0, Lo/Yh;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/16 v2, 0xc8

    const/4 v3, 0x0

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lo/Yd;->c:Landroid/graphics/drawable/ColorDrawable;

    .line 20
    sget-boolean v0, Lo/Yh;->b:Z

    if-eqz v0, :cond_1

    .line 21
    new-instance v0, Lo/Yd$Application;

    invoke-direct {v0, p0}, Lo/Yd$Application;-><init>(Lo/Yd;)V

    move-object v1, v0

    check-cast v1, Ljava/lang/Runnable;

    .line 20
    :cond_1
    iput-object v1, p0, Lo/Yd;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public abstract a(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;
.end method

.method public abstract a()Lo/Av;
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method

.method public abstract b()Ljava/lang/Integer;
.end method

.method public final b(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lo/Yd;->d:Z

    return-void
.end method

.method public abstract c()Ljava/lang/Integer;
.end method

.method public abstract d()Landroid/view/View;
.end method

.method public final d(Lo/Yh$Application;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lo/Yd;->a:Lo/Yh$Application;

    return-void
.end method

.method public abstract e()Lo/Bv;
.end method

.method public abstract f()Z
.end method

.method public g()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 84
    sget-object v0, Lcom/netflix/cl/model/AppView;->boxArt:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public h()Lcom/netflix/cl/model/context/CLContext;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()V
    .locals 1

    .line 112
    iget-object v0, p0, Lo/Yd;->a:Lo/Yh$Application;

    if-eqz v0, :cond_0

    .line 113
    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lo/adX;->c(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 114
    check-cast v0, Lo/Yh$Application;

    iput-object v0, p0, Lo/Yd;->a:Lo/Yh$Application;

    :cond_0
    return-void
.end method

.method public final o()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lo/Yd;->d:Z

    return v0
.end method
