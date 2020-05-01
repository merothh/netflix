.class final Lo/ScaleGestureDetector$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ScaleGestureDetector;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/ScaleGestureDetector;


# direct methods
.method constructor <init>(Lo/ScaleGestureDetector;)V
    .locals 0

    iput-object p1, p0, Lo/ScaleGestureDetector$ActionBar;->d:Lo/ScaleGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 136
    iget-object p1, p0, Lo/ScaleGestureDetector$ActionBar;->d:Lo/ScaleGestureDetector;

    invoke-virtual {p1}, Lo/ScaleGestureDetector;->k()Lo/InputChannel;

    move-result-object p1

    invoke-virtual {p1}, Lo/InputChannel;->e()V

    return-void
.end method
