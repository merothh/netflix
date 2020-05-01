.class public Lo/AppComponentFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AliasActivity;


# instance fields
.field private final a:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;[I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    iput-object p1, p0, Lo/AppComponentFactory;->a:Landroid/content/res/TypedArray;

    return-void
.end method


# virtual methods
.method public c(I)I
    .locals 2

    .line 27
    iget-object v0, p0, Lo/AppComponentFactory;->a:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    return p1
.end method

.method public c()V
    .locals 1

    .line 32
    iget-object v0, p0, Lo/AppComponentFactory;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
