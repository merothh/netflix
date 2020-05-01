.class public Lo/GestureConstants;
.super Landroid/widget/ImageView;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DH::",
        "Lo/DdmHandleHeap;",
        ">",
        "Landroid/widget/ImageView;"
    }
.end annotation


# static fields
.field private static f:Z = false


# instance fields
.field private a:Z

.field private b:Lo/DdmRegister;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/DdmRegister<",
            "TDH;>;"
        }
    .end annotation
.end field

.field private c:F

.field private d:Z

.field private final e:Lo/DdmHandleThread$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lo/DdmHandleThread$Activity;

    invoke-direct {v0}, Lo/DdmHandleThread$Activity;-><init>()V

    iput-object v0, p0, Lo/GestureConstants;->e:Lo/DdmHandleThread$Activity;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lo/GestureConstants;->c:F

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lo/GestureConstants;->a:Z

    .line 48
    iput-boolean v0, p0, Lo/GestureConstants;->d:Z

    .line 59
    invoke-direct {p0, p1}, Lo/GestureConstants;->e(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance p2, Lo/DdmHandleThread$Activity;

    invoke-direct {p2}, Lo/DdmHandleThread$Activity;-><init>()V

    iput-object p2, p0, Lo/GestureConstants;->e:Lo/DdmHandleThread$Activity;

    const/4 p2, 0x0

    .line 45
    iput p2, p0, Lo/GestureConstants;->c:F

    const/4 p2, 0x0

    .line 47
    iput-boolean p2, p0, Lo/GestureConstants;->a:Z

    .line 48
    iput-boolean p2, p0, Lo/GestureConstants;->d:Z

    .line 64
    invoke-direct {p0, p1}, Lo/GestureConstants;->e(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance p2, Lo/DdmHandleThread$Activity;

    invoke-direct {p2}, Lo/DdmHandleThread$Activity;-><init>()V

    iput-object p2, p0, Lo/GestureConstants;->e:Lo/DdmHandleThread$Activity;

    const/4 p2, 0x0

    .line 45
    iput p2, p0, Lo/GestureConstants;->c:F

    const/4 p2, 0x0

    .line 47
    iput-boolean p2, p0, Lo/GestureConstants;->a:Z

    .line 48
    iput-boolean p2, p0, Lo/GestureConstants;->d:Z

    .line 69
    invoke-direct {p0, p1}, Lo/GestureConstants;->e(Landroid/content/Context;)V

    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 3

    .line 81
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DraweeView#init"

    .line 82
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 84
    :cond_0
    iget-boolean v0, p0, Lo/GestureConstants;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 102
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 103
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    .line 87
    :try_start_1
    iput-boolean v0, p0, Lo/GestureConstants;->a:Z

    const/4 v1, 0x0

    .line 88
    invoke-static {v1, p1}, Lo/DdmRegister;->c(Lo/DdmHandleHeap;Landroid/content/Context;)Lo/DdmRegister;

    move-result-object v1

    iput-object v1, p0, Lo/GestureConstants;->b:Lo/DdmRegister;

    .line 89
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5

    .line 90
    invoke-virtual {p0}, Lo/GestureConstants;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_4

    .line 102
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 103
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_3
    return-void

    .line 94
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p0, v1}, Lo/GestureConstants;->setColorFilter(I)V

    .line 98
    :cond_5
    sget-boolean v1, Lo/GestureConstants;->f:Z

    if-eqz v1, :cond_6

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-lt p1, v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo/GestureConstants;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 103
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    .line 102
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 103
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_8
    throw p1
.end method

.method private h()V
    .locals 3

    .line 301
    iget-boolean v0, p0, Lo/GestureConstants;->d:Z

    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {p0}, Lo/GestureConstants;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {p0}, Lo/GestureConstants;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method public static setGlobalLegacyVisibilityHandlingEnabled(Z)V
    .locals 0

    .line 54
    sput-boolean p0, Lo/GestureConstants;->f:Z

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 189
    iget-object v0, p0, Lo/GestureConstants;->b:Lo/DdmRegister;

    invoke-virtual {v0}, Lo/DdmRegister;->c()V

    return-void
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 126
    iget-object v0, p0, Lo/GestureConstants;->b:Lo/DdmRegister;

    invoke-virtual {v0}, Lo/DdmRegister;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected c()V
    .locals 0

    .line 175
    invoke-virtual {p0}, Lo/GestureConstants;->a()V

    return-void
.end method

.method protected d()V
    .locals 0

    .line 180
    invoke-virtual {p0}, Lo/GestureConstants;->j()V

    return-void
.end method

.method public e()Lo/DdmHandleExit;
    .locals 1

    .line 137
    iget-object v0, p0, Lo/GestureConstants;->b:Lo/DdmRegister;

    invoke-virtual {v0}, Lo/DdmRegister;->a()Lo/DdmHandleExit;

    move-result-object v0

    return-object v0
.end method

.method protected j()V
    .locals 1

    .line 198
    iget-object v0, p0, Lo/GestureConstants;->b:Lo/DdmRegister;

    invoke-virtual {v0}, Lo/DdmRegister;->b()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 147
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 148
    invoke-direct {p0}, Lo/GestureConstants;->h()V

    .line 149
    invoke-virtual {p0}, Lo/GestureConstants;->c()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 154
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 155
    invoke-direct {p0}, Lo/GestureConstants;->h()V

    .line 156
    invoke-virtual {p0}, Lo/GestureConstants;->d()V

    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    .line 168
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishTemporaryDetach()V

    .line 169
    invoke-direct {p0}, Lo/GestureConstants;->h()V

    .line 170
    invoke-virtual {p0}, Lo/GestureConstants;->c()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 281
    iget-object v0, p0, Lo/GestureConstants;->e:Lo/DdmHandleThread$Activity;

    iput p1, v0, Lo/DdmHandleThread$Activity;->e:I

    .line 282
    iput p2, v0, Lo/DdmHandleThread$Activity;->d:I

    .line 283
    iget p1, p0, Lo/GestureConstants;->c:F

    .line 286
    invoke-virtual {p0}, Lo/GestureConstants;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 287
    invoke-virtual {p0}, Lo/GestureConstants;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lo/GestureConstants;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 288
    invoke-virtual {p0}, Lo/GestureConstants;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lo/GestureConstants;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 283
    invoke-static {v0, p1, p2, v1, v2}, Lo/DdmHandleThread;->d(Lo/DdmHandleThread$Activity;FLandroid/view/ViewGroup$LayoutParams;II)V

    .line 289
    iget-object p1, p0, Lo/GestureConstants;->e:Lo/DdmHandleThread$Activity;

    iget p1, p1, Lo/DdmHandleThread$Activity;->e:I

    iget-object p2, p0, Lo/GestureConstants;->e:Lo/DdmHandleThread$Activity;

    iget p2, p2, Lo/DdmHandleThread$Activity;->d:I

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 0

    .line 161
    invoke-super {p0}, Landroid/widget/ImageView;->onStartTemporaryDetach()V

    .line 162
    invoke-direct {p0}, Lo/GestureConstants;->h()V

    .line 163
    invoke-virtual {p0}, Lo/GestureConstants;->d()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 203
    iget-object v0, p0, Lo/GestureConstants;->b:Lo/DdmRegister;

    invoke-virtual {v0, p1}, Lo/DdmRegister;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 206
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 296
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 297
    invoke-direct {p0}, Lo/GestureConstants;->h()V

    return-void
.end method

.method public setAspectRatio(F)V
    .locals 1

    .line 261
    iget v0, p0, Lo/GestureConstants;->c:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 264
    :cond_0
    iput p1, p0, Lo/GestureConstants;->c:F

    .line 265
    invoke-virtual {p0}, Lo/GestureConstants;->requestLayout()V

    return-void
.end method

.method public setController(Lo/DdmHandleExit;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lo/GestureConstants;->b:Lo/DdmRegister;

    invoke-virtual {v0, p1}, Lo/DdmRegister;->e(Lo/DdmHandleExit;)V

    .line 132
    iget-object p1, p0, Lo/GestureConstants;->b:Lo/DdmRegister;

    invoke-virtual {p1}, Lo/DdmRegister;->h()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHierarchy(Lo/DdmHandleHeap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDH;)V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lo/GestureConstants;->b:Lo/DdmRegister;

    invoke-virtual {v0, p1}, Lo/DdmRegister;->c(Lo/DdmHandleHeap;)V

    .line 111
    iget-object p1, p0, Lo/GestureConstants;->b:Lo/DdmRegister;

    invoke-virtual {p1}, Lo/DdmRegister;->h()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 228
    invoke-virtual {p0}, Lo/GestureConstants;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/GestureConstants;->e(Landroid/content/Context;)V

    .line 229
    iget-object v0, p0, Lo/GestureConstants;->b:Lo/DdmRegister;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/DdmRegister;->e(Lo/DdmHandleExit;)V

    .line 230
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 216
    invoke-virtual {p0}, Lo/GestureConstants;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/GestureConstants;->e(Landroid/content/Context;)V

    .line 217
    iget-object v0, p0, Lo/GestureConstants;->b:Lo/DdmRegister;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/DdmRegister;->e(Lo/DdmHandleExit;)V

    .line 218
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    invoke-virtual {p0}, Lo/GestureConstants;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/GestureConstants;->e(Landroid/content/Context;)V

    .line 241
    iget-object v0, p0, Lo/GestureConstants;->b:Lo/DdmRegister;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/DdmRegister;->e(Lo/DdmHandleExit;)V

    .line 242
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 252
    invoke-virtual {p0}, Lo/GestureConstants;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/GestureConstants;->e(Landroid/content/Context;)V

    .line 253
    iget-object v0, p0, Lo/GestureConstants;->b:Lo/DdmRegister;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/DdmRegister;->e(Lo/DdmHandleExit;)V

    .line 254
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setLegacyVisibilityHandlingEnabled(Z)V
    .locals 0

    .line 276
    iput-boolean p1, p0, Lo/GestureConstants;->d:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 311
    invoke-static {p0}, Lo/Signature;->b(Ljava/lang/Object;)Lo/Signature$ActionBar;

    move-result-object v0

    iget-object v1, p0, Lo/GestureConstants;->b:Lo/DdmRegister;

    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {v1}, Lo/DdmRegister;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "<no holder set>"

    :goto_0
    const-string v2, "holder"

    invoke-virtual {v0, v2, v1}, Lo/Signature$ActionBar;->d(Ljava/lang/String;Ljava/lang/Object;)Lo/Signature$ActionBar;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Lo/Signature$ActionBar;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
