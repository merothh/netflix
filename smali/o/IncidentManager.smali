.class public final Lo/IncidentManager;
.super Lo/IInterface;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/IncidentManager$StateListAnimator;
    }
.end annotation


# static fields
.field public static final b:Lo/IncidentManager$StateListAnimator;


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final c:Lo/IInterface;

.field private final e:Lo/IInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/IncidentManager$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/IncidentManager$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/IncidentManager;->b:Lo/IncidentManager$StateListAnimator;

    return-void
.end method

.method private constructor <init>(Lo/IInterface;Lo/IInterface;Landroid/graphics/RectF;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lo/IInterface;-><init>()V

    iput-object p1, p0, Lo/IncidentManager;->c:Lo/IInterface;

    iput-object p2, p0, Lo/IncidentManager;->e:Lo/IInterface;

    iput-object p3, p0, Lo/IncidentManager;->a:Landroid/graphics/RectF;

    return-void
.end method

.method public synthetic constructor <init>(Lo/IInterface;Lo/IInterface;Landroid/graphics/RectF;Lo/amc;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lo/IncidentManager;-><init>(Lo/IInterface;Lo/IInterface;Landroid/graphics/RectF;)V

    return-void
.end method


# virtual methods
.method public b(ZFFFLandroid/graphics/Rect;)V
    .locals 8

    const-string v0, "arrow"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lo/IncidentManager;->e:Lo/IInterface;

    if-eqz v1, :cond_0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lo/IInterface;->b(ZFFFLandroid/graphics/Rect;)V

    .line 71
    :cond_0
    iget-object v2, p0, Lo/IncidentManager;->c:Lo/IInterface;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lo/IInterface;->b(ZFFFLandroid/graphics/Rect;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 37
    iget-object v0, p0, Lo/IncidentManager;->c:Lo/IInterface;

    invoke-virtual {v0, p1}, Lo/IInterface;->draw(Landroid/graphics/Canvas;)V

    .line 38
    iget-object v0, p0, Lo/IncidentManager;->e:Lo/IInterface;

    if-eqz v0, :cond_0

    .line 39
    iget-object v1, p0, Lo/IncidentManager;->a:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 40
    invoke-virtual {v0, p1}, Lo/IInterface;->draw(Landroid/graphics/Canvas;)V

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lo/IncidentManager;->c:Lo/IInterface;

    invoke-virtual {v0, p1}, Lo/IInterface;->setAlpha(I)V

    .line 47
    iget-object v0, p0, Lo/IncidentManager;->e:Lo/IInterface;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/IInterface;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Lo/IInterface;->setBounds(IIII)V

    .line 59
    iget-object v0, p0, Lo/IncidentManager;->e:Lo/IInterface;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/IInterface;->setBounds(IIII)V

    .line 60
    :cond_0
    iget-object v0, p0, Lo/IncidentManager;->c:Lo/IInterface;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/IInterface;->setBounds(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-super {p0, p1}, Lo/IInterface;->setBounds(Landroid/graphics/Rect;)V

    .line 65
    iget-object v0, p0, Lo/IncidentManager;->e:Lo/IInterface;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/IInterface;->setBounds(Landroid/graphics/Rect;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lo/IncidentManager;->c:Lo/IInterface;

    invoke-virtual {v0, p1}, Lo/IInterface;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lo/IncidentManager;->c:Lo/IInterface;

    invoke-virtual {v0, p1}, Lo/IInterface;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 52
    iget-object v0, p0, Lo/IncidentManager;->e:Lo/IInterface;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/IInterface;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method
