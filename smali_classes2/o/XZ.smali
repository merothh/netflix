.class public Lo/XZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Ya;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/XZ$TaskDescription;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private a:Lo/XZ$TaskDescription;

.field private b:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

.field private c:I

.field private d:Lo/XX;

.field private g:I

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 141
    const-class v0, Lo/XZ;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/XZ;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/XX;)V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    sget-object v0, Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;->b:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    iput-object v0, p0, Lo/XZ;->b:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    const/16 v0, 0x780

    .line 146
    iput v0, p0, Lo/XZ;->c:I

    const/16 v0, 0x438

    .line 147
    iput v0, p0, Lo/XZ;->j:I

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lo/XZ;->i:I

    .line 149
    iput v0, p0, Lo/XZ;->g:I

    .line 152
    new-instance v0, Lo/XZ$TaskDescription;

    invoke-direct {v0, p0, p1}, Lo/XZ$TaskDescription;-><init>(Lo/XZ;Landroid/content/Context;)V

    iput-object v0, p0, Lo/XZ;->a:Lo/XZ$TaskDescription;

    .line 153
    iput-object p2, p0, Lo/XZ;->d:Lo/XX;

    .line 154
    iget-object p1, p0, Lo/XZ;->a:Lo/XZ$TaskDescription;

    invoke-virtual {p1}, Lo/XZ$TaskDescription;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method static synthetic a(Lo/XZ;)I
    .locals 0

    .line 26
    iget p0, p0, Lo/XZ;->i:I

    return p0
.end method

.method static synthetic b(Lo/XZ;)I
    .locals 0

    .line 26
    iget p0, p0, Lo/XZ;->c:I

    return p0
.end method

.method static synthetic c(Lo/XZ;)I
    .locals 0

    .line 26
    iget p0, p0, Lo/XZ;->j:I

    return p0
.end method

.method static synthetic d(Lo/XZ;)Z
    .locals 0

    .line 26
    invoke-direct {p0}, Lo/XZ;->e()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lo/XZ;)I
    .locals 0

    .line 26
    iget p0, p0, Lo/XZ;->g:I

    return p0
.end method

.method private e()Z
    .locals 1

    .line 238
    iget v0, p0, Lo/XZ;->g:I

    if-lez v0, :cond_0

    iget v0, p0, Lo/XZ;->i:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic h(Lo/XZ;)Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;
    .locals 0

    .line 26
    iget-object p0, p0, Lo/XZ;->b:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/view/Surface;
    .locals 1

    .line 159
    iget-object v0, p0, Lo/XZ;->a:Lo/XZ$TaskDescription;

    invoke-virtual {v0}, Lo/XZ$TaskDescription;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 186
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lo/XZ;->c:I

    .line 187
    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lo/XZ;->j:I

    :cond_0
    if-eqz p2, :cond_1

    .line 190
    iget v0, p2, Landroid/graphics/Point;->x:I

    iput v0, p0, Lo/XZ;->i:I

    .line 191
    iget v0, p2, Landroid/graphics/Point;->y:I

    iput v0, p0, Lo/XZ;->g:I

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 194
    :cond_2
    iget-object p1, p0, Lo/XZ;->a:Lo/XZ$TaskDescription;

    invoke-virtual {p1}, Lo/XZ$TaskDescription;->requestLayout()V

    :cond_3
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .line 169
    iget-object v0, p0, Lo/XZ;->a:Lo/XZ$TaskDescription;

    return-object v0
.end method

.method public b(Z)V
    .locals 1

    .line 174
    invoke-virtual {p0}, Lo/XZ;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/XZ$TaskDescription;

    invoke-virtual {v0, p1}, Lo/XZ$TaskDescription;->setSecure(Z)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 242
    iget-object v0, p0, Lo/XZ;->a:Lo/XZ$TaskDescription;

    invoke-virtual {v0}, Lo/XZ$TaskDescription;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lo/XZ;->a:Lo/XZ$TaskDescription;

    invoke-virtual {v0}, Lo/XZ$TaskDescription;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    return-void
.end method

.method public e(Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lo/XZ;->b:Lcom/netflix/mediaclient/ui/player/videoview/ScaleType;

    .line 180
    invoke-virtual {p0}, Lo/XZ;->b()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 227
    sget-object p1, Lo/XZ;->e:Ljava/lang/String;

    const-string p2, "Surface changed"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object p1, p0, Lo/XZ;->d:Lo/XX;

    invoke-interface {p1, p0, p3, p4}, Lo/XX;->a(Lo/Ya;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 221
    sget-object p1, Lo/XZ;->e:Ljava/lang/String;

    const-string v0, "Surface created. "

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object p1, p0, Lo/XZ;->d:Lo/XX;

    invoke-interface {p1, p0}, Lo/XX;->b(Lo/Ya;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 233
    sget-object p1, Lo/XZ;->e:Ljava/lang/String;

    const-string v0, "Surface destroyed"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object p1, p0, Lo/XZ;->d:Lo/XX;

    invoke-interface {p1, p0}, Lo/XX;->c(Lo/Ya;)V

    return-void
.end method
