.class Lo/InputStream$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/InputStream;->e(Lo/InvalidObjectException;)Lo/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lo/InvalidObjectException;

.field final synthetic c:Lo/InputStream;


# direct methods
.method constructor <init>(Lo/InputStream;Lo/InvalidObjectException;Landroid/view/View;)V
    .locals 0

    .line 777
    iput-object p1, p0, Lo/InputStream$4;->c:Lo/InputStream;

    iput-object p2, p0, Lo/InputStream$4;->b:Lo/InvalidObjectException;

    iput-object p3, p0, Lo/InputStream$4;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 780
    iget-object p1, p0, Lo/InputStream$4;->b:Lo/InvalidObjectException;

    iget-object v0, p0, Lo/InputStream$4;->a:Landroid/view/View;

    invoke-interface {p1, v0}, Lo/InvalidObjectException;->e(Landroid/view/View;)V

    return-void
.end method
