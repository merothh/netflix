.class Lo/WriteAbortedException$3;
.super Landroid/transition/Transition$EpicenterCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WriteAbortedException;->e(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/WriteAbortedException;

.field final synthetic c:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lo/WriteAbortedException;Landroid/graphics/Rect;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lo/WriteAbortedException$3;->a:Lo/WriteAbortedException;

    iput-object p2, p0, Lo/WriteAbortedException$3;->c:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 0

    .line 309
    iget-object p1, p0, Lo/WriteAbortedException$3;->c:Landroid/graphics/Rect;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    iget-object p1, p0, Lo/WriteAbortedException$3;->c:Landroid/graphics/Rect;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
