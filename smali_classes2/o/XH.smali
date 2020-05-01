.class public Lo/XH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Ya;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/XH$Activity;,
        Lo/XH$Application;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lo/XH$Application;

.field private c:Lo/XX;

.field private d:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

.field private e:I

.field private g:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/XX;)V
    .locals 3

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->b:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    iput-object v0, p0, Lo/XH;->d:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    const/16 v0, 0x780

    .line 166
    iput v0, p0, Lo/XH;->a:I

    const/16 v1, 0x438

    .line 167
    iput v1, p0, Lo/XH;->e:I

    const/4 v2, 0x0

    .line 168
    iput v2, p0, Lo/XH;->g:I

    .line 169
    iput v2, p0, Lo/XH;->j:I

    .line 172
    new-instance v2, Lo/XH$Application;

    invoke-direct {v2, p0, v0, v1, p1}, Lo/XH$Application;-><init>(Lo/XH;IILandroid/content/Context;)V

    iput-object v2, p0, Lo/XH;->b:Lo/XH$Application;

    .line 173
    iput-object p2, p0, Lo/XH;->c:Lo/XX;

    .line 174
    iget-object p1, p0, Lo/XH;->b:Lo/XH$Application;

    invoke-virtual {p1}, Lo/XH$Application;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method static synthetic a(Lo/XH;)I
    .locals 0

    .line 41
    iget p0, p0, Lo/XH;->a:I

    return p0
.end method

.method static synthetic a(Lo/XH;I)I
    .locals 0

    .line 41
    iput p1, p0, Lo/XH;->e:I

    return p1
.end method

.method static synthetic b(Lo/XH;)I
    .locals 0

    .line 41
    iget p0, p0, Lo/XH;->g:I

    return p0
.end method

.method static synthetic c(Lo/XH;)I
    .locals 0

    .line 41
    iget p0, p0, Lo/XH;->e:I

    return p0
.end method

.method static synthetic c(Lo/XH;I)I
    .locals 0

    .line 41
    iput p1, p0, Lo/XH;->a:I

    return p1
.end method

.method static synthetic d(Lo/XH;)I
    .locals 0

    .line 41
    iget p0, p0, Lo/XH;->j:I

    return p0
.end method

.method static synthetic e(Lo/XH;)Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;
    .locals 0

    .line 41
    iget-object p0, p0, Lo/XH;->d:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/view/Surface;
    .locals 1

    .line 184
    iget-object v0, p0, Lo/XH;->b:Lo/XH$Application;

    invoke-virtual {v0}, Lo/XH$Application;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 222
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lo/XH;->a:I

    .line 223
    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lo/XH;->e:I

    :cond_0
    if-eqz p2, :cond_1

    .line 226
    iget v0, p2, Landroid/graphics/Point;->x:I

    iput v0, p0, Lo/XH;->g:I

    .line 227
    iget v0, p2, Landroid/graphics/Point;->y:I

    iput v0, p0, Lo/XH;->j:I

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 230
    :cond_2
    iget-object p1, p0, Lo/XH;->b:Lo/XH$Application;

    invoke-virtual {p1}, Lo/XH$Application;->requestLayout()V

    :cond_3
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .line 194
    iget-object v0, p0, Lo/XH;->b:Lo/XH$Application;

    return-object v0
.end method

.method public b(Z)V
    .locals 2

    .line 202
    iget-object v0, p0, Lo/XH;->b:Lo/XH$Application;

    invoke-virtual {v0}, Lo/XH$Application;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    const/16 v1, 0x2000

    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 273
    iget-object v0, p0, Lo/XH;->b:Lo/XH$Application;

    invoke-virtual {v0}, Lo/XH$Application;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lo/XH;->b:Lo/XH$Application;

    invoke-virtual {v0}, Lo/XH$Application;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    return-void
.end method

.method public e(Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lo/XH;->d:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    .line 216
    invoke-virtual {p0}, Lo/XH;->b()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p1, "AV1SurfaceViewWrapper"

    const-string p2, "Surface changed"

    .line 262
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object p1, p0, Lo/XH;->c:Lo/XX;

    invoke-interface {p1, p0, p3, p4}, Lo/XX;->a(Lo/Ya;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "AV1SurfaceViewWrapper"

    const-string v0, "Surface created. "

    .line 256
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object p1, p0, Lo/XH;->c:Lo/XX;

    invoke-interface {p1, p0}, Lo/XX;->b(Lo/Ya;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "AV1SurfaceViewWrapper"

    const-string v0, "Surface destroyed"

    .line 268
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object p1, p0, Lo/XH;->c:Lo/XX;

    invoke-interface {p1, p0}, Lo/XX;->c(Lo/Ya;)V

    return-void
.end method
