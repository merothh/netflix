.class Lo/WriteAbortedException$4;
.super Landroid/transition/Transition$EpicenterCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WriteAbortedException;->c(Ljava/lang/Object;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/graphics/Rect;

.field final synthetic d:Lo/WriteAbortedException;


# direct methods
.method constructor <init>(Lo/WriteAbortedException;Landroid/graphics/Rect;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lo/WriteAbortedException$4;->d:Lo/WriteAbortedException;

    iput-object p2, p0, Lo/WriteAbortedException$4;->b:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 0

    .line 84
    iget-object p1, p0, Lo/WriteAbortedException$4;->b:Landroid/graphics/Rect;

    return-object p1
.end method
