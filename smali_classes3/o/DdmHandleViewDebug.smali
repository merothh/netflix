.class public Lo/DdmHandleViewDebug;
.super Lo/Gesture;
.source ""


# static fields
.field private static c:Lo/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserInfo<",
            "+",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Lo/Gesture;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lo/DdmHandleViewDebug;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lo/Gesture;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-direct {p0, p1, p2}, Lo/DdmHandleViewDebug;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lo/Gesture;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    invoke-direct {p0, p1, p2}, Lo/DdmHandleViewDebug;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 80
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SimpleDraweeView#init"

    .line 81
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lo/DdmHandleViewDebug;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lo/DdmHandleViewDebug;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 85
    invoke-virtual {p0}, Lo/DdmHandleViewDebug;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    .line 87
    :cond_1
    sget-object v0, Lo/DdmHandleViewDebug;->c:Lo/UserInfo;

    const-string v1, "SimpleDraweeView was not initialized!"

    invoke-static {v0, v1}, Lo/StringParceledListSlice;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lo/DdmHandleViewDebug;->c:Lo/UserInfo;

    invoke-interface {v0}, Lo/UserInfo;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    iput-object v0, p0, Lo/DdmHandleViewDebug;->e:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    :goto_0
    if-eqz p2, :cond_5

    .line 93
    sget-object v0, Lo/CrossProcessCursorWrapper$ActionBar;->G:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    :try_start_1
    sget p2, Lo/CrossProcessCursorWrapper$ActionBar;->H:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 96
    sget p2, Lo/CrossProcessCursorWrapper$ActionBar;->H:I

    .line 97
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, p2, v0}, Lo/DdmHandleViewDebug;->setImageURI(Landroid/net/Uri;Ljava/lang/Object;)V

    goto :goto_1

    .line 98
    :cond_2
    sget p2, Lo/CrossProcessCursorWrapper$ActionBar;->E:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 99
    sget p2, Lo/CrossProcessCursorWrapper$ActionBar;->E:I

    const/4 v0, -0x1

    .line 100
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eq p2, v0, :cond_4

    .line 102
    invoke-virtual {p0}, Lo/DdmHandleViewDebug;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    invoke-virtual {p0, p2}, Lo/DdmHandleViewDebug;->setImageResource(I)V

    goto :goto_1

    .line 105
    :cond_3
    invoke-virtual {p0, p2}, Lo/DdmHandleViewDebug;->setActualImageResource(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :cond_4
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 114
    :cond_5
    :goto_2
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 115
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_6
    return-void

    :catchall_1
    move-exception p1

    .line 114
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 115
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_7
    throw p1
.end method

.method public static b(Lo/UserInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UserInfo<",
            "+",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;",
            ">;)V"
        }
    .end annotation

    .line 42
    sput-object p0, Lo/DdmHandleViewDebug;->c:Lo/UserInfo;

    return-void
.end method


# virtual methods
.method public setActualImageResource(I)V
    .locals 1

    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0, p1, v0}, Lo/DdmHandleViewDebug;->setActualImageResource(ILjava/lang/Object;)V

    return-void
.end method

.method public setActualImageResource(ILjava/lang/Object;)V
    .locals 0

    .line 209
    invoke-static {p1}, Lo/ResourcesKey;->c(I)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lo/DdmHandleViewDebug;->setImageURI(Landroid/net/Uri;Ljava/lang/Object;)V

    return-void
.end method

.method public setImageRequest(Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lo/DdmHandleViewDebug;->e:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 132
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->b(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lo/DdmHandleViewDebug;->e()Lo/DdmHandleExit;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->b(Lo/DdmHandleExit;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->i()Lo/SQLiteConnection;

    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Lo/DdmHandleViewDebug;->setController(Lo/DdmHandleExit;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 221
    invoke-super {p0, p1}, Lo/Gesture;->setImageResource(I)V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, p1, v0}, Lo/DdmHandleViewDebug;->setImageURI(Landroid/net/Uri;Ljava/lang/Object;)V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lo/DdmHandleViewDebug;->e:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 165
    invoke-virtual {v0, p2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p2

    .line 166
    invoke-virtual {p2, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d(Landroid/net/Uri;)Lo/DdmHandleHello;

    move-result-object p1

    .line 167
    invoke-virtual {p0}, Lo/DdmHandleViewDebug;->e()Lo/DdmHandleExit;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/DdmHandleHello;->e(Lo/DdmHandleExit;)Lo/DdmHandleHello;

    move-result-object p1

    .line 168
    invoke-interface {p1}, Lo/DdmHandleHello;->l()Lo/DdmHandleExit;

    move-result-object p1

    .line 169
    invoke-virtual {p0, p1}, Lo/DdmHandleViewDebug;->setController(Lo/DdmHandleExit;)V

    return-void
.end method

.method public setImageURI(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, p1, v0}, Lo/DdmHandleViewDebug;->setImageURI(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setImageURI(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 179
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 180
    :goto_0
    invoke-virtual {p0, p1, p2}, Lo/DdmHandleViewDebug;->setImageURI(Landroid/net/Uri;Ljava/lang/Object;)V

    return-void
.end method
